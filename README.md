# Nexora Skills Manager

AI-powered developer skill management and orchestration for modern development workflows.

[![Platform](https://img.shields.io/badge/platform-Windows%2010%20%7C%2011%20x64-blue.svg)](docs/system-requirements.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Latest Release](https://img.shields.io/badge/release-v1.0.0-green.svg)](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager/releases/tag/v1.0.0)

---

## Download

[**Download Latest Version**](https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe)

**Windows 10 / Windows 11** — 64-bit (x64)

> **Distribution Notice**: The Nexora public distribution channel is being prepared for upcoming releases. Once active, clicking **Download Latest Version** will always download the latest stable installer — no manual version changes required.
>
> The current stable release (**v1.0.0**) remains available through the [existing release channel](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager/releases/tag/v1.0.0).

---

## What is Nexora Skills Manager?

Nexora Skills Manager is a local-first Windows desktop control center and CLI that equips your AI coding assistants with specialized, battle-tested engineering capabilities.

Instead of writing repetitive prompt instructions for every project, Nexora scans your codebase, detects your tech stack, recommends role-specific skills, and deploys structured instruction sets directly into your project workspace.

---

## Key Features

- **Native Windows Desktop Host**: Fast, high-contrast Electron desktop dashboard with real-time health diagnostics.
- **Deep Project Intelligence**: Detects frameworks, languages, and architecture markers locally on your device.
- **Role-Based Working Modes**: Specialized skill packs for Frontend, Backend, QA/Debug, Fullstack, and Frameworks.
- **48 Curated Engineering Skills**: Production-grade instructions for Flutter, FastAPI, Node.js, Clean Architecture, Security, Testing, and Performance.
- **Multi-Platform Deployment**: Generates native configs for Google Antigravity, Cursor, and GitHub Copilot with one click.
- **Unified Windows CLI (`nexora`)**: Instant terminal access for interactive skill activation, scans, and doctor diagnostics.
- **Secure Update Center**: Built-in cryptographic verification with automatic rollback protection.
- **Local-First Project Processing**: Operates locally on your device without source code uploads or tracking telemetry.

---

## Supported AI Platforms

Nexora formats and synchronizes skills across leading AI developer environments:

| Platform | Target Configuration | Output Location |
| :--- | :--- | :--- |
| **Google Antigravity** | Structured Markdown with Frontmatter | `.agents/skills/<skill>/SKILL.md` |
| **Cursor** | Modern Rules Format | `.cursor/rules/<skill>.mdc` |
| **GitHub Copilot** | Consolidated Instructions | `.github/copilot-instructions.md` |

---

## System Requirements

- **Operating System**: Windows 10 (64-bit) or Windows 11 (64-bit)
- **Architecture**: x64
- **Runtime**: Self-contained (No external dependencies required)

For detailed hardware and environment notes, see [System Requirements](docs/system-requirements.md).

---

## Installation

Once the Nexora distribution channel is active, installation follows a standard Windows setup wizard:

1. Click **Download Latest Version** above.
2. Your browser downloads `NexoraSkillsManager-Setup.exe`.
3. Open the downloaded installer from your Downloads folder.
4. The Nexora Setup Wizard guides you through installation location and shortcut preferences.
5. Click **Install**, then **Finish** to launch Nexora Skills Manager.

**Default install location**: `%LOCALAPPDATA%\Programs\Nexora Skills Manager`

> **Windows SmartScreen**: Because the current release is not code-signed, Windows may display a Microsoft Defender SmartScreen prompt. You can choose **More info** → **Run anyway** to proceed. This is standard behavior for unsigned desktop applications.

For the complete installation guide, see [Installation Guide](docs/installation.md).

---

## Uninstall

To remove Nexora Skills Manager:

1. Open **Windows Settings** → **Apps** → **Installed Apps**.
2. Locate **Nexora Skills Manager**.
3. Click **Uninstall** and follow the prompts.

Your personal project workspaces and custom skill files are preserved during uninstallation.

---

## Updates

Nexora includes a built-in **Update Center** that checks for new versions, downloads updates over HTTPS, and verifies integrity using SHA-256 checksums before installation.

For details, see [Update Center & Releases](docs/updates.md).

---

## Privacy & Transparency

Nexora Skills Manager is designed with strict local-first security and distribution transparency principles:

- **Local-First Processing**: Project analysis, stack detection, and skill generation run locally on your machine without transmitting project contents off-device.
- **Zero Usage Telemetry**: Nexora does not include product analytics, usage telemetry, or source-code tracking.
- **Transparent Distribution**: Public release manifests, official binary checksums (SHA-256), and licensing terms are published openly in this distribution repository.
- **HTTPS Network Updates**: Internet connectivity is used strictly for checking and downloading official application updates over secure HTTPS.

For the full privacy commitment, see [Privacy](docs/privacy.md).

---

## Support

For feature suggestions, questions, or bug reports, please open an issue in the [GitHub Issue Tracker](https://github.com/abhishek01032007-pixel/Nexora/issues).
