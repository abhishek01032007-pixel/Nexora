<p align="center">
  <a href="https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/assets/branding/NexoraSkillsManager-1024.png" target="_blank" title="Nexora Skills Manager Logo">
    <img src="assets/branding/NexoraSkillsManager-1024.png" width="120" height="120" alt="Nexora Skills Manager Logo" style="border-radius: 26px; box-shadow: 0 10px 30px rgba(56, 189, 248, 0.3);" />
  </a>
</p>

<h1 align="center">Nexora Skills Manager</h1>

<p align="center">
  <b>The Native Windows Desktop Control Plane for AI Agent Skills, Rules & Multi-IDE Fleet Synchronization.</b><br>
  <i>Write once. Transpile instantly. Synchronize across Google Antigravity, Cursor IDE, GitHub Copilot, Claude Code, and OpenAI Codex.</i>
</p>

<p align="center">
  <a href="#-installation-options--strictly-2-choices"><img src="https://img.shields.io/badge/Download-Windows%2010%20%7C%2011%20x64-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Download for Windows" /></a>
  <a href="https://github.com/abhishek01032007-pixel/Nexora/releases/latest"><img src="https://img.shields.io/badge/Release-v1.2.0%20Latest-0A84FF?style=for-the-badge&logo=github&logoColor=white" alt="Latest Release" /></a>
  <a href="#choice-2-one-command-automated-setup"><img src="https://img.shields.io/badge/Runtime-PowerShell%205.1%2B%20Native-5391FE?style=for-the-badge&logo=powershell&logoColor=white" alt="PowerShell Native" /></a>
  <a href="#5--batch-update-center--100-atomic-rollbacks"><img src="https://img.shields.io/badge/Safety-100%25%20Atomic%20Rollback-10B981?style=for-the-badge&logo=shield&logoColor=white" alt="Atomic Rollback" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-F59E0B?style=for-the-badge" alt="License MIT" /></a>
</p>

---

## 💡 What is Nexora Skills Manager?

Engineering AI agents across multiple modern code editors has created a severe configuration fragmentation crisis:
* **Google Antigravity** parses `.agents/skills/<skill>/SKILL.md` with strict YAML frontmatter.
* **Cursor IDE** parses `.cursor/rules/<skill>.mdc` with glob filters and description headers.
* **GitHub Copilot** relies on delimited markdown sections in `.github/copilot-instructions.md`.
* **Claude Code** manages isolated skill files in `.claude/skills/<skill>/SKILL.md`.
* **OpenAI Codex** executes tool rules from `.codex/skills/<skill>/SKILL.md`.

Whenever you update a prompt rule, fix an instruction, or add an engineering skill, you are forced to manually copy-paste, reformat, and synchronize across every repository and editor.

**Nexora Skills Manager eliminates this fragmentation.** It provides a native, beautiful Windows desktop application where you discover, author, bundle, and maintain AI agent skills in one central vault—and compile them simultaneously into all 5 IDE target formats with a single click.

---

## ⚡ Installation Options — Strictly 2 Choices

> **Exclusively Engineered for Windows:** Nexora is built specifically for **Windows 10 & 11 (64-bit)**, leveraging native Windows PowerShell runtime cmdlets, local filesystem performance, and non-elevated user-space security. **No Node.js or Python runtime is required on your machine.**

### Choice 1: Standalone Graphical Installer (`.exe`)

Download and run the official Windows desktop setup package:

<p align="center">
  <a href="https://github.com/abhishek01032007-pixel/Nexora/releases/download/v1.2.0/NexoraSkillsManager-Setup.exe">
    <img src="https://img.shields.io/badge/⬇️%20Download%20for%20Windows-Setup.exe%20(v1.2.0)-0078D4?style=for-the-badge&logo=windows&logoColor=white" height="46" alt="Download for Windows" />
  </a>
</p>

<p align="center">
  <b>Official Release v1.2.0</b> • Windows 10 / 11 (64-bit) • Standalone Installer (279 MB) • SHA-256 Verified
</p>

---

### Choice 2: One-Command Automated Setup

Open your terminal and paste one command to automatically download, verify, and initialize Nexora:

#### In Windows PowerShell (Non-Elevated):
```powershell
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
```

#### In Windows Command Prompt (CMD):
```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex"
```

> [!NOTE]
> **System Requirements & Prerequisites:**
> * **Operating System:** Exclusively for **Windows 10 & 11 (64-bit)**
> * **Runtime:** Windows PowerShell 5.1+ (Pre-installed on all Windows systems — **Zero Node.js or Python required**)
> * **Installation Scope:** 100% non-elevated per-user installation (`%LOCALAPPDATA%\NexoraSkillsManager`)
> * **Disk Footprint:** ~150 MB (installed runtime)
> * **Cryptographic Integrity:** Automatic SHA-256 checksum verification before extraction
> * **Environment:** Automatically adds `nexora` to your User PATH for terminal access

