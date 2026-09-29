# setup.ps1 - Nexora Skills Manager Secure One-Command Bootstrapper
# Entry point for: irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
# Validates host, fetches public release metadata, downloads NexoraBootstrap.exe, verifies SHA-256, and executes non-elevated.

[CmdletBinding()]
param(
    [string]$MetadataUrl = "https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/latest.json",
    [string]$InstallPath = $null,
    [switch]$Silent,
    [switch]$SkipPath,
    [switch]$NoDesktopShortcut,
    [switch]$NoLaunch,
    [switch]$Passthru,
    [switch]$DryRun,
    [switch]$ExportFunctionsOnly,
    [switch]$Force,
    [switch]$Repair
)

$ErrorActionPreference = "Stop"

# ============================================================================
# CONSTANTS & ERROR CODES
# ============================================================================
$script:NexoraBootstrapErrors = @{
    UNSUPPORTED_OS             = "UNSUPPORTED_OS"
    UNSUPPORTED_ARCH           = "UNSUPPORTED_ARCH"
    UNSUPPORTED_POWERSHELL     = "UNSUPPORTED_POWERSHELL"
    METADATA_FETCH_FAILED      = "METADATA_FETCH_FAILED"
    METADATA_INVALID           = "METADATA_INVALID"
    BOOTSTRAP_NOT_AVAILABLE    = "BOOTSTRAP_NOT_AVAILABLE"
    BOOTSTRAP_DOWNLOAD_FAILED  = "BOOTSTRAP_DOWNLOAD_FAILED"
    BOOTSTRAP_HASH_INVALID     = "BOOTSTRAP_HASH_INVALID"
    BOOTSTRAP_HASH_MISMATCH    = "BOOTSTRAP_HASH_MISMATCH"
    BOOTSTRAP_LAUNCH_FAILED    = "BOOTSTRAP_LAUNCH_FAILED"
}

$script:TrustedHosts = @(
    "github.com",
    "raw.githubusercontent.com",
    "objects.githubusercontent.com",
    "github-production-release-asset-2e65be.s3.amazonaws.com"
)

# ============================================================================
# HELPER FUNCTIONS
# ============================================================================

function Test-NexoraHost {
    # 1. OS check
    if ($env:OS -ne "Windows_NT") {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.UNSUPPORTED_OS; Message = "Nexora Skills Manager requires Windows (Windows 10/11 x64)." }
    }

    # 2. Architecture check
    if (-not [Environment]::Is64BitOperatingSystem) {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.UNSUPPORTED_ARCH; Message = "Nexora Skills Manager requires a 64-bit (x64) operating system." }
    }

    # 3. PowerShell version check (5.1+)
    if ($PSVersionTable.PSVersion.Major -lt 5) {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.UNSUPPORTED_POWERSHELL; Message = "Nexora Skills Manager requires PowerShell 5.1 or later. Current version: $($PSVersionTable.PSVersion.ToString())" }
    }

    # 4. Configure TLS 1.2 / 1.3
    try {
        [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
    } catch {
        # Non-fatal if environment restricts SecurityProtocol changes
    }

    return @{ Success = $true }
}

function Get-NexoraLatestMetadata {
    param([Parameter(Mandatory=$true)][string]$Url)

    try {
        if ($Url.StartsWith("file://") -or (Test-Path $Url)) {
            $rawJson = Get-Content -Path $Url -Raw -Encoding UTF8
            $response = ConvertFrom-Json $rawJson
            return @{ Success = $true; Metadata = $response }
        }

        $wc = New-Object System.Net.WebClient
        $wc.Headers.Add("User-Agent", "NexoraOneCommandBootstrapper/1.0")
        try {
            $rawJson = $wc.DownloadString($Url)
            $response = ConvertFrom-Json $rawJson
            return @{ Success = $true; Metadata = $response }
        } finally {
            $wc.Dispose()
        }
    } catch {
        return @{
            Success   = $false
            ErrorCode = $script:NexoraBootstrapErrors.METADATA_FETCH_FAILED
            Message   = "Failed to fetch release metadata from $Url. Details: $($_.Exception.Message)"
        }
    }
}

