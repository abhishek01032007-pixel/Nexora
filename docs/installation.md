# Installation Guide

Nexora Skills Manager provides a professional Windows Setup Wizard for a streamlined installation experience.

---

## Download

[**Download Latest Version**](https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe)

When you click this link, your browser downloads `NexoraSkillsManager-Setup.exe`. The file will appear in your browser's configured download location (typically your **Downloads** folder). The exact destination depends on your browser's download settings.

> **Distribution Notice**: The Nexora public distribution channel is being prepared. The current stable release (**v1.0.0**) is available via the [existing release channel](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager/releases/tag/v1.0.0).

---

## Setup Wizard

1. **Open the installer**: Locate `NexoraSkillsManager-Setup.exe` in your Downloads folder and double-click it.

2. **Windows SmartScreen**: Because the current release is not code-signed, Windows may display a Microsoft Defender SmartScreen prompt. Select **More info**, then **Run anyway** to proceed. This is standard behavior for unsigned desktop applications and does not indicate a security issue with Nexora itself.

3. **Welcome**: The Nexora Skills Manager Setup Wizard opens.

4. **Installation Location**: Choose your preferred installation directory.
   - **Default**: `%LOCALAPPDATA%\Programs\Nexora Skills Manager`
   - You may select any folder with sufficient disk space.

5. **Shortcut Options**:
   - **Start Menu shortcut**: Created by default for quick access.
   - **Desktop shortcut**: Created by default; you may opt out during setup.

6. **Install**: Click **Install** to begin copying files and configuring the environment.

7. **Finish**: When installation completes, you may choose to launch Nexora Skills Manager immediately.

---

## What Gets Installed

- **Nexora Skills Manager** desktop application
- **Nexora CLI** (`nexora`) added to your user PATH for terminal access
- **Bundled runtime**: Engine, bridge, skill packs, and loaders (self-contained, no external dependencies)
- **Install metadata**: `%LOCALAPPDATA%\NexoraSkillsManager\install.json`

---

## Verifying Download Integrity (Optional)

For users who wish to verify the downloaded installer, compare its SHA-256 hash against the checksum published in the release:

```powershell
Get-FileHash .\NexoraSkillsManager-Setup.exe -Algorithm SHA256
```

Compare the output hash with the value in `SHA256SUMS.txt` attached to the corresponding GitHub Release.

This step is optional and not required for normal installation.

---

## Uninstallation

To remove Nexora Skills Manager:

1. Open **Windows Settings** → **Apps** → **Installed Apps**.
2. Locate **Nexora Skills Manager**.
3. Click **Uninstall** and follow the prompts.

**User data preservation**: Your personal project workspaces, custom skill configurations, and deployed skill files are not removed during uninstallation. Only the application binaries, runtime, and environment configuration are cleaned up.

---

## Troubleshooting

### Nexora CLI not recognized after installation
Close and reopen your terminal window. The installer updates your user PATH, but existing terminal sessions may not reflect the change until restarted.

### Application does not start
Verify that your system meets the [System Requirements](system-requirements.md). Nexora requires Windows 10 (64-bit) or Windows 11 (64-bit) with x64 architecture.