---

## ✨ Comprehensive Features Showcase

### 1. 📥 Skill Download & Vault Management
* **1-Click Skill Store Downloads:** Explore official, community-tested skills from **The Store** or import skills directly from remote Git URLs and local folders.
* **Personal Skill Vault ("My Downloads"):** Every downloaded skill is preserved in your offline vault with:
  * 📅 **Acquisition Timestamps:** Track exact installation dates and SemVer update history.
  * 🔒 **SHA-256 Cryptographic Checksums:** Guarantee tamper-proof files across workspaces.
  * 🏷️ **Rule & Capability Badges:** Inspect instructions, tool bindings, and prompt categories at a glance.
  * ⚖️ **Token Weight Tiers:** Categorized into *Lean*, *Standard*, or *Pro* context weights.
* **1-Click "Add to Workspace":** Deploy any skill directly from your vault into an active project workspace with instantaneous dashboard navigation.

### 2. 🎒 Bundle Creation & Collaboration Studio
* **Custom Bundle Authoring:** Group complementary skills into specialized engineering stacks (e.g., *Frontend Pro Stack*, *Security Hardened Pack*, *AI Agent Automation*).
* **Universal Bundle Editor:** Customize, edit, or fork both custom user bundles and official packs with persistent local overrides.
* **1-Click Bulk Workspace Deployment:** Deploy an entire curated or custom bundle into any target project workspace with a single click.
* **Pre-Configured Official Stacks:**
  * 🌐 **Full-Stack Web Pack:** React 19, Next.js, Node.js Backend, UI/UX Pro Max.
  * 🛡️ **Security Hardened Pack:** Backend Security Coder, OWASP Security Audit, Secrets Scanner.
  * 📱 **Mobile Multiplatform Pack:** Flutter Responsive, React Native, Swift iOS, Kotlin Android.
  * ☁️ **DevOps & Cloud Pack:** Docker, Kubernetes, Terraform, CI/CD, Performance Optimization.
  * 🏛️ **Architecture & Clean Code Pack:** Software Architecture, Code Review Excellence, Scientific Debugger.

### 3. 🤖 Complete 5-Platform AI Target Matrix
Write your instructions once in clean markdown; Nexora automatically transpiles and writes:
* **Google Antigravity:** `.agents/skills/<skill>/SKILL.md` with validated YAML frontmatter.
* **Cursor IDE:** `.cursor/rules/<skill>.mdc` with glob triggers and description headers.
* **GitHub Copilot:** `.github/copilot-instructions.md` with isolated delimiter fences.
* **Claude Code:** `.claude/skills/<skill>/SKILL.md` with clean tool capability bounds.
* **OpenAI Codex:** `.codex/skills/<skill>/SKILL.md` formatted for CLI runner execution.

### 4. 🛡️ Token Safety Governor & Context Meter
* **Prompt Weight Calculation:** Computes exact character, word, and token counts for every individual skill and bundle.
* **Context Headroom Safeguards:** Real-time visual meters warn you before a skill set bloats LLM context windows, preventing latency and runaway API costs.

### 5. 🔄 Batch Update Center & 100% Atomic Rollbacks
* **SemVer Drift Detection:** Automatically detects upstream releases and breaking changes across your installed skills.
* **3-Way Checksum Diff Viewer:** Side-by-side comparison of local customizations vs. upstream catalog releases.
* **100% Byte-for-Byte Atomic Rollback:** Backed by transactional journal snapshots. If an update breaks or is interrupted, Nexora restores the previous project state cleanly with zero file corruption.

### 6. 🎨 Multi-Theme Engine
* **System Theme (Auto-Sync):** Dynamically syncs with Windows dark/light OS appearance.
* **White Normal Mode (Daylight Clean):** High-contrast `#ffffff` foundation with deep slate typography and full WCAG AA contrast compliance.
* **Dark Mode (Charcoal Slate):** Developer-favorite `#0d1117` deep foundation with violet accents.
* **Zero-Flash Startup:** Fast rendering before first DOM paint.

### 7. 🩺 6-Category System Doctor
* Automated diagnostics across runtime files, platform adapters, environment variables, folder permissions, and bridge health with **1-click automated self-repair**.

### 8. 🔒 100% Sovereign Local Privacy
* **100% Local Processing:** Parsing, transpilation, and file compilation execute entirely on your machine.
* **Zero Telemetry:** Never transmits your project files, instructions, or codebase telemetry.
* **Zero Secret Storage:** Never stores API keys, credentials, or proprietary instructions in external clouds.

---

## 🚀 How to Use & Workflow Guide

### 🗺️ 4-Step User Journey Map