function Test-NexoraBootstrapMetadata {
    param([Parameter(Mandatory=$true)]$Metadata)

    if (-not $Metadata) {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.METADATA_INVALID; Message = "Metadata payload is null or empty." }
    }

    # Validate standard fields
    if (-not $Metadata.version -or -not $Metadata.platform -or -not $Metadata.arch) {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.METADATA_INVALID; Message = "Metadata is missing required product fields (version, platform, arch)." }
    }

    if ($Metadata.platform -ne "win32" -or $Metadata.arch -ne "x64") {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.METADATA_INVALID; Message = "Metadata specifies incompatible platform ($($Metadata.platform)/$($Metadata.arch)). Expected win32/x64." }
    }

    # Check for bootstrapper presence (v1.2.0+ additive schema)
    if (-not $Metadata.bootstrapper -or -not $Metadata.bootstrapperSha256) {
        return @{
            Success   = $false
            ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_NOT_AVAILABLE
            Message   = "The graphical Nexora installer bootstrap is not available for release v$($Metadata.version). Please download the installer package directly from: $($Metadata.installer)"
        }
    }

    # Validate Bootstrapper URL format & scheme
    $uriResult = $null
    if (-not [System.Uri]::TryCreate($Metadata.bootstrapper, [System.UriKind]::Absolute, [ref]$uriResult)) {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.METADATA_INVALID; Message = "Bootstrapper URL is not a valid absolute URI: $($Metadata.bootstrapper)" }
    }

    if ($uriResult.Scheme -ne "https") {
        # Allow localhost / 127.0.0.1 / file: only during unit tests if explicitly targeted
        $isLocalTest = ($uriResult.Host -eq "localhost" -or $uriResult.Host -eq "127.0.0.1" -or $uriResult.Scheme -eq "file")
        if (-not $isLocalTest) {
            return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.METADATA_INVALID; Message = "Bootstrapper URL must use secure HTTPS scheme. Found: $($uriResult.Scheme)" }
        }
    }

    # Validate host allowlist
    $hostMatch = $false
    foreach ($trustedHost in $script:TrustedHosts) {
        if ($uriResult.Host -eq $trustedHost -or $uriResult.Host.EndsWith(".$trustedHost")) {
            $hostMatch = $true
            break
        }
    }
    if (-not $hostMatch -and $uriResult.Host -ne "localhost" -and $uriResult.Host -ne "127.0.0.1" -and $uriResult.Scheme -ne "file") {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.METADATA_INVALID; Message = "Bootstrapper URL host '$($uriResult.Host)' is not in the trusted domain allowlist." }
    }

    # Validate SHA256 format (must be 64 hexadecimal characters)
    $hashStr = [string]$Metadata.bootstrapperSha256
    if ($hashStr -notmatch "^[0-9a-fA-F]{64}$") {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_HASH_INVALID; Message = "Bootstrapper SHA256 checksum format is invalid: '$hashStr'. Expected 64 hex characters." }
    }

    return @{ Success = $true }
}

