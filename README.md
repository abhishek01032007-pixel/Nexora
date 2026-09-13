# ⚡ Nexora Skills Manager

<p align="center">
  <img src="https://img.shields.io/badge/NEXORA-SKILLS%20MANAGER-0B1020?style=for-the-badge&labelColor=2563EB&color=111827" alt="Nexora Skills Manager" />
</p>

<p align="center">
  <strong>Local-First AI Agent Skill Management, Orchestration & Multi-Platform Deployment for Windows.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011%20x64-0078D4?style=flat-square" alt="Platform: Windows x64" />
  <img src="https://img.shields.io/badge/Release-v1.2.0-2563EB?style=flat-square" alt="Release: v1.2.0" />
  <img src="https://img.shields.io/badge/CLI-nexora-10B981?style=flat-square" alt="CLI: nexora" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License: MIT" />
</p>

---

## 🌟 What is Nexora Skills Manager?

**Nexora Skills Manager** is a local-first Windows desktop control center and unified command-line tool (`nexora`) designed to supercharge AI coding assistants—including **Google Antigravity**, **Cursor**, **GitHub Copilot**, **OpenAI Codex**, and **Claude Code**.

Instead of manually writing and repeating prompts, rules, or system instructions for every new project, Nexora:
1. **Scans your codebase** to detect frameworks, languages, and architectural patterns.
2. **Recommends role-specific skills** from a catalog of **48 curated production engineering skills**.
3. **Deploys native, formatted instruction sets** directly into your project workspace (`.agents/`, `.cursor/`, or `.github/`).
4. **Manages skill updates & versioning** with automated 3-way checksum conflict detection and safe, single-click rollbacks.

---

## ⚡ Quick One-Command Setup (Windows x64)

Install Nexora with a single command in **Windows PowerShell**, **Command Prompt (CMD)**, or the **VS Code Integrated Terminal**:

### In Windows PowerShell (Recommended):
```powershell
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
```

### In Command Prompt (CMD):
```cmd
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex"
```

### What the Setup Command Does:
- Verifies 64-bit Windows environment and PowerShell 5.1+.
- Deploys the isolated runtime engine and skill packs to `%LOCALAPPDATA%\NexoraSkillsManager\runtime\`.
- Installs the Electron Desktop application to `%LOCALAPPDATA%\Programs\NexoraSkillsManager\`.
- Registers the native CLI command (`nexora.cmd`) to your user `PATH`.
- Creates Start Menu and Desktop shortcuts for instant access.

---

## 🧠 How Nexora Skills Manager Works

Nexora connects your local engineering environment with your AI coding tools through a seamless 4-step workflow:

```
┌────────────────────────────────────────────────────────────────────────┐
│                     HOW NEXORA SKILLS MANAGER WORKS                    │
├────────────────────────────────────────────────────────────────────────┤
│                                                                        │
│   1. SCAN & DETECT                                                     │
│      Inspects your project root locally for package manifests,         │
│      frameworks (Flutter, Node, React, Python, Go, Docker, etc.).      │
│                            │                                           │
│                            ▼                                           │
│   2. INTELLIGENT MATCHING                                              │
│      Recommendation engine ranks skills based on stack confidence      │
│      and chosen developer mode (Frontend, Backend, QA, Architecture).  │
│                            │                                           │
│                            ▼                                           │
│   3. NATIVE PLATFORM COMPILATION                                       │
│      Formats and deploys instructions into target workspace configs:   │
│      • Google Antigravity ──> .agents/skills/<skill>/SKILL.md          │
│      • Cursor IDE         ──> .cursor/rules/<skill>.mdc                │
│      • GitHub Copilot/VS  ──> .github/copilot-instructions.md          │
│      • Claude Code / Roo  ──> Reads .cursor/rules/ & .github/ configs  │
│                            │                                           │
│                            ▼                                           │
│   4. SAFE 3-WAY UPDATE & ROLLBACK                                      │
│      Computes 3-way SHA-256 checksums (Local vs Baseline vs Remote).   │
│      Safeguards local edits, manages bulk updates, and allows          │
│      instant 1-click manual rollback to previous backup archives.      │
│                                                                        │
└────────────────────────────────────────────────────────────────────────┘
```

---

## 🤖 Supported AI Coding Platforms

Nexora formats and synchronizes skills across leading AI developer environments:

| AI Platform | Target Configuration | Output Format / Location |
|---|---|---|
| **Google Antigravity** | Multi-file skill packages | `.agents/skills/<skill>/SKILL.md` with YAML frontmatter |
| **Cursor IDE** | Modern MDC rules format | `.cursor/rules/<skill>.mdc` with frontmatter filters |
| **GitHub Copilot & Codex (VS Code)** | Workspace instructions | `.github/copilot-instructions.md` within safe delimiters (`<!-- NEXORA:START -->`) |
| **Claude Code** | Workspace instructions & rules | Automatically reads `.github/` and `.cursor/` workspace rules |
| **Roo Code / Cline (VS Code)** | Compatible rule format | Supported via standard `.cursor/rules/` and markdown configs |

---

## 💻 Using the CLI (`nexora`) Anywhere

Once installed, the `nexora` command is available globally from **CMD**, **PowerShell**, or any terminal inside **VS Code**:

```bash
# Launch the interactive desktop manager & project selector
nexora

