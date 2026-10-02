# Nexora Skills Manager

<p align="center">
  <b>The Native Windows Desktop Control Plane for AI Agent Skills, Rules & Multi-IDE Fleet Synchronization.</b>
</p>

<p align="center">
  <a href="https://github.com/abhishek01032007-pixel/Nexora/releases/latest"><img src="https://img.shields.io/badge/Release-v1.2.0%20(Latest)-0A84FF?style=for-the-badge&logo=github&logoColor=white" alt="Latest Release" /></a>
  <a href="#-system-requirements--prerequisites"><img src="https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011%20x64-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Platform Windows" /></a>
  <a href="#-one-setup-command"><img src="https://img.shields.io/badge/Runtime-PowerShell%205.1%2B%20Native-5391FE?style=for-the-badge&logo=powershell&logoColor=white" alt="PowerShell Native" /></a>
  <a href="#-safety--atomic-rollback-guarantee"><img src="https://img.shields.io/badge/Rollback%20Safety-100%25%20Atomic%20Journal-10B981?style=for-the-badge&logo=shield&logoColor=white" alt="Atomic Rollback" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-F59E0B?style=for-the-badge" alt="License MIT" /></a>
</p>

---

## 💡 What is Nexora Skills Manager?

**Nexora Skills Manager** is a dedicated native Windows desktop control plane that unifies, authors, tests, and deploys AI agent skills, rules, and prompts across your development workspace.

Modern AI development is fragmented across different configuration standards:
* **Google Antigravity** expects `.agents/skills/<skill>/SKILL.md` with YAML frontmatter
* **Cursor IDE** compiles `.cursor/rules/<skill>.mdc` rules
* **GitHub Copilot** relies on delimited sections in `.github/copilot-instructions.md`
* **Claude Code** manages `.claude/skills/<skill>/SKILL.md`
* **OpenAI Codex** requires `.codex/skills/<skill>/SKILL.md`

Nexora eliminates configuration drift and manual copy-pasting by providing a **single, local command center** to discover, download, bundle, test, and synchronize agent skills across all 5 platforms simultaneously.

---

## 📥 Direct Install & Download

Choose your preferred installation method:

```
┌────────────────────────────────────────────────────────────────────────┐
│                      OFFICIAL WINDOWS RELEASES                         │
├────────────────────────────────────────────────────────────────────────┤
│                                                                        │
│  💾 STANDALONE GRAPHICAL INSTALLER (.exe):                             │
│     Download: NexoraSkillsManager-Setup.exe (v1.2.0)                   │
│     URL: https://github.com/abhishek01032007-pixel/Nexora/releases     │
│                                                                        │
│  📦 WINDOWS PACKAGE MANAGER (WinGet):                                  │
│     winget install Nexora.NexoraSkillsManager                          │
│                                                                        │
│  📁 PORTABLE ZIP ARCHIVE:                                              │
│     NexoraSkillsManager-1.2.0-win-x64.zip (Extract & Run)              │
│                                                                        │
└────────────────────────────────────────────────────────────────────────┘
```