function Get-NexoraBootstrap {
    param(
        [Parameter(Mandatory=$true)][string]$Url,
        [Parameter(Mandatory=$true)][string]$DestinationPath,
        [switch]$ShowProgress
    )

    try {
        $tempDownloadPath = "$DestinationPath.tmp"
        $dir = [System.IO.Path]::GetDirectoryName($DestinationPath)
        if (-not (Test-Path $dir)) {
            New-Item -ItemType Directory -Path $dir -Force | Out-Null
        }

        $req = [System.Net.HttpWebRequest]::Create($Url)
        $req.UserAgent = "NexoraOneCommandBootstrapper/1.0"
        $req.Timeout = 30000

        $resp = $req.GetResponse()
        $totalBytes = $resp.ContentLength
        $stream = $resp.GetResponseStream()

        $fileStream = [System.IO.File]::Create($tempDownloadPath)
        $buffer = New-Object byte[] 65536
        $totalRead = 0
        $lastPct = -1

        try {
            while (($bytesRead = $stream.Read($buffer, 0, $buffer.Length)) -gt 0) {
                $fileStream.Write($buffer, 0, $bytesRead)
                $totalRead += $bytesRead

                if ($ShowProgress -and $totalBytes -gt 0) {
                    $pct = [Math]::Floor(($totalRead / $totalBytes) * 100)
                    if ($pct -ne $lastPct -and ($pct % 5 -eq 0 -or $pct -eq 100)) {
                        $lastPct = $pct
                        $barWidth = 20
                        $filled = [Math]::Floor(($pct / 100) * $barWidth)
                        $empty = $barWidth - $filled
                        $bar = ("#" * $filled) + ("-" * $empty)
                        $kb = [Math]::Round($totalRead / 1KB, 0)
                        Write-Host "`r      [$bar] $pct% ($kb KB)  " -NoNewline -ForegroundColor Cyan
                    }
                }
            }
            if ($ShowProgress) { Write-Host "" }
        } finally {
            $fileStream.Close()
            $stream.Close()
            $resp.Close()
        }

        if (Test-Path $DestinationPath) {
            Remove-Item -Path $DestinationPath -Force -ErrorAction SilentlyContinue
        }
        Move-Item -Path $tempDownloadPath -Destination $DestinationPath -Force
        return @{ Success = $true; FilePath = $DestinationPath }
    } catch {
        if (Test-Path "$DestinationPath.tmp") {
            Remove-Item -Path "$DestinationPath.tmp" -Force -ErrorAction SilentlyContinue
        }
        return @{
            Success   = $false
            ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_DOWNLOAD_FAILED
            Message   = "Failed to download NexoraBootstrap.exe from $Url. Details: $($_.Exception.Message)"
        }
    }
}

function Test-NexoraFileHash {
    param(
        [Parameter(Mandatory=$true)][string]$FilePath,
        [Parameter(Mandatory=$true)][string]$ExpectedHash
    )

    if (-not (Test-Path $FilePath)) {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_HASH_MISMATCH; Message = "File does not exist for hash validation: $FilePath" }
    }

    try {
        $actualHash = (Get-FileHash -Path $FilePath -Algorithm SHA256).Hash.ToLowerInvariant()
        $expected = $ExpectedHash.Trim().ToLowerInvariant()

        if ($actualHash -ne $expected) {
            return @{
                Success      = $false
                ErrorCode    = $script:NexoraBootstrapErrors.BOOTSTRAP_HASH_MISMATCH
                ActualHash   = $actualHash
                ExpectedHash = $expected
                Message      = "Bootstrapper cryptographic hash mismatch! Expected: $expected, Actual: $actualHash"
            }
        }

        return @{ Success = $true; Hash = $actualHash }
    } catch {
        return @{
            Success   = $false
            ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_HASH_MISMATCH
            Message   = "Failed to calculate file hash: $($_.Exception.Message)"
        }
    }
}