# Inspect tech stack of a project (e.g. current directory in VS Code)
nexora scan .

# List all 48 available engineering skills in the catalog
nexora skills list

# Activate a skill for GitHub Copilot & Codex in VS Code
nexora skills add flutter-build-responsive-layout --platform copilot

# Activate a skill for Cursor & Claude Code
nexora skills add backend-architect --platform cursor

# Activate a skill for Google Antigravity
nexora skills add ui_ux_pro_max --platform antigravity

# Run health diagnostics & environment verification
nexora doctor

# Revert managed skills to previous backup snapshot
nexora rollback .
```

---

## 🏗️ System Architecture

Nexora utilizes an Electron + PowerShell hybrid architecture for maximum performance and zero-dependency reliability:

```
┌─────────────────────────────────────────────────────────────┐
│                    NEXORA ARCHITECTURE                      │
├──────────────────────────────┬──────────────────────────────┤
│  DESKTOP UI (Electron)       │  ENGINE RUNTIME (PowerShell) │
│  • HTML5 / CSS3 / ES Modules │  • Pure native Windows logic │
│  • Dark Charcoal Foundation  │  • 3-Way SHA-256 Checksums   │
│  • 3-Way Diff Viewers        │  • Sequential Bulk Executor  │
│  • Modals & Progress Bars    │  • Quarantine & Rollback     │
├──────────────────────────────┴──────────────────────────────┤
│               SECURE IPC BRIDGE (stdin / stdout)            │
│  • Zero direct renderer file access                         │
│  • Input sanitization & Concurrency Mutex Locks             │
└─────────────────────────────────────────────────────────────┘
```

---

## 🛡️ Privacy & Local-First Security

- **100% Local-First Processing:** Codebase analysis, stack detection, and skill generation run completely on your local machine. Your proprietary source code is never uploaded to any cloud server.
- **Zero Usage Tracking:** Nexora includes no analytics, tracking beacons, or telemetry.
- **Delimiter-Safe Multi-Platform Injection:** When editing shared files (like `.github/copilot-instructions.md`), Nexora strictly isolates its managed block. Existing developer instructions outside the block are completely untouched.
- **Automatic Backups:** Every update or replacement automatically snapshots current files to `%LOCALAPPDATA%\NexoraSkillsManager\backups\` before making any modifications.

---

## 📦 System Requirements

- **Operating System:** Windows 10 (64-bit) or Windows 11 (64-bit)
- **Architecture:** x64
- **PowerShell:** 5.1 or later (Built into Windows 10 & 11)
- **Dependencies:** None (All runtimes and packages are completely self-contained)

---

## 🤝 Community & Support

- **Repository & Releases:** [https://github.com/abhishek01032007-pixel/Nexora](https://github.com/abhishek01032007-pixel/Nexora)
- **Bug Reports & Feature Requests:** [Open an Issue](https://github.com/abhishek01032007-pixel/Nexora/issues)

---

<p align="center">
  Built with ❤️ for modern AI-assisted software engineers.
</p>