> 🔗 **Direct Download Link:** [Download NexoraSkillsManager-Setup.exe (Latest Release)](https://github.com/abhishek01032007-pixel/Nexora/releases/download/v1.2.0/NexoraSkillsManager-Setup.exe)

---

## ⚡ One Setup Command

For developers who prefer an automated, single-command terminal setup:

### Windows PowerShell (Recommended)
```powershell
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
```

### Windows Command Prompt (CMD)
```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex"
```

> [!NOTE]
> #### 📌 System Requirements & Prerequisites
> * **Operating System:** Windows 10 & 11 (64-bit)
> * **Runtime:** Windows PowerShell 5.1+ (Native Windows built-in — **No Node.js or Python installations required on user machines**)
> * **Installation Scope:** 100% non-elevated per-user installation (`%LOCALAPPDATA%\NexoraSkillsManager`)
> * **Disk Footprint:** ~150 MB
> * **Integrity:** Strict cryptographic SHA-256 hash verification before package extraction
> * **Environment:** Automatically adds `nexora` to your User PATH

---

## 🌟 Comprehensive Features Showcase

Nexora Skills Manager provides an end-to-end control plane designed specifically for AI agent engineering:

### 1. 📥 Skill Download & Vault Management
* **1-Click Skill Downloads:** Browse verified skills in **The Store** or import external skills directly from remote GitHub URLs or local directories.
* **Skill Vault ("My Downloads"):** Every downloaded skill is saved to your personal local vault with rich metadata:
  * 📅 Exact acquisition date and version history
  * 🔒 SHA-256 cryptographic verification checksum
  * 🏷️ Detailed skill capabilities, rule scopes, and prompt instructions
  * ⚖️ Token weight tier badge (*Lean, Standard, Pro*)
* **1-Click "Add to Workspace":** Deploy any downloaded skill directly from your vault into an active workspace and jump immediately to the Workspace Dashboard.

### 2. 📦 Bundle Creation & Collaboration Features
* **Custom Bundle Authoring:** Create personalized skill bundles tailored for specific projects (e.g., *Frontend Pro Stack*, *Security Hardened Pack*, *AI Agent Automation*).
* **Official Curated Bundles:** Ships with pre-configured industry standard bundles:
  * 🌐 **Full-Stack Web Pack** (React 19, Next.js, Node.js Backend, UI/UX Pro Max)
  * 🛡️ **Security Hardened Pack** (Backend Security, OWASP Audit, Secret Scanner)
  * 📱 **Mobile Multiplatform Pack** (Flutter, React Native, Swift, Kotlin)
  * ☁️ **DevOps & Cloud Pack** (Docker, Kubernetes, Terraform, CI/CD)
  * 🏛️ **Architecture & Clean Code Pack** (Clean Architecture, Code Review, Debugger)
* **Universal Bundle Editor:** Edit, customize, or fork both custom user bundles and official packs with persistent overrides.
* **Bulk Workspace Deployment:** Deploy an entire curated or custom bundle into any target project workspace with a single click.

### 3. 🤖 Complete 5-Platform Multi-IDE Synchronization
* **Write Once, Compile Everywhere:** Maintain your skills in standard `SKILL.md` format; Nexora handles the translation:
  * **Google Antigravity:** `.agents/skills/<skill>/SKILL.md` with YAML frontmatter
  * **Cursor IDE:** `.cursor/rules/<skill>.mdc`
  * **GitHub Copilot:** `.github/copilot-instructions.md` with environment variable preservation
  * **Claude Code:** `.claude/skills/<skill>/SKILL.md`
  * **OpenAI Codex:** `.codex/skills/<skill>/SKILL.md`

### 4. 🛡️ Token Safety Governor
* **Context Budget Monitoring:** Real-time calculation of prompt token consumption before skills are injected into your coding agents.
* **Mathematical Headroom Safeguards:** Proactively prevents context window overflows, reducing latency and avoiding runaway API costs.

### 5. 🔄 Batch Update Center & Atomic Rollbacks
* **Automated Update Detection:** Detects upstream SemVer changes across your installed skills and catalog.
* **3-Way Checksum Diff Viewer:** Side-by-side comparison of local modifications vs. upstream updates.
* **100% Byte-for-Byte Atomic Rollback:** Every update generates a transactional journal snapshot. If an update fails, changes are restored byte-for-byte with zero project corruption.

### 6. 🎨 Multi-Theme Engine
* **System Theme (Auto-Sync):** Automatically syncs with Windows 10/11 light or dark system theme.
* **White Normal Mode (Daylight Clean):** High-contrast daylight theme (`#ffffff` / `#f8f9fa`) with deep slate typography and full WCAG AA contrast compliance.
* **Dark Mode (Charcoal Slate):** Developer-favorite deep charcoal foundation (`#13131b`) with violet accents.
* **Zero-Flash Startup:** Instant theme rendering before first DOM paint with top-bar quick switcher.

### 7. 🩺 6-Category System Doctor
* Real-time self-diagnostics across runtime files, platform adapters, environment variables, folder accessibility, and IPC bridges with **1-click automated repair**.

### 8. 🔒 100% Local-First Privacy & Sovereignty
* **100% Local Execution:** All project parsing and skill deployments run locally.
* **Zero Telemetry:** Never transmits your project files, code trees, or private data.
* **Zero Secret Storage:** Never stores or requests API keys, tokens, or personal passwords.

---

## 🚀 How to Use (4-Step Workflow)

```
┌────────────────────────────────────────────────────────────────────────┐
│                        NEXORA 4-STEP WORKFLOW                          │
├────────────────────────────────────────────────────────────────────────┤
│                                                                        │
│  [1. CONNECT WORKSPACE]                                                │
│   Select project folder ──► Auto-detects frameworks & active AI IDEs   │
│            │                                                           │
│            ▼                                                           │
│  [2. SKILL STUDIO]                                                     │
│   Explore The Store ──────► Author in Markdown IDE or import via Git   │
│            │                                                           │
│            ▼                                                           │
│  [3. SKILL WALLET]                                                     │
│   Personal Vault ─────────► Create/edit Bundles & 1-click Workspace map│
│            │                                                           │
│            ▼                                                           │
│  [4. AUDIT & SYNC]                                                     │
│   Token Governor ─────────► Deploy atomically to Antigravity, Cursor,   │
│                             Copilot, Claude & Codex in parallel        │
│                                                                        │
└────────────────────────────────────────────────────────────────────────┘
```

1. **Step 1: Connect Workspace**  
   Add your local Git repository or project folder. Nexora automatically analyzes project dependencies and identifies active AI configuration targets.
2. **Step 2: Explore Skill Studio**  
   Discover verified skills in **The Store**, author custom skills using the built-in **Markdown IDE** with YAML frontmatter validation, or import remote skills directly from GitHub URLs.
3. **Step 3: Manage Your Skill Wallet**  
   Inspect your personal vault with acquisition timestamps, SHA-256 integrity hashes, and token tiers. Group skills into custom or curated bundles (*Full-Stack, Security, Mobile, DevOps*) and deploy them to any workspace with **1-click mapping**.
4. **Step 4: Audit & Multi-IDE Sync**  
   Monitor context consumption in the **Token Governor** to prevent prompt bloat, then deploy atomically across your IDE fleet simultaneously.

---

## 📦 Official Skill Catalog

Nexora provides an expanding collection of **30+ official pre-verified skills** curated across 6 key software engineering domains:

| Category | Coverage Scope |
| :--- | :--- |
| 🌐 **Frontend & UI/UX** | React 19, Next.js, Design Systems, Mobile (Flutter, React Native, Swift, Kotlin) |
| ⚙️ **Backend & Microservices** | REST/gRPC API Architecture, Node.js, FastAPI, Go, Rust Systems |
| 🛡️ **Security & Auditing** | OWASP Top 10 Scanning, Secrets Scanner, Auth Hardening |
| 🧪 **Quality Assurance (QA)** | Unit Testing, Widget Testing, Regression Suites, Scientific Debugger |
| 🗄️ **Database & Architecture** | PostgreSQL Optimization, Supabase RLS, Clean Architecture Patterns |
| ☁️ **DevOps & Cloud** | Docker, Kubernetes, CI/CD Workflows, Web Performance Optimization |

> The official catalog is automatically synchronized directly with our public catalog index ([`catalog/skills-index.json`](catalog/skills-index.json)) with dual-tier offline cache fallback.

---

## 📊 Platform Architecture & Operational Flow

Nexora is engineered for enterprise-grade stability, ensuring your development environment is never left in a corrupted state:

```
┌────────────────────────────────────────────────────────────────────────────────────────┐
│                               NEXORA SYSTEM ARCHITECTURE                               │
├───────────────────────────────┬────────────────────────────────────────────────────────┤
│ 🖥️ DESKTOP CONTROL PLANE      │ • 20 Active UI Screens (Studio, Wallet, Token Governor)│
│                               │ • Multi-Theme Engine (Daylight Clean / Charcoal Slate) │
│                               │ • Live IPC Bridge Dispatcher (61 Whitelisted Ops)      │
├───────────────────────────────┼────────────────────────────────────────────────────────┤
│ 🛡️ SAFETY & EXECUTION ENGINE  │ • SHA-256 Cryptographic & Schema Verification (100%)   │
│                               │ • Transactional Atomic Journal Snapshot & Rollback     │
│                               │ • Dual-Tier Offline Local Cache (Instant Fallback)     │
├───────────────────────────────┼────────────────────────────────────────────────────────┤
│ 🎯 MULTI-TARGET FLEET         │ • Google Antigravity (.agents/skills/<skill>/SKILL.md) │
│                               │ • Cursor IDE (.cursor/rules/<skill>.mdc)               │
│                               │ • GitHub Copilot (.github/copilot-instructions.md)     │
│                               │ • Claude Code (.claude/skills/<skill>/SKILL.md)        │
│                               │ • OpenAI Codex (.codex/skills/<skill>/SKILL.md)        │
└───────────────────────────────┴────────────────────────────────────────────────────────┘
```

### 🛡️ Safety & Atomic Rollback Guarantee
* **100% Test Suite Pass Rate:** All 102 test suites pass cleanly across backend cmdlets, desktop bridge, and user interface.
* **100% Byte-for-Byte Atomic Rollback:** In the event of network disruption, file lock, or syntax failure, the engine automatically rolls back changes to the prior snapshot.
* **Zero `Invoke-Expression`:** The IPC dispatcher strictly dispatches against an allowlist of 61 predefined operations to prevent arbitrary command injection.
* **Offline-First Resilience:** If GitHub is unreachable, Nexora transparently falls back to the local offline cache without blocking developer workflows.

---

## 🤝 Community, Collaboration & Repository Structure

Nexora operates under a dual-repository development model to provide open community access while maintaining security and stability for our core desktop engine:

### 🌐 1. Public Repository (`Nexora`) — Open Distribution & Community Hub
This public repository serves as the official distribution channel and community gateway:
* **Binary Releases:** Access official installer releases, release notes, and SHA-256 checksums.
* **Skill Catalog Contributions:** Submit, improve, or propose new agent skills directly to `/catalog` via Pull Requests.
* **Issues & Bug Reports:** Open an [Issue](https://github.com/abhishek01032007-pixel/Nexora/issues) to propose new IDE targets, suggest improvements, or report bugs.

### 🔒 2. Private Repository (`Nexora-Skills-Manager`) — Core Engine Collaboration
The core desktop application shell, Electron bridge, and PowerShell execution engine are managed in our private source repository.

* **Interested in collaborating on the core engine?**  
  We welcome developers passionate about AI agent architecture, desktop engineering, and PowerShell performance optimization:
  * **Option A (Email):** Reach out to the maintainers with your background, interests, and proposed contributions.
  * **Option B (Collaboration Request):** Submit an issue on this repository with the label `collaboration-request` outlining the area of the engine you would like to work on. Verified contributors will be granted access to the private repository.

---

## 📄 License

Nexora Skills Manager public distribution and catalog are released under the [MIT License](LICENSE).