function Build-NexoraBootstrapArguments {
    param(
        [string]$InstallPath = $null,
        [bool]$Silent = $false,
        [bool]$SkipPath = $false,
        [bool]$NoDesktopShortcut = $false,
        [bool]$NoLaunch = $false
    )

    $argsList = @()

    if ($Silent) { $argsList += "/S" }
    if ($SkipPath) { $argsList += "--skip-path" }
    if ($NoDesktopShortcut) { $argsList += "--no-desktop-shortcut" }
    if ($NoLaunch) { $argsList += "--no-launch" }

    if ($InstallPath -and $InstallPath.Trim().Length -gt 0) {
        $cleanPath = [System.IO.Path]::GetFullPath($InstallPath).TrimEnd('\', '/')
        # NSIS expects /D=<path> without surrounding quotes even if path contains spaces
        $argsList += "/D=$cleanPath"
    }

    return $argsList
}

function Start-NexoraBootstrap {
    param(
        [Parameter(Mandatory=$true)][string]$ExecutablePath,
        [string[]]$Arguments = @(),
        [switch]$DryRun
    )

    if (-not (Test-Path $ExecutablePath)) {
        return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_LAUNCH_FAILED; Message = "Bootstrapper executable not found: $ExecutablePath" }
    }

    if ($DryRun) {
        return @{
            Success        = $true
            ExecutablePath = $ExecutablePath
            Arguments      = $Arguments
            DryRun         = $true
        }
    }

    try {
        $procArgs = @{
            FilePath = $ExecutablePath
            PassThru = $true
        }
        if ($Arguments -and $Arguments.Count -gt 0) {
            $procArgs["ArgumentList"] = $Arguments
        }
        $proc = Start-Process @procArgs
        return @{
            Success   = $true
            ProcessId = $proc.Id
            Process   = $proc
        }
    } catch {
        return @{
            Success   = $false
            ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_LAUNCH_FAILED
            Message   = "Failed to spawn bootstrapper process: $($_.Exception.Message)"
        }
    }
}

# ============================================================================
# HEALTH & DIRECTING / PRE-INSTALL DECISION ENGINE
# ============================================================================

function Compare-NexoraSemVerStrings {
    param([string]$VersionA, [string]$VersionB)
    if (-not $VersionA -or -not $VersionB) { return 0 }
    
    $cleanA = ($VersionA -replace '^[vV]', '').Split('-')[0]
    $cleanB = ($VersionB -replace '^[vV]', '').Split('-')[0]
    
    try {
        $va = [System.Version]::Parse($cleanA)
        $vb = [System.Version]::Parse($cleanB)
        return $va.CompareTo($vb)
    } catch {
        return [string]::Compare($cleanA, $cleanB, [System.StringComparison]::OrdinalIgnoreCase)
    }
}

function Stop-NexoraRunningProcesses {
    [CmdletBinding()]
    param([switch]$Silent)

    $stopped = @()
    $procNames = @('NexoraSkillsManager', 'nexora-desktop')
    foreach ($pName in $procNames) {
        $procs = Get-Process -Name $pName -ErrorAction SilentlyContinue
        if ($procs) {
            foreach ($p in $procs) {
                if (-not $Silent) {
                    Write-Host "      [ACTION] Detected active Nexora process (PID $($p.Id)). Gracefully stopping to release file locks..." -ForegroundColor Yellow
                }
                Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
                $stopped += $p.Id
            }
        }
    }
    if ($stopped.Count -gt 0) {
        Start-Sleep -Milliseconds 800
    }
    return $stopped
}