```text
┌──────────────────────────────┐       ┌──────────────────────────────┐       ┌──────────────────────────────┐       ┌──────────────────────────────┐
│  1. CONNECT WORKSPACE        │       │  2. SKILL STUDIO             │       │  3. SKILL WALLET             │       │  4. FLEET DEPLOY             │
├──────────────────────────────┤       ├──────────────────────────────┤       ├──────────────────────────────┤       ├──────────────────────────────┤
│ • Auto-detect tech stack     │ ────▶ │ • Browse 30+ Store skills    │ ────▶ │ • Organize Custom Bundles    │ ────▶ │ • 1-Click Multi-IDE Sync     │
│ • Initialize 5 AI adapters   │       │ • Author custom instructions │       │ • Real-time Token Governor   │       │ • Sub-second compilation     │
│ • Zero-config discovery      │       │ • Import external Git repos  │       │ • Context headroom check     │       │ • 100% Atomic journal commit │
└──────────────────────────────┘       └──────────────────────────────┘       └──────────────────────────────┘       └──────────────────────────────┘
```

| Step 1: Connect Workspace | Step 2: Skill Studio | Step 3: Skill Wallet | Step 4: Fleet Deploy |
| :--- | :--- | :--- | :--- |
| **📁 Project Ingestion**<br>• Select your project directory<br>• Auto-detect dependencies & frameworks<br>• Activate target IDE adapters (`.agents`, `.cursor`, `.github`, `.claude`, `.codex`) | **🏪 The Store & Studio**<br>• Explore 30+ verified official skills<br>• Author bespoke instructions in Markdown<br>• Direct-import from any remote Git repository | **🎒 Vault & Bundles**<br>• Manage offline downloads in your personal vault<br>• Assemble custom stacks (e.g. Frontend, Security)<br>• Dynamic Token Governor monitors context limits | **🚀 1-Click Multi-IDE Sync**<br>• Synchronize across all 5 AI targets simultaneously<br>• Sub-second local compilation<br>• 100% Byte-for-byte atomic rollback protection |

1. **Connect Workspace:** Select your project folder. Nexora automatically analyzes dependencies and activates target IDE adapters (`.agents/skills`, `.cursor/rules`, `.github`, `.claude`, `.codex`).
2. **Skill Studio:** Browse pre-verified skills in **The Store**, author custom instructions with the built-in editor, or import external Git repositories.
3. **Skill Wallet:** Organize downloaded skills into **Custom Bundles** and customize per-stack rule overrides while the Token Governor monitors context limits.
4. **Fleet Deploy:** Audit token budgets, then click **Apply** to synchronize your skills across all 5 AI targets in sub-second time.

---

### 🛠️ Custom Bundle Lifecycle Map

```text
┌──────────────────────────────┐       ┌──────────────────────────────┐       ┌──────────────────────────────┐       ┌──────────────────────────────┐
│  1. SELECT SKILLS            │       │  2. BUNDLE EDITOR            │       │  3. HEADROOM AUDIT           │       │  4. FLEET DEPLOY             │
├──────────────────────────────┤       ├──────────────────────────────┤       ├──────────────────────────────┤       ├──────────────────────────────┤
│ • Pick from Store or Vault   │ ────▶ │ • Name custom stack          │ ────▶ │ • Calculate token budget     │ ────▶ │ • 1-Click Apply to Project   │
│ • Curate complementary tools │       │ • Customize rule overrides   │       │ • Verify context headroom    │       │ • 5 IDE targets updated      │
│ • Fork official packs        │       │ • Persist bundle metadata    │       │ • Lock SemVer versions       │       │ • 100% Transactional safety │
└──────────────────────────────┘       └──────────────────────────────┘       └──────────────────────────────┘       └──────────────────────────────┘
```

| Stage 1: Select Skills | Stage 2: Bundle Editor | Stage 3: Headroom Audit | Stage 4: 1-Click Fleet Deploy |
| :--- | :--- | :--- | :--- |
| **🎒 Skill Selection**<br>• Browse downloaded skills in **My Downloads**<br>• Pick complementary tools from **The Store**<br>• Start from scratch or fork official bundles | **⚙️ Customization Studio**<br>• Set stack name (e.g. *Full-Stack Web Suite*)<br>• Define stack-specific rule overrides<br>• Persist custom bundle metadata locally | **🛡️ Token Governor Audit**<br>• Real-time cumulative token calculation<br>• Headroom tier alerts (*Lean*, *Standard*, *Pro*)<br>• Prevent LLM prompt overflow & latency | **🚀 Transactional Commit**<br>• Click **Apply Bundle to Workspace**<br>• Simultaneous compilation into all 5 IDE targets<br>• Snapshot created for instant rollback |

