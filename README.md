# Nexora Skills Manager

AI-powered developer skill management and orchestration for modern development workflows.

[![Platform](https://img.shields.io/badge/platform-Windows%2010%20%7C%2011%20x64-blue.svg)](docs/system-requirements.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Latest Release](https://img.shields.io/badge/release-v1.0.0-green.svg)](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager/releases/tag/v1.0.0)

---

## 📥 Download

[**Download Latest Version**](https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe)

> **Distribution Notice**: This public distribution channel is currently being prepared for upcoming releases. The current stable release (**v1.0.0**) is available via the [Official GitHub Release](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager/releases/tag/v1.0.0) or via PowerShell setup:
> ```powershell
> irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora-Skills-Manager/main/setup.ps1 | iex
> ```

---

## 💡 What is Nexora Skills Manager?

Nexora Skills Manager is a local-first Windows desktop control center and CLI that equips your AI coding assistants with specialized, battle-tested engineering capabilities.

Instead of writing repetitive prompt instructions for every project, Nexora scans your codebase, detects your tech stack, recommends role-specific skills, and deploys structured instruction sets directly into your project workspace.

---

## ⚡ Key Features

- **Native Windows Desktop Host**: Fast, high-contrast Electron desktop dashboard with real-time health diagnostics.
- **Deep Project Intelligence**: Detects frameworks, languages, and architecture markers locally on your device.
- **Role-Based Working Modes**: Specialized skill packs for Frontend, Backend, QA/Debug, Fullstack, and Frameworks.
- **48 Curated Engineering Skills**: Production-grade instructions for Flutter, FastAPI, Node.js, Clean Architecture, Security, Testing, and Performance.
- **Multi-Platform Deployment**: Generates native configs for Google Antigravity, Cursor, and GitHub Copilot with one click.
- **Unified Windows CLI (`nexora`)**: Instant terminal access for interactive skill activation, scans, and doctor diagnostics.
- **Secure Update Center**: Built-in cryptographic verification with automatic rollback protection.
- **Local-First Project Processing**: Operates locally on your device without source code uploads or tracking telemetry.

---

## 🤖 Supported AI Platforms

Nexora formats and synchronizes skills across leading AI developer environments:

| Platform | Target Configuration | Output Location |
| :--- | :--- | :--- |
| **Google Antigravity** | Structured Markdown with Frontmatter | `.agents/skills/<skill>/SKILL.md` |
| **Cursor** | Modern Rules Format | `.cursor/rules/<skill>.mdc` |
| **GitHub Copilot** | Consolidated Instructions | `.github/copilot-instructions.md` |

---

## 💻 System Requirements

- **Operating System**: Windows 10 (64-bit) or Windows 11 (64-bit)
- **Architecture**: x64
- **Runtime**: Self-contained (No external dependencies required)

For detailed hardware and environment notes, see [System Requirements](docs/system-requirements.md).

---

## 📖 Documentation

- [Installation Guide](docs/installation.md)
- [System Requirements](docs/system-requirements.md)
- [Update Center & Releases](docs/updates.md)
- [Privacy Commitment](docs/privacy.md)
- [Security Policy](SECURITY.md)

---

## 🔒 Privacy & Public Release Transparency

Nexora Skills Manager is designed with strict local-first security and distribution transparency principles:
- **Local-First Processing**: Project analysis, stack detection, and skill generation run locally on your machine without transmitting project contents off-device.
- **Zero Usage Telemetry**: Nexora does not include product analytics, usage telemetry, or source-code tracking.
- **Transparent Distribution**: Public release manifests, official binary checksums (SHA-256), and licensing terms are published openly in this distribution repository.
- **HTTPS Network Updates**: Internet connectivity is used strictly for checking and downloading official application updates over secure HTTPS.

---

## 💬 Support & Inquiries

For feature suggestions, questions, or bug reports, please open an issue in the [GitHub Issue Tracker](https://github.com/abhishek01032007-pixel/Nexora/issues).