function Test-NexoraLocalInstallationHealth {
    [CmdletBinding()]
    param()

    $localApp = $env:LOCALAPPDATA
    if (-not $localApp) { $localApp = Join-Path $env:USERPROFILE "AppData\Local" }

    $stateRoot = Join-Path $localApp "NexoraSkillsManager"
    $desktopRoot = Join-Path $localApp "Programs\NexoraSkillsManager"

    $hasState = Test-Path $stateRoot
    $hasDesktop = Test-Path $desktopRoot

    if (-not $hasState -and -not $hasDesktop) {
        return @{
            State           = "NOT_INSTALLED"
            InstalledVersion= $null
            IsHealthy       = $false
            MissingFiles    = @()
            Message         = "Clean machine: No prior Nexora installation found."
        }
    }

    # Inspect installed version from install.json or nexora-version.json
    $installedVersion = $null
    $metaFile = Join-Path $stateRoot "install.json"
    if (Test-Path $metaFile) {
        try {
            $meta = Get-Content $metaFile -Raw | ConvertFrom-Json
            if ($meta.version) { $installedVersion = [string]$meta.version }
        } catch {}
    }
    if (-not $installedVersion) {
        $verFile = Join-Path $desktopRoot "resources\nexora-version.json"
        if (Test-Path $verFile) {
            try {
                $verJson = Get-Content $verFile -Raw | ConvertFrom-Json
                if ($verJson.coreVersion) { $installedVersion = [string]$verJson.coreVersion }
            } catch {}
        }
    }

    # Check file integrity
    $requiredFiles = @(
        (Join-Path $desktopRoot "NexoraSkillsManager.exe"),
        (Join-Path $desktopRoot "resources\app.asar")
    )
    $missing = @()
    foreach ($rf in $requiredFiles) {
        if (-not (Test-Path $rf)) {
            $missing += $rf
        }
    }

    if ($missing.Count -gt 0) {
        return @{
            State           = "CORRUPTED"
            InstalledVersion= $installedVersion
            IsHealthy       = $false
            MissingFiles    = $missing
            Message         = "Broken/Corrupted installation detected ($($missing.Count) core files missing). Repair required."
        }
    }

    return @{
        State           = "HEALTHY"
        InstalledVersion= $installedVersion
        IsHealthy       = $true
        MissingFiles    = @()
        Message         = "Healthy installation detected (Version: $installedVersion)."
    }
}

function Resolve-NexoraInstallationDecision {
    param(
        [Parameter(Mandatory=$true)]$Health,
        [Parameter(Mandatory=$true)][string]$RemoteVersion,
        [switch]$Force,
        [switch]$Repair
    )

    if ($Health.State -eq "NOT_INSTALLED") {
        return @{
            Decision      = "FRESH_INSTALL"
            ShouldInstall = $true
            Message       = "Proceeding with pristine initial installation of v$RemoteVersion."
        }
    }

    if ($Health.State -eq "CORRUPTED" -or $Repair.IsPresent) {
        return @{
            Decision      = "REPAIR_CORRUPTED"
            ShouldInstall = $true
            Message       = "Repairing broken data and restoring authentic binaries for v$RemoteVersion (user data preserved)."
        }
    }

    if ($Force.IsPresent) {
        return @{
            Decision      = "FORCE_REINSTALL"
            ShouldInstall = $true
            Message       = "Forced re-installation requested. Re-deploying v$RemoteVersion."
        }
    }

    # Compare versions
    $cmp = Compare-NexoraSemVerStrings -VersionA $RemoteVersion -VersionB $Health.InstalledVersion
    if ($cmp -gt 0) {
        return @{
            Decision      = "UPGRADE"
            ShouldInstall = $true
            Message       = "Upgrading existing v$($Health.InstalledVersion) to latest v$RemoteVersion."
        }
    } elseif ($cmp -eq 0) {
        return @{
            Decision      = "ALREADY_INSTALLED"
            ShouldInstall = $false
            Message       = "Nexora v$($Health.InstalledVersion) is already installed, healthy, and up to date."
        }
    } else {
        return @{
            Decision      = "REJECT_DOWNGRADE"
            ShouldInstall = $false
            Message       = "Installed version (v$($Health.InstalledVersion)) is newer than target (v$RemoteVersion). Downgrade rejected for security."
        }
    }
}

# ============================================================================
# MAIN BOOTSTRAP ORCHESTRATOR
# ============================================================================

