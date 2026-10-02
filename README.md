# Nexora Skills Manager

<p align="center">
  <b>The Native Windows Desktop Control Plane for AI Agent Skills, Rules & Multi-IDE Fleet Synchronization.</b>
</p>

<p align="center">
  <a href="https://github.com/abhishek01032007-pixel/Nexora/releases/latest"><img src="https://img.shields.io/badge/Release-v1.2.0%20Latest-0A84FF?style=for-the-badge&logo=github&logoColor=white" alt="Latest Release" /></a>
  <a href="#-system-requirements--prerequisites"><img src="https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011%20x64-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Platform Windows" /></a>
  <a href="#-option-1-one-command-automated-setup"><img src="https://img.shields.io/badge/Runtime-PowerShell%205.1%2B%20Native-5391FE?style=for-the-badge&logo=powershell&logoColor=white" alt="PowerShell Native" /></a>
  <a href="#-enterprise-safety--atomic-rollback-guarantee"><img src="https://img.shields.io/badge/Safety-100%25%20Atomic%20Rollback-10B981?style=for-the-badge&logo=shield&logoColor=white" alt="Atomic Rollback" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-F59E0B?style=for-the-badge" alt="License MIT" /></a>
</p>

---

## 💡 What is Nexora Skills Manager?

**Nexora Skills Manager** is a dedicated native Windows desktop application that unifies and controls AI agent skills, rules, and prompts across your development workspace.

Modern AI engineering is fragmented across multiple competing configuration formats:
* **Google Antigravity** requires `.agents/skills/<skill>/SKILL.md` with YAML metadata
* **Cursor IDE** compiles `.cursor/rules/<skill>.mdc` instruction files
* **GitHub Copilot** relies on fenced sections in `.github/copilot-instructions.md`
* **Claude Code** manages `.claude/skills/<skill>/SKILL.md`
* **OpenAI Codex** executes `.codex/skills/<skill>/SKILL.md`

Nexora eliminates configuration drift and manual copy-pasting by providing a **single, local command center** to discover, download, bundle, test, and synchronize agent skills across all 5 platforms simultaneously.

---

## 📥 Download & Installation Options

Choose your preferred way to install and run Nexora Skills Manager:

| Distribution Channel | Method / Command | Description |
| :--- | :--- | :--- |
| 💾 **Graphical Installer (`.exe`)** | [**Download Setup.exe (v1.2.0)**](https://github.com/abhishek01032007-pixel/Nexora/releases/download/v1.2.0/NexoraSkillsManager-Setup.exe) | Complete graphical setup with Start Menu shortcuts & automatic updates |
| 📦 **Windows Package Manager** | `winget install Nexora.NexoraSkillsManager` | Automated silent installation via native Windows Package Manager |
| ⚡ **One-Command Web Setup** | `irm https://raw.githubusercontent.com/.../setup.ps1 \| iex` | Fast, non-elevated installation to `%LOCALAPPDATA%\NexoraSkillsManager` |
| 📁 **Portable ZIP (x64)** | [**Download Portable ZIP**](https://github.com/abhishek01032007-pixel/Nexora/releases/download/v1.2.0/NexoraSkillsManager-1.2.0-win-x64.zip) | Zero-install standalone archive. Extract anywhere and launch immediately |

---

## ⚡ Quickstart Setup Commands

### Option 1: One-Command Automated Setup
Run in **Windows PowerShell** (non-elevated):
```powershell
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
```

Or run in **Windows Command Prompt (CMD)**:
```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex"
```

### Option 2: WinGet Terminal Install
```powershell
winget install Nexora.NexoraSkillsManager
```

> [!NOTE]
> #### 📌 System Requirements & Prerequisites
> * **Operating System:** Windows 10 & 11 (64-bit)
> * **Runtime:** Windows PowerShell 5.1+ (Native Windows built-in — **No Node.js or Python installations required on user machines**)
> * **Installation Scope:** 100% non-elevated per-user installation (`%LOCALAPPDATA%\NexoraSkillsManager`)
> * **Disk Footprint:** ~150 MB
> * **Cryptographic Integrity:** Strict SHA-256 hash verification before package extraction
> * **Environment:** Automatically configures `nexora` in your User PATH

---

## 🎨 UI/UX & Core Features Showcase

```mermaid
flowchart TD
    classDef studio fill:#1e1b4b,stroke:#818cf8,stroke-width:2px,color:#fff;
    classDef wallet fill:#064e3b,stroke:#34d399,stroke-width:2px,color:#fff;
    classDef gov fill:#451a03,stroke:#fbbf24,stroke-width:2px,color:#fff;
    classDef sync fill:#172554,stroke:#60a5fa,stroke-width:2px,color:#fff;

    subgraph Studio_Layer ["🎨 1. SKILL STUDIO — Discovery & Authoring"]
        Store["The Store\n(30+ Pre-Verified Skills)"]:::studio
        Author["Markdown & YAML IDE\n(Interactive Live Editor)"]:::studio
        Importer["GitHub & Folder Importer\n(Remote Git URL Scanner)"]:::studio
    end

    subgraph Wallet_Layer ["👛 2. SKILL WALLET — Inventory & Bundling"]
        Downloads["My Downloads\n(Dates • SHA-256 • Token Tiers)"]:::wallet
        BundleEditor["Universal Bundle Editor\n(Curated & Custom Packs)"]:::wallet
        MapAction["1-Click Workspace Mapping\n(Deploy Directly to Dashboard)"]:::wallet
    end

    subgraph Governor_Layer ["🛡️ 3. TOKEN GOVERNOR — Context Safety"]
        Meter["Token Safety Meter\n(Prompt Bloat Calculation)"]:::gov
        Budget["Headroom Safeguards\n(Overflow Prevention)"]:::gov
    end

    subgraph Fleet_Layer ["🎯 4. MULTI-TARGET AI SYNC"]
        Targets["Antigravity • Cursor • Copilot • Claude • Codex"]:::sync
    end

    Studio_Layer --> Wallet_Layer
    Wallet_Layer --> Governor_Layer
    Governor_Layer --> Fleet_Layer
```

### 1. 📥 Skill Download & Vault Management
* **1-Click Downloads:** Download official verified skills from **The Store** or import remote skills directly from GitHub repositories.
* **Skill Vault ("My Downloads"):** Every downloaded skill is indexed in your local vault with:
  * 📅 **Acquisition Timestamp:** Track exact installation dates and SemVer history.
  * 🔒 **SHA-256 Cryptographic Checksum:** Guarantees tamper-proof skill files.
  * 🏷️ **Rule & Capability Badges:** See prompt instructions, tool dependencies, and category tags at a glance.
  * ⚖️ **Token Weight Tier:** Classified into *Lean*, *Standard*, or *Pro* context weights.
* **1-Click "Add to Workspace":** Deploy any downloaded skill directly from your vault into an active workspace with instantaneous dashboard navigation.

---

### 2. 📦 Bundle Creation & Collaboration Features

Nexora allows developers to group skills into cohesive engineering stacks, making team onboarding and multi-project setup seamless:

```mermaid
flowchart LR
    classDef input fill:#111827,stroke:#6366f1,stroke-width:2px,color:#fff;
    classDef editor fill:#0f766e,stroke:#2dd4bf,stroke-width:2px,color:#fff;
    classDef bundle fill:#701a75,stroke:#f472b6,stroke-width:2px,color:#fff;
    classDef target fill:#1e3a8a,stroke:#38bdf8,stroke-width:2px,color:#fff;

    A["🎒 Select Skills from\nStore or Downloads"]:::input --> B["⚙️ Open Bundle Editor\n(Set Name, Tags & Scope)"]:::editor
    B --> C["📦 Saved Bundle Pack\n(User Custom or Official)"]:::bundle
    C --> D["🚀 1-Click Fleet Deploy\n(Write to All Workspaces)"]:::target
```

#### 🛠️ How to Create & Deploy a Custom Bundle:
1. **Open Skill Wallet:** Click on **Skill Wallet** in the primary navigation sidebar.
2. **Click "New Custom Bundle":** Enter your bundle title (e.g., `Full-Stack Web Suite` or `Mobile Security Stack`).
3. **Select Included Skills:** Pick desired skills from **My Downloads** or **The Store**. The real-time token governor calculates the cumulative context weight.
4. **Save & Customize:** Save the bundle locally. You can customize rule overrides, add notes, or fork pre-configured official bundles.
5. **1-Click Apply to Workspace:** Click **`Apply Bundle to Workspace`** to deploy all bundled skills across your project workspace in one transactional write.

#### 🛡️ Pre-Configured Official Bundles:
* 🌐 **Full-Stack Web Pack:** React 19, Next.js, Node.js Backend, UI/UX Pro Max.
* 🛡️ **Security Hardened Pack:** Backend Security Coder, OWASP Security Audit, Secrets Scanner.
* 📱 **Mobile Multiplatform Pack:** Flutter Responsive, React Native, Swift iOS, Kotlin Android.
* ☁️ **DevOps & Cloud Pack:** Docker, Kubernetes, Terraform, CI/CD, Performance Optimization.
* 🏛️ **Architecture & Clean Code Pack:** Software Architecture, Code Review Excellence, Debugger.

---

### 3. 🤖 Complete 5-Platform AI Target Matrix
Write your rules once in standard `SKILL.md` format; Nexora compiles and generates target instructions simultaneously:

| AI Agent Target | Generated File Location | Format & Capabilities |
| :--- | :--- | :--- |
| **Google Antigravity** | `.agents/skills/<skill>/SKILL.md` | Native Antigravity skill structure with validated YAML frontmatter |
| **Cursor IDE** | `.cursor/rules/<skill>.mdc` | Modular Cursor rule files with glob pattern matching |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Isolated delimiter fences preserving custom environment variables |
| **Claude Code** | `.claude/skills/<skill>/SKILL.md` | Anthropic native multi-skill directory structure |
| **OpenAI Codex** | `.codex/skills/<skill>/SKILL.md` | Execution instruction sets with token-lean framing |

---

### 4. 🛡️ Token Safety Governor & Context Meter
* **Prompt Weight Calculation:** Automatically analyzes character, word, and token counts for each skill.
* **Context Budget Safeguard:** Visual meter alerts you before a skill set bloats agent context windows, preventing latency and runaway LLM costs.

---

### 5. 🔄 Batch Update Center & Atomic Rollbacks
* **SemVer Drift Detection:** Automatically detects upstream updates across your installed skills.
* **3-Way Checksum Diff Viewer:** Side-by-side inspection of local modifications vs. upstream releases.
* **100% Byte-for-Byte Atomic Rollback:** Backed by transactional journal snapshots. If an update fails, changes are reverted cleanly with zero project corruption.

---

### 6. 🎨 Multi-Theme Engine
* **System Theme (Auto-Sync):** Dynamically follows Windows light/dark system mode.
* **White Normal Mode (Daylight Clean):** High-contrast `#ffffff` foundation with deep slate typography and full WCAG AA contrast compliance.
* **Dark Mode (Charcoal Slate):** Developer-favorite `#13131b` deep foundation with violet accents.
* **Zero-Flash Startup:** Fast rendering before first DOM paint.

---

### 7. 🩺 6-Category System Doctor
* Real-time diagnostics across runtime files, platform adapters, environment variables, folder permissions, and bridge health with **1-click automated repair**.

---

### 8. 🔒 100% Local-First Sovereignty
* **100% Local Processing:** Scanning, parsing, and compilation execute entirely on your machine.
* **Zero Telemetry:** Never transmits your project files, code, or personal data.
* **Zero Secret Storage:** Never stores API keys, access tokens, or credentials.

---

## 🚀 How to Use (4-Step Workflow)

```mermaid
flowchart LR
    classDef step fill:#1e293b,stroke:#38bdf8,stroke-width:2px,color:#fff;

    S1["1️⃣ Connect Workspace\n(Auto-detects tech stack)"]:::step --> S2["2️⃣ Skill Studio\n(Browse store or author)"]:::step
    S2 --> S3["3️⃣ Skill Wallet\n(Manage vault & bundles)"]:::step
    S3 --> S4["4️⃣ Audit & Deploy\n(Token check & fleet sync)"]:::step
```

1. **Connect Workspace:** Select your project folder. Nexora automatically analyzes dependencies and configures active AI agent targets.
2. **Explore Skill Studio:** Browse verified skills in **The Store**, author custom instructions in the built-in **Markdown IDE**, or import from external Git repositories.
3. **Manage Skill Wallet:** Review **My Downloads** with timestamps and hashes. Create custom bundles or fork official packs, then map them directly to workspaces.
4. **Audit & Fleet Sync:** Verify token budgets in the **Token Governor**, then deploy atomically across all 5 AI agent targets in parallel.

---

## 📦 Official Skill Catalog

Nexora ships with an expanding catalog of **30+ official pre-verified skills** curated across 6 core software engineering domains:

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

```mermaid
flowchart TD
    classDef ui fill:#0f172a,stroke:#38bdf8,stroke-width:2px,color:#fff;
    classDef engine fill:#0f172a,stroke:#4ade80,stroke-width:2px,color:#fff;
    classDef target fill:#0f172a,stroke:#c084fc,stroke-width:2px,color:#fff;

    subgraph UI_Layer ["🖥️ Desktop UI Control Plane"]
        Screens["20 Active UI Screens\n(Studio, Wallet, Token Governor, Doctor)"]:::ui
        Bridge["IPC Bridge Dispatcher\n(61 Whitelisted Safe Ops)"]:::ui
    end

    subgraph Safety_Engine ["🛡️ Nexora Execution & Safety Engine"]
        Validator["SHA-256 & Schema Validator\n(Cryptographic Integrity)"]:::engine
        Journal["Atomic Journal Snapshot\n(Byte-for-Byte Rollback)"]:::engine
        Cache["Dual-Tier Offline Cache\n(Instant Air-Gapped Fallback)"]:::engine
    end

    subgraph IDE_Targets ["🎯 Multi-Target IDE Fleet"]
        AG["Google Antigravity\n.agents/skills"]:::target
        CR["Cursor IDE\n.cursor/rules"]:::target
        CP["GitHub Copilot\n.github/copilot-instructions"]:::target
        CL["Claude Code\n.claude/skills"]:::target
        CX["OpenAI Codex\n.codex/skills"]:::target
    end

    Screens --> Bridge
    Bridge --> Validator
    Validator --> Journal
    Journal --> Cache
    Cache --> AG
    Cache --> CR
    Cache --> CP
    Cache --> CL
    Cache --> CX
```

### 🛡️ Enterprise Safety & Atomic Rollback Guarantee
* **100% Test Suite Pass Rate:** All 102 test suites pass cleanly across backend cmdlets, desktop bridge, and user interface.
* **100% Byte-for-Byte Atomic Rollback:** If an installation is interrupted or fails, the engine restores the previous project state byte-for-byte.
* **Zero `Invoke-Expression`:** The IPC dispatcher strictly matches incoming requests against an allowlist of 61 predefined operations to prevent arbitrary command execution.
* **Offline-First Resilience:** If GitHub is unreachable, Nexora transparently serves the local offline cache without blocking developer workflows.

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
