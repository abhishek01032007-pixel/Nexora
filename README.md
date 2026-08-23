# Nexora Skills Manager

**AI Developer Skill Intelligence & Management for Windows**

[![Platform](https://img.shields.io/badge/platform-Windows%2010%20%7C%2011%20x64-blue.svg)](docs/system-requirements.md)
[![Latest Release](https://img.shields.io/badge/release-v1.0.1-green.svg)](https://github.com/abhishek01032007-pixel/Nexora/releases/tag/v1.0.1)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Security: Local--First](https://img.shields.io/badge/security-local--first-purple.svg)](docs/privacy.md)

---

## 📥 Download for Windows

The official installer for Nexora Skills Manager:

[**Download Nexora Skills Manager (64-bit Windows)**](https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe)

| Release Attribute | Specification |
| :--- | :--- |
| **Latest Version** | **v1.0.1 (Stable)** |
| **Target Operating System** | **Windows 10 / Windows 11 (64-bit x64)** |
| **Package Type** | **Windows Installer (`.exe`)** |
| **Installer Size** | **~82.7 MB** |
| **Updates** | **Automatic In-App Updates Supported** |

---

## 💡 What is Nexora?

**Nexora Skills Manager** is a local-first Windows desktop control center and CLI that equips your AI coding assistants with specialized, battle-tested engineering capabilities.

Instead of writing repetitive prompt instructions for every project, Nexora scans your codebase, detects your framework and architecture patterns, recommends role-specific engineering skills, and deploys structured instruction sets directly into your project workspaces.

---

## ⚡ Key Features

- **Native Windows Desktop Host**: Fast, high-contrast Electron desktop dashboard with real-time health diagnostics.
- **Deep Project Intelligence**: Automatically inspects project markers (e.g. Flutter, FastAPI, Node.js, React) locally on your device.
- **Role-Based Engineering Modes**: Specialized workflows tailored for Frontend, Backend, QA/Debugging, and Fullstack development.
- **48 Curated Engineering Skills**: Production-grade instructions for Clean Architecture, Testing, Security (OWASP), and Performance.
- **Multi-Platform Skill Deployment**: Automatically outputs structured skill instructions for Google Antigravity, Cursor, and GitHub Copilot with one click.
- **Unified Windows CLI (`nexora`)**: Instant terminal access for interactive skill activation, codebase scanning, and runtime health diagnostics.
- **Transactional Update Center**: Built-in cryptographic SHA-256 verification with automatic rollback protection.
- **100% Local-First Privacy**: Operates entirely offline on your device without source-code uploads or telemetry.

---

## 🤖 Supported AI Platforms

Nexora formats and synchronizes skills across leading AI developer environments:

| Platform | Target Configuration | Output Location |
| :--- | :--- | :--- |
| **Google Antigravity** | Structured Markdown with YAML Frontmatter | `.agents/skills/<skill>/SKILL.md` |
| **Cursor** | Structured MDC Rules | `.cursor/rules/<skill>.mdc` |
| **GitHub Copilot** | Consolidated Markdown Instructions | `.github/copilot-instructions.md` |

---

## 🛠️ How It Works

```
+------------------+      +-----------------------+      +------------------------+
| 1. SCAN CODEBASE | ---> | 2. SELECT SKILLS      | ---> | 3. DEPLOY PLATFORMS    |
| Local framework  |      | Curated role-specific |      | Generates Antigravity, |
| & stack detection|      | engineering workflows |      | Cursor & Copilot rules |
+------------------+      +-----------------------+      +------------------------+
```

1. **Scan**: Add your project directory. Nexora detects frameworks, dependencies, and architectural patterns.
2. **Select**: Choose from recommended skills or activate specialized rules for your current engineering task.
3. **Deploy**: Click Deploy to generate synchronized instructions for your AI coding assistants.

---

## 🚀 Installation Guide

1. **Download**: Click [**Download for Windows**](https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe) to get the installer (`NexoraSkillsManager-Setup.exe`).
2. **Run Installer**: Launch the setup executable and follow the setup wizard.
3. **Launch**: Open **Nexora Skills Manager** from your Start Menu, Desktop shortcut, or run `nexora` in any terminal.

For detailed steps, see the [Installation Guide](docs/installation.md).

---

## 🔄 Automatic Updates

Nexora includes an integrated, secure **Update Center**:
- **Automatic Discovery**: Automatically checks for new versions when launched.
- **Cryptographic Verification**: Validates all update packages using SHA-256 checksums before applying.
- **Transactional Upgrades**: Upgrades desktop and runtime components in place while strictly preserving your registered projects, workspaces, and custom skills.

---

## 💻 System Requirements

- **Operating System**: Windows 11 (64-bit) or Windows 10 (64-bit, Version 1909+)
- **Architecture**: x64 (64-bit)
- **Memory (RAM)**: 4 GB minimum (8 GB recommended)
- **Disk Space**: ~250 MB free disk space
- **Runtime**: Self-contained (No external runtimes, Node.js, or SDKs required)

For more details, see [System Requirements](docs/system-requirements.md).

---

## 📦 Release Downloads

| Download Item | File Name | Description |
| :--- | :--- | :--- |
| **Latest Windows Installer** | [`NexoraSkillsManager-Setup.exe`](https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe) | Recommended installer for Windows 10/11 x64 |
| **Versioned Release Archive** | [All GitHub Releases](https://github.com/abhishek01032007-pixel/Nexora/releases) | Access previous releases and release notes |

---

## 🔒 Security & SHA-256 Verification

Every release includes an official `SHA256SUMS.txt` checksum file attached to the [GitHub Release](https://github.com/abhishek01032007-pixel/Nexora/releases/latest).

To verify your downloaded installer integrity in PowerShell:
```powershell
Get-FileHash .\NexoraSkillsManager-Setup.exe -Algorithm SHA256
```
Compare the output hash against the hash listed in `SHA256SUMS.txt` for `v1.0.1`:
`e1ba809f6d41325c7aca86f0823fb75b02f9e99c2691b9b7013ec7962075f465`

---

## ⚠️ Troubleshooting & Windows SmartScreen

Because initial releases are not yet Authenticode-signed with a commercial enterprise certificate, Windows Defender SmartScreen may display an *"Unknown Publisher"* notification during the first installation.

**To continue installation safely:**
1. Confirm that your download originated from the official repository (`https://github.com/abhishek01032007-pixel/Nexora`).
2. Verify the installer's SHA-256 hash using the command above.
3. On the SmartScreen prompt, click **More info**, then click **Run anyway**.

---

## 🛡️ Privacy Commitment

Nexora Skills Manager is built with a strict local-first privacy standard:
- **Zero Source Uploads**: Project scanning and skill generation execute entirely on your machine.
- **Zero Usage Telemetry**: No user tracking, analytics, or behavioral telemetry.
- **Zero Credential Requests**: Never asks for or accesses your private API keys or passwords.

Read our full [Privacy Commitment](docs/privacy.md).

---

## 📖 Documentation

- [Installation Guide](docs/installation.md)
- [System Requirements](docs/system-requirements.md)
- [Update Center & Releases](docs/updates.md)
- [Privacy Commitment](docs/privacy.md)
- [Security Policy](SECURITY.md)

---

## 📄 License

Nexora Skills Manager is distributed under the [MIT License](LICENSE).