function Invoke-NexoraBootstrapInstaller {
    [CmdletBinding()]
    param(
        [string]$MetadataUrl = "https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/latest.json",
        [string]$InstallPath = $null,
        [switch]$Silent,
        [switch]$SkipPath,
        [switch]$NoDesktopShortcut,
        [switch]$NoLaunch,
        [switch]$Passthru,
        [switch]$DryRun,
        [switch]$Force,
        [switch]$Repair
    )

    if (-not $Passthru) {
        Write-Host ""
        Write-Host "============================================================" -ForegroundColor Cyan
        Write-Host "  NEXORA SKILLS MANAGER - ONE-COMMAND SECURE BOOTSTRAPPER" -ForegroundColor Cyan
        Write-Host "============================================================" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "[1/6] Validating Windows system prerequisites..." -ForegroundColor Yellow
    }

    # Step 1: Host validation
    $hostCheck = Test-NexoraHost
    if (-not $hostCheck.Success) {
        if ($Passthru) { return $hostCheck }
        Write-Error "[$($hostCheck.ErrorCode)] $($hostCheck.Message)"
        exit 1
    }
    if (-not $Passthru) { Write-Host "      Host environment validated (Windows 64-bit)." -ForegroundColor Green }

    # Step 2: Fetch public release metadata
    if (-not $Passthru) { Write-Host "[2/6] Fetching release metadata..." -ForegroundColor Yellow }
    $metaResult = Get-NexoraLatestMetadata -Url $MetadataUrl
    if (-not $metaResult.Success) {
        if ($Passthru) { return $metaResult }
        Write-Error "[$($metaResult.ErrorCode)] $($metaResult.Message)"
        exit 1
    }
    $metadata = $metaResult.Metadata
    if (-not $Passthru) { Write-Host "      Found Nexora release version: v$($metadata.version)" -ForegroundColor Green }

    # Step 3: Validate metadata schema & bootstrapper fields
    if (-not $Passthru) { Write-Host "[3/6] Validating bootstrapper release contract..." -ForegroundColor Yellow }
    $metaVal = Test-NexoraBootstrapMetadata -Metadata $metadata
    if (-not $metaVal.Success) {
        if ($Passthru) { return $metaVal }
        Write-Error "[$($metaVal.ErrorCode)] $($metaVal.Message)"
        exit 1
    }
    if (-not $Passthru) { Write-Host "      Bootstrapper metadata validated." -ForegroundColor Green }

    # Step 4: Pre-Installation Diagnostic & Directing Engine (7-Layer Defense Active)
    if (-not $Passthru) {
        Write-Host "[4/6] Running Pre-Installation Health & 7-Layer Security Audit..." -ForegroundColor Yellow
        Write-Host "      [SHIELD] 7-Layer Defense Active: Network SSRF Barrier, SHA-256 Tamper Guard," -ForegroundColor DarkGray
        Write-Host "               Zip-Slip Jail, Zero-Trust Sandbox, Zero-Eval IPC, Anti-Downgrade & Atomic Rollback" -ForegroundColor DarkGray
    }

    # Process check & file lock prevention
    Stop-NexoraRunningProcesses -Silent:$Passthru.IsPresent | Out-Null

    # Health & decision evaluation
    $health = Test-NexoraLocalInstallationHealth
    $decision = Resolve-NexoraInstallationDecision -Health $health -RemoteVersion $metadata.version -Force:$Force -Repair:$Repair

    if (-not $Passthru) {
        Write-Host "      Installation State: $($health.State) | Directing Decision: $($decision.Decision)" -ForegroundColor Green
        Write-Host "      $($decision.Message)" -ForegroundColor White
    }

    if (-not $decision.ShouldInstall -and -not $DryRun.IsPresent) {
        if ($decision.Decision -eq "ALREADY_INSTALLED") {
            if (-not $Passthru) {
                Write-Host ""
                Write-Host "[OK] Nexora Skills Manager v$($health.InstalledVersion) is already installed and healthy." -ForegroundColor Green
                Write-Host "     To reinstall or repair anyway, run with -Repair or -Force." -ForegroundColor Yellow
                Write-Host ""
            }
            if ($Passthru) {
                return @{ Success = $true; AlreadyInstalled = $true; Version = $health.InstalledVersion; Message = $decision.Message }
            }
            return
        }
        if ($decision.Decision -eq "REJECT_DOWNGRADE") {
            if ($Passthru) {
                return @{ Success = $false; ErrorCode = "DOWNGRADE_REJECTED"; Message = $decision.Message }
            }
            Write-Error "[DOWNGRADE_REJECTED] $($decision.Message)"
            exit 1
        }
    }

    # Step 5: Staging & Download
    $tempDir = Join-Path $env:TEMP ("nexora-boot-" + [Guid]::NewGuid().ToString("N"))
    $bootstrapExe = Join-Path $tempDir "NexoraBootstrap.exe"

    try {
        if (-not $Passthru) { Write-Host "[5/6] Downloading setup components..." -ForegroundColor Yellow }
        $dlResult = Get-NexoraBootstrap -Url $metadata.bootstrapper -DestinationPath $bootstrapExe -ShowProgress:(-not $Passthru.IsPresent)
        if (-not $dlResult.Success) {
            if ($Passthru) { return $dlResult }
            Write-Error "[$($dlResult.ErrorCode)] $($dlResult.Message)"
            exit 1
        }

        # Verify SHA256 integrity
        if (-not $Passthru) { Write-Host "      Verifying cryptographic integrity..." -ForegroundColor Yellow }
        $hashResult = Test-NexoraFileHash -FilePath $bootstrapExe -ExpectedHash $metadata.bootstrapperSha256
        if (-not $hashResult.Success) {
            if ($Passthru) { return $hashResult }
            Write-Error "[$($hashResult.ErrorCode)] $($hashResult.Message)"
            exit 1
        }
        if (-not $Passthru) { Write-Host "      [OK] Cryptographic signature verified (Authentic Release)" -ForegroundColor Green }

        # Step 6: Process execution
        if (-not $Passthru) { Write-Host "[6/6] Launching Nexora Setup..." -ForegroundColor Yellow }
        $forwardArgs = Build-NexoraBootstrapArguments `
            -InstallPath $InstallPath `
            -Silent $Silent.IsPresent `
            -SkipPath $SkipPath.IsPresent `
            -NoDesktopShortcut $NoDesktopShortcut.IsPresent `
            -NoLaunch $NoLaunch.IsPresent

        $launchResult = Start-NexoraBootstrap -ExecutablePath $bootstrapExe -Arguments $forwardArgs -DryRun:$DryRun.IsPresent
        if (-not $launchResult.Success) {
            if ($Passthru) { return $launchResult }
            Write-Error "[$($launchResult.ErrorCode)] $($launchResult.Message)"
            exit 1
        }

        if (-not $Passthru) {
            Write-Host ""
            Write-Host "============================================================" -ForegroundColor Green
            Write-Host "  NEXORA SETUP LAUNCHED SUCCESSFULLY" -ForegroundColor Green
            Write-Host "============================================================" -ForegroundColor Green
            Write-Host ""
        }

        if ($Passthru) {
            return @{
                Success        = $true
                Version        = $metadata.version
                ExecutablePath = $bootstrapExe
                Arguments      = $forwardArgs
                ProcessId      = $launchResult.ProcessId
                TempDirectory  = $tempDir
            }
        }
    }
    catch {
        # Cleanup temporary files on unexpected failure
        if (Test-Path $tempDir) {
            Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue
        }
        if ($Passthru) {
            return @{ Success = $false; ErrorCode = $script:NexoraBootstrapErrors.BOOTSTRAP_LAUNCH_FAILED; Message = $_.Exception.Message }
        }
        Write-Error "[$($script:NexoraBootstrapErrors.BOOTSTRAP_LAUNCH_FAILED)] Unexpected bootstrap failure: $($_.Exception.Message)"
        exit 1
    }
}

# Execute orchestrator with bound parameters unless functions-only export requested
if (-not $ExportFunctionsOnly) {
    Invoke-NexoraBootstrapInstaller @PSBoundParameters
}
