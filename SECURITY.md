# Security Policy — Nexora Skills Manager

Nexora Skills Manager is committed to delivering a secure, reliable, and enterprise-grade cross-platform skill orchestration desktop application. We take security vulnerabilities seriously and appreciate the community's efforts to disclose them responsibly.

---

## Supported Versions

Security updates are actively maintained for the following versions:

| Version | Supported | Security Maintenance |
| :--- | :---: | :--- |
| **1.2.x** | :white_check_mark: | Full Active Support & Patch Releases (Current Stable) |
| **1.1.x** | :white_check_mark: | Active Security Maintenance & Patch Releases |
| **1.0.x** | :white_check_mark: | Maintenance & Migration Bridge Support |
| **< 1.0.0** | :x: | End of Life — Please upgrade to 1.2.x |

---

## 7-Layer Defense-in-Depth Architecture

Nexora enforces a strict, defense-in-depth model across every tier of the application:

```
+-----------------------------------------------------------------+
|  Layer 1: Sandboxed IPC Bridge (Context Isolation, Zero Node)   |
+-----------------------------------------------------------------+
|  Layer 2: Cryptographic SHA-256 Package Integrity Verification   |
+-----------------------------------------------------------------+
|  Layer 3: Path Traversal Armor & Canonical Junction Confinement |
+-----------------------------------------------------------------+
|  Layer 4: Multi-Target AI Sandbox Confinement (Antigravity etc.)|
+-----------------------------------------------------------------+
|  Layer 5: Atomic Snapshot Rollback & Journaled State Engine     |
+-----------------------------------------------------------------+
|  Layer 6: XSS Armor & Strict DOM HTML Entity Sanitization       |
+-----------------------------------------------------------------+
|  Layer 7: AST-Parsed, Parameterized PowerShell Process Execution|
+-----------------------------------------------------------------+
```

1. **Sandboxed IPC Bridge**: Electron renderer operates with `nodeIntegration: false`, `contextIsolation: true`, and `sandbox: true`. Preload exposes only a strictly whitelisted invoke method against validated operations in `VALID_OPERATIONS`.
2. **Cryptographic Package Verification**: Every skill archive (`.zip`) is verified with a 64-character SHA-256 hash before extraction. Corrupted or mismatched archives are instantly purged.
3. **Path Traversal & Boundary Armor**: All paths are resolved through `Resolve-Path` and canonicalized. Path traversal attempts (`..`, alternate data streams, external NTFS junctions) are strictly rejected with security exceptions.
4. **Multi-Target AI Confinement**: Skills are deployed exclusively to designated vendor subdirectories (`.agents/skills`, `.cursor/skills`, `.claude/skills`, `.codex/skills`, `.github/skills`). System directories and workspace roots outside target boundaries are immutable.
5. **Atomic Rollback & Journaling**: Upgrades create timestamped zip snapshots in `Backup/` before mutating disk state. If an update fails or is interrupted, the transaction engine automatically rolls back to the previous stable state.
6. **XSS Armor**: All user-supplied inputs and skill descriptions are sanitized and rendered through safe DOM text assignments or strict HTML entity encoding. No dynamic `eval()` or `new Function()` execution exists in the codebase.
7. **Parameterized Engine Execution**: Backend commands avoid string concatenation and shell interpolation. Script execution is structured via AST-validated PowerShell cmdlets with explicit parameters.

---

## Reporting a Vulnerability

If you discover a potential security vulnerability in Nexora Skills Manager, please do **NOT** open a public GitHub issue. Instead, follow our coordinated disclosure policy:

1. **GitHub Private Vulnerability Advisory**: Submit a private report via [GitHub Security Advisories](https://github.com/abhishek01032007-pixel/Nexora/security/advisories/new).
2. **Direct Security Contact**: Reach out privately to the maintainers with the subject `[SECURITY VULNERABILITY] Nexora Skills Manager`.

### What to Include in Your Report
To help us triage and resolve the issue quickly, please provide:
* **Description**: Detailed explanation of the vulnerability and its potential impact.
* **Component Affected**: Specific module (e.g., Bootstrapper, IPC Bridge, Package Cache, Platform Adapter, UI View).
* **Proof of Concept (PoC)**: Minimal reproduction script, mock payload, or step-by-step instructions.
* **System Environment**: OS version, PowerShell version (`$PSVersionTable`), Node.js version, and Nexora version.
* **Suggested Remediation**: If you have identified a fix or mitigation, please include your patch suggestion.

---

## Vulnerability Handling SLA

We adhere to the following response timeline:
* **Initial Acknowledgement**: Within **48 hours** of report receipt.
* **Triage & Reproduction**: Within **7 business days**.
* **Remediation & Patch Release**: Within **14 to 30 days** depending on vulnerability severity.
* **Public Disclosure**: Coordinated after the fix has been published and released via auto-update or patch release.

---

## Verification & Response

- Security reports will be acknowledged within 48 hours.
- Confirmed security vulnerabilities will receive patched releases with cryptographic SHA-256 validation.