1. **Open Skill Wallet:** Click **Skill Wallet** in the primary navigation sidebar.
2. **Click "New Custom Bundle":** Enter a descriptive name (e.g., `Full-Stack Web Suite` or `Security Hardened Pack`).
3. **Select Included Skills:** Pick desired skills from **My Downloads** or **The Store**. The Token Governor dynamically calculates cumulative weight.
4. **Save & Set Overrides:** Save the bundle locally. You can customize per-bundle instructions or fork pre-configured official bundles.
5. **1-Click Apply to Workspace:** Click **`Apply Bundle to Workspace`** to compile and write the entire stack across your project in one transactional commit.

---

## 📦 Official Skill Catalog Summary

Nexora connects to an expanding library of **30+ official pre-verified skills** curated across 6 core engineering pillars:

| Category | Coverage Scope |
| :--- | :--- |
| 🌐 **Frontend & UI/UX** | React 19, Next.js 15, Design Systems, Mobile (Flutter, React Native, Swift iOS, Kotlin Android) |
| ⚙️ **Backend & Microservices** | REST/gRPC API Architecture, Node.js, FastAPI, Go 1.21+, Rust Systems Programming |
| 🛡️ **Security & Auditing** | OWASP Top 10 Scanning, Secrets Scanner, Auth Hardening, DevSecOps |
| 🧪 **Quality Assurance (QA)** | Unit Testing, Widget Testing, Regression Suites, Scientific Debugger |
| 🗄️ **Database & Architecture** | PostgreSQL Optimization, Supabase RLS, Clean Architecture, Domain-Driven Design |
| ☁️ **DevOps & Cloud** | Docker, Kubernetes, CI/CD Workflows, Cloud Infrastructure, Web Performance Optimization |

> The official catalog is automatically synchronized directly with our live catalog index ([`catalog/skills-index.json`](catalog/skills-index.json)) with dual-tier offline cache fallback.

---

## 💡 Key Benefits of Using Nexora Skills Manager

* ⏱️ **90% Time Saved on Agent Configuration:** Stop manually configuring `.cursorrules`, `copilot-instructions`, and `SKILL.md` files across different projects.
* 🛡️ **Zero Broken Projects (Atomic Rollbacks):** Never suffer corrupted rules or syntax errors thanks to byte-for-byte journal snapshots.
* 💰 **Token Cost & Context Bloat Protection:** Eliminate prompt overhead and prevent LLMs from wasting money on redundant or oversized instruction sets.
* 🔒 **Complete Privacy & Air-Gapped Operation:** Work securely in enterprise and offline environments without cloud dependency.
* 👥 **Instant Team Onboarding:** Standardize engineering rules across team members by committing versioned skill bundles.

---

## 📊 5-Platform Benchmark Trajectory Graph

<p align="center">
  <a href="https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/assets/benchmark_trajectory.png" target="_blank" title="Click to view full-resolution benchmark trajectory graph">
    <img src="assets/benchmark_trajectory.png" alt="5-Platform Multi-IDE Setup & Maintenance Trajectory" width="950" />
  </a>
</p>

### 5-Platform Quantitative Metric Matrix

| Workflow Dimension | ❌ Without Nexora Skills Manager | ✅ With Nexora Skills Manager | Improvement Factor |
| :--- | :--- | :--- | :---: |
| **Google Antigravity Setup** | Manual directory creation & YAML frontmatter typing | **1-click automatic `.agents/skills` compilation** | **30x Faster** ⚡ |
| **Cursor IDE Rule Sync** | Manual `.cursor/rules/*.mdc` writing & glob matching | **Automated `.mdc` generation with valid globs** | **100% Automated** 🤖 |
| **GitHub Copilot Formatting**| Manual fenced blocks in `.github/copilot-instructions.md` | **Isolated delimiter fences preserving env variables** | **Zero Syntax Errors** 🎯 |
| **Claude Code & Codex** | Manual JSON / Markdown translation for CLI tools | **Native directory structure synced instantaneously** | **Instant Multi-Target** 🚀 |
| **Total Fleet Sync Time** | **~60 Minutes (Full hour lost to manual friction & drift)** | **< 1 Minute (Instant 1-click sync to all 5 targets)** | **60x Time Saved** ⏱️ |
| **Configuration Drift** | High (Rules diverge between Cursor and Copilot within days) | **Zero (Single source of truth via unified `SKILL.md`)** | **100% Consistency** 🔒 |
| **Token Cost & Latency** | Unmonitored (Heavy prompts cause context overflow & latency) | **Active Token Governor with tier badges & headroom alerts** | **65% Cost Reduction** 💰 |
| **Rollback & Error Recovery** | None (Overwritten or broken files must be manually repaired) | **100% Atomic Journal Snapshot (byte-for-byte undo)** | **Zero Broken States** 🛡️ |

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
