<p align="center">
  <a href="https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/assets/branding/NexoraSkillsManager-1024.png" target="_blank" title="Nexora Skills Manager Logo">
    <img src="assets/branding/NexoraSkillsManager-1024.png" width="120" height="120" alt="Nexora Skills Manager Logo" style="border-radius: 26px; box-shadow: 0 10px 30px rgba(56, 189, 248, 0.3);" />
  </a>
</p>

<h1 align="center">NEXORA SKILLS MANAGER</h1>

<p align="center">
  <b>The Native Windows Desktop Control Plane for AI Agent Skills, Rules & Multi-IDE Fleet Synchronization.</b><br>
  <i>Write once. Transpile instantly. Synchronize across Google Antigravity, Cursor IDE, GitHub Copilot, Claude Code, and OpenAI Codex.</i>
</p>

<p align="center">
  <a href="#-installation-options"><img src="https://img.shields.io/badge/Download-Windows%20x64-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Download for Windows x64" /></a>
  <a href="https://github.com/abhishek01032007-pixel/Nexora/releases/latest"><img src="https://img.shields.io/badge/Release-v1.2.0%20Latest-0A84FF?style=for-the-badge&logo=github&logoColor=white" alt="Latest Release" /></a>
  <a href="#option-2-one-command-automated-setup"><img src="https://img.shields.io/badge/Runtime-PowerShell%205.1%2B%20Native-5391FE?style=for-the-badge&logo=powershell&logoColor=white" alt="PowerShell Native" /></a>
  <a href="#-100-byte-for-byte-atomic-rollback-engine"><img src="https://img.shields.io/badge/Safety-100%25%20Atomic%20Rollback-10B981?style=for-the-badge&logo=shield&logoColor=white" alt="Atomic Rollback" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-F59E0B?style=for-the-badge" alt="License MIT" /></a>
</p>

---

## 💡 What is Nexora Skills Manager?

Modern AI coding is fragmented. You build custom workflows, rules, and skills, but they get trapped inside scattered configs—`.cursor/rules`, `.agents/skills`, `.agents/rules`, `.github/copilot-instructions`, or private folders. Every time someone switches between **Google Antigravity, Cursor, Claude Code, Windsurf, or GitHub Copilot**, skills fall out of sync, rules drift, and developer setups break.

**Nexora Skills Manager is the unified desktop control center for AI agent skills & architectural rules.**

Import skills and rules directly from **GitHub repositories, Git links, ZIP packages, or local collections**, and immediately deploy them across all your projects and AI tools from one central place.

| AI Platform | Supported Native Target | Schema & Format |
| :--- | :--- | :--- |
| **Google Antigravity** | `.agents/skills/<skill>/SKILL.md` & `.agents/rules/` | YAML frontmatter + Markdown |
| **Cursor IDE** | `.cursor/rules/<skill>.mdc` | MDC metadata with glob triggers |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Delimited markdown sections |
| **Claude Code** | `CLAUDE.md` & `.claude/skills/` | Directives & isolated skill directories |
| **Windsurf / OpenAI Codex** | `.windsurf/rules/` & `.codex/skills/` | Tool definitions & native guidelines |

### ⚡ Key Capabilities
* **Direct Import from GitHub & Git Repositories:** Grab skills directly by pasting any GitHub repository link or downloading curated release packages. Nexora automatically parses manifests and enables granular single-skill extraction.
* **Universal Multi-Platform Deployment:** Deploy the same skill or rule across **Google Antigravity, Cursor, Windsurf, Claude Code, and GitHub Copilot** at the same time with zero manual copy-pasting.
* **Single Dashboard for All Workspaces:** Track all your active repositories from one clean desktop teleboard. Audit active skills, catch version drifts, and enforce architectural consistency across your team.
* **Safe Deployments with One-Click Rollbacks:** Every deployment automatically takes an isolated safety snapshot beforehand. If a skill doesn't perform as expected, roll back instantly to your previous clean state.
* **Smart Technology & Stack Detection:** Automatically analyzes your project (Flutter, React, Next.js, Node.js, Python, Go) and recommends prioritized skills built specifically for your architecture.
* **Clean OS Performance & Health Doctor:** Built-in diagnostics inspect your environment, prevent file conflicts, purge dead locks, and keep your system fast and error-free.

---

## ⚡ Installation Options

> **Exclusively Engineered for Windows:** Built specifically for **Windows 10 & 11 (64-bit)**, leveraging native PowerShell runtime cmdlets. **No Node.js or Python required.**

### Option 1: Standalone Graphical Installer (`.exe`)

<p align="center">
  <a href="https://github.com/abhishek01032007-pixel/Nexora/releases/download/v1.2.0/NexoraSkillsManager-Setup.exe">
    <img src="https://img.shields.io/badge/⬇️%20Download%20for%20Windows-Setup.exe%20(v1.2.0)-0078D4?style=for-the-badge&logo=windows&logoColor=white" height="60" alt="Download for Windows" />
  </a>
</p>

<p align="center">
  <b>Official Release v1.2.0</b> • Windows 10 / 11 (64-bit) • Standalone Installer (279 MB) • SHA-256 Verified
</p>

---

### Option 2: One-Command Automated Setup

#### In Windows PowerShell (Non-Elevated):
```powershell
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora-Skills-Manager/main/setup.ps1 | iex
```

#### In Windows Command Prompt (CMD):
```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora-Skills-Manager/main/setup.ps1 | iex"
```

> [!NOTE]
> **System Requirements & Security:**
> * **OS:** Windows 10 & 11 (Windows x64)
> * **Runtime:** PowerShell 5.1+ (pre-installed — zero Node.js or Python)
> * **Scope:** Per-user installation (`%LOCALAPPDATA%\NexoraSkillsManager`) — no admin required
> * **Privacy:** Nexora is 100% local and does not transmit project contents or telemetry.
> * **SmartScreen:** If Windows SmartScreen displays a warning for unsigned community releases, select "More info" → "Run anyway".
> * **Disk:** ~150 MB • **Integrity:** SHA-256 verified • **PATH:** Auto-configured

---

## 🚀 How It Works

Nexora operates as a **local-first control plane** for AI coding rules and skills. Instead of manually copying instruction files into scattered IDE folders, Nexora coordinates your agent configurations through an automated 4-stage pipeline:

```
[ Project Workspace ] ──► [ Tech Stack & Mode Engine ] ──► [ Token Governor ] ──► [ Multi-Platform Fleet Deployer ]
```

### 1. Ingestion & Automated Stack Detection
* **Local Inspection:** When you select any project folder, Nexora inspects project manifests (`package.json`, `pubspec.yaml`, `pyproject.toml`, `go.mod`, `Cargo.toml`).
* **Framework Identification:** It identifies your frontend, backend, database, and testing tools without uploading your code anywhere.
* **Target Adapter Resolution:** It scans which AI assistants you use and locates their configuration targets (`.agents/skills`, `.cursor/rules`, `.github/copilot-instructions.md`, `.claude/skills`, `.codex/skills`).

### 2. Markdown-to-Native Transpilation Engine
* Write once in clean Markdown with standard YAML headers.
* Nexora automatically transpiles the rule into the native syntax each AI tool expects:
  - **Google Antigravity**: Parses frontmatter into verified `.agents/skills/<name>/SKILL.md`.
  - **Cursor IDE**: Generates `.cursor/rules/<name>.mdc` with glob patterns and `alwaysApply` flags.
  - **GitHub Copilot**: Injects isolated fenced markdown blocks into `.github/copilot-instructions.md`.
  - **Claude Code & Codex**: Formats directories with tool bindings into `.claude/skills/` and `.codex/skills/`.

### 3. Context & Token Safety Governor
* Before pushing rules to your editors, Nexora calculates the cumulative token count of your selected skills.
* Prevents prompt bloat by classifying stacks into real-time tiers:
  - 🟢 **Lean (< 1k tokens)**: Zero latency impact.
  - 🔵 **Standard (1k–4k tokens)**: Balanced production depth.
  - 🟡 **Pro (4k–8k tokens)**: Detailed rules with rich code patterns.
  - 🔴 **Overflow (> 8k tokens)**: Visual warning to prune unnecessary skills.

### 4. 100% Byte-for-Byte Atomic Rollback Protection
* Before making any workspace changes, Nexora takes a pre-flight snapshot in `.nexora/snapshots/<timestamp>/`.
* If a deployment is interrupted or you want to undo changes, the rollback engine restores your original files byte-for-byte in less than a second.

---

## 🛠️ How to Use

Here is how you use Nexora for everyday engineering tasks:

---

### 📱 Initializing a Project with Stack-Aware Skills *(Example: Flutter Mobile App)*

When starting work on an application (e.g., a Flutter app with a Supabase backend):

1. **Connect the Project**:
   - Open Nexora and click **`Select Workspace`** → choose your project folder (e.g., `C:\Projects\ShopMobile`).
   - Nexora instantly detects `Flutter 3.x`, `Dart`, and `Supabase`, illuminating active IDE badges (Antigravity and Cursor).
2. **Set Your Working Mode**:
   - Click the **Mobile** working mode pill.
   - Nexora re-ranks the store to highlight relevant mobile rules:
     - `flutter-build-responsive-layout`
     - `flutter-apply-architecture-best-practices`
     - `dart-add-unit-test`
3. **Deploy with 1 Click**:
   - Click **`Apply to Workspace`**.
   - In ~150ms, Nexora compiles and writes rules into both `.agents/skills/` (for Antigravity) and `.cursor/rules/` (for Cursor).

---

### ⚡ Custom Stack Bundling with Live Token Budgeting *(Example: FastAPI Backend)*

When building a specialized backend stack with strict token limits:

1. **Assemble Your Stack**:
   - Open **Skill Wallet** → click **`+ New Custom Bundle`**.
   - Name your bundle: `Fintech Secure FastAPI`.
   - Select complementary skills:
     - `python-fastapi-developer` (FastAPI + Pydantic v2 patterns)
     - `postgresql-optimization` (Indexing, JSONB, query efficiency)
     - `security_audit` (OWASP Top 10 prevention)
2. **Audit the Token Budget**:
   - The **Token Governor Meter** displays: `Total: 2,840 Tokens` with a 🔵 **Standard Tier** badge.
   - You can see that your AI models retain ample context headroom for your actual codebase files.
3. **Save and Apply**:
   - Click **Save Bundle**. This stack is saved to your local vault and can be applied to any backend project with one click.

---

### 🌐 Direct Community Skill Import from GitHub

When your team or community shares custom rules in a Git repository:

1. **Import via GitHub URL**:
   - Click **`Import from GitHub`** in the top navigation bar.
   - Paste the repository link: `https://github.com/my-org/core-agent-skills`.
2. **Preview & Validate**:
   - Nexora automatically inspects the repository's manifests and displays a checklist of discovered skills.
   - Select the rules you want to import (e.g., `company-api-standards`, `git-commit-convention`).
3. **Activate in Your Project**:
   - Click **`Import to Vault`**. The skills are validated, saved locally, and immediately available for deployment across all your projects.

---

### 🔄 Upstream Version Updates & 1-Click Rollback

1. **Check for Upstream Enhancements**:
   - Open the **Update Center**. Nexora compares your local skill versions against the latest upstream GitHub release.
   - Click **`Inspect Diff`** to review changes side-by-side (Your Local Edits ↔ Upstream Update).
2. **Instant Emergency Rollback**:
   - If an updated skill causes unexpected behavior in your IDE, open the **Dashboard** → **Activity Log**.
   - Click **`Rollback`**. Nexora immediately restores your previous rule configurations without touching your project source code.

---

### 🩺 System Diagnostics & Self-Repair

1. Run the health check by clicking **`System Health`** in the sidebar (or typing `nexora doctor` in PowerShell/CMD).
2. Nexora validates 6 diagnostic areas:
   - `Metadata Integrity` • `Engine Entrypoints` • `Skill Catalog Database` • `CLI Shims & User PATH` • `Legacy Bridge` • `Platform Adapters`
3. Click **`Auto-Repair`** to fix broken shims or purge dead cache locks with zero manual troubleshooting.

---

## 🤖 AI Platform Target Matrix

Write instructions once in clean Markdown; Nexora transpiles and writes automatically into each native platform format:

| Target AI Assistant | Config Output Path | Native Format & Features |
| :--- | :--- | :--- |
| **Google Antigravity** | `.agents/skills/<skill>/SKILL.md` | Standard YAML frontmatter + structured skill markdown instructions |
| **Cursor IDE** | `.cursor/rules/<skill>.mdc` | MDC metadata headers with targeted file glob triggers and `alwaysApply` rules |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Delimiter-scoped markdown fences preserving project-wide instruction boundaries |
| **Anthropic Claude Code** | `.claude/skills/<skill>/SKILL.md` & `CLAUDE.md` | Directives and isolated skill directories with tool capability bounds |
| **OpenAI Codex** | `.codex/skills/<skill>/SKILL.md` | Native assistant agent format with tool schemas and CLI runners |

---

## 🛡️ Token Safety Governor

AI models have strict context window envelopes. Nexora's **Token Governor** enforces real-time model safety, budget tuning, and prompt deduplication before rule deployment:

### Quick Presets & Budget Configuration
* 🌱 **Eco Preset (`4,000 tokens`)**: Minimalist rules with minimal prompt footprint; maximum conversational reasoning headroom.
* ⚡ **Balanced Preset (`8,000 tokens` — Recommended)**: Optimal production balance; rich architectural guidelines without bloat.
* 🚀 **Pro Preset (`16,000 tokens`)**: In-depth multi-file coding standards with complete implementation examples.
* 🔥 **Max Preset (`32,000 tokens`)**: Comprehensive architecture rules for massive multi-tier monorepos.
* 🎚️ **Custom Slider (`2,000 – 64,000 tokens`)**: Fine-grained project or fleet-wide budget tuning.

### Real-Time Context Envelope Monitoring
| Headroom Level | Context Load | Status Badge | Guidance |
| :--- | :---: | :---: | :--- |
| **Optimal Headroom** | `< 5%` load | 🟢 `badge-success` | Full context window available for deep reasoning and multi-file code synthesis |
| **Moderate Working Load** | `5% – 15%` load | 🟡 `badge-warning` | Standard footprint. Ample room remains for typical coding iterations |
| **Heavy Token Load** | `> 15%` load | 🔴 `badge-danger` | May compress model reasoning window. Token Optimizer auto-prunes redundant rules |

### 3 Core Optimization Pillars (Saving up to 70.5% Overhead)
1. **Surgical Skill Injection**: Strips verbose commentary and injects only functional constraints.
2. **Delimiter-Scoped Fencing**: Keeps rule boundaries isolated so models never re-read unrelated guidelines.
3. **Cross-Skill Deduplication**: Identifies overlapping rules between active skills and deduplicates them in memory.

### Supported Model Context Envelopes
* **Google Gemini (Antigravity)**: `2,000,000 tokens` (Ultra Long Context)
* **Anthropic Claude (Claude Code)**: `200,000 tokens` (High Precision Reasoning)
* **OpenAI GPT-4o & Codex**: `128,000 – 200,000 tokens` (Fast Execution Envelope)
* **Local & Open-Source (Ollama / Llama-3)**: `32,000 – 64,000 tokens` (Critical Memory Headroom)

---

## 🔒 Security, Privacy & Local-First Architecture

Nexora is designed from the ground up to be safe for sensitive corporate, proprietary, and private codebases:

* 🛡️ **Air-Gapped & Zero Telemetry**: Operates 100% locally on your machine. Zero analytics, zero cloud pings, zero remote logging.
* 📦 **Zero Source Code Ingestion**: Analyzes manifest files locally (`package.json`, `pubspec.yaml`, etc.) to detect frameworks. Your source code never leaves your drive.
* ⚙️ **Sandboxed Process Isolation**: Electron renderer runs with `contextIsolation: true`, `nodeIntegration: false`, and `sandbox: true`. All backend execution passes through a hardened local JSON-RPC stdio channel.
* 🔑 **Zero Elevation Required**: Installs and executes purely within User space (`%LOCALAPPDATA%\NexoraSkillsManager`). No Administrator or UAC prompts needed.
* 🔐 **Cryptographic Verification**: Every skill update, catalog package, and release bundle is verified against authoritative SHA-256 checksums before installation.

---

## 💻 Terminal CLI Reference

The `nexora` CLI is natively integrated into your Windows environment for rapid command-line automation:

| Command | Action Performed |
| :--- | :--- |
| `nexora start` | Launches the desktop graphical control plane |
| `nexora scan [path]` | Analyzes a project folder and detects active tech stack & IDE adapters |
| `nexora doctor [--repair]` | Executes diagnostic checks and optionally auto-repairs shims and caches |
| `nexora skills list` | Lists all active and cached skills |
| `nexora skills search <query>` | Searches the catalog by framework, language, or tool |
| `nexora skills install <id> [--project <path>]` | Installs and compiles a skill into a target project |
| `nexora rollback [--steps <n>]` | Reverts the last deployment using atomic pre-flight snapshots |
| `nexora update [--check \| --all]` | Checks for upstream releases and applies non-breaking patches |
| `nexora projects [list \| add \| remove]` | Manages registered workspace directories |
| `nexora --version` | Displays core engine and skill pack versions |

---

## 📦 Official Skill Catalog

Pre-verified skills categorized across 7 core engineering disciplines:

| Engineering Pillar | Scope & Supported Stacks | Core Skills Included |
| :--- | :--- | :--- |
| 🌐 **Frontend & UI/UX** | React 19, Next.js 15, Vanilla CSS, Tailwind, Responsive Layouts | `frontend-developer`, `frontend_design`, `ui_ux_pro_max`, `enhance_ui` |
| 📱 **Mobile Development** | Flutter, Dart, React Native, Swift iOS 18, Kotlin Android Compose | `flutter-build-responsive-layout`, `react-native-developer`, `swift-ios-developer` |
| ⚙️ **Backend & APIs** | REST, GraphQL, gRPC, Node.js, FastAPI, Go 1.21+, Rust | `backend-architect`, `python-fastapi-developer`, `nodejs-backend-developer` |
| 🛡️ **Security & Auditing** | OWASP Top 10, Secrets Detection, Auth/OAuth2, Threat Modeling | `security_audit`, `backend-security-coder`, `security-auditor` |
| 🧪 **QA, Testing & Debugging** | Unit Testing, Mocking, Playwright, Cypress, Iron Law Debugger | `test_runner`, `scaffold_tests`, `debug_issue`, `dart-add-unit-test` |
| ☁️ **DevOps & Cloud** | Docker, Kubernetes, Terraform, CI/CD Pipelines, Multi-Cloud | `docker-kubernetes-devops` |
| 🗄️ **Database & Architecture** | PostgreSQL, Supabase, Hexagonal & Clean Architecture, DDD | `postgresql-optimization`, `supabase-postgres-best-practices`, `architecture-patterns` |

> Catalog synchronizes with [`catalog/skills-index.json`](catalog/skills-index.json) with dual-tier offline cache fallback.

---

## 📊 Benchmark Trajectory

<p align="center">
  <a href="https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/assets/benchmark_trajectory.png" target="_blank" title="Click to view full-resolution benchmark trajectory graph">
    <img src="assets/benchmark_trajectory.png" alt="Multi-IDE Setup & Maintenance Trajectory" width="950" />
  </a>
</p>

| Metric | ❌ Without Nexora | ✅ With Nexora | Improvement |
| :--- | :--- | :--- | :---: |
| **Fleet Sync Time** | ~60 min manual friction | < 1 min 1-click sync | **60x** ⏱️ |
| **Configuration Drift** | Diverges within days | Zero — single source of truth | **100%** 🔒 |
| **Token Costs** | Unmonitored overflow | Active Governor with tier alerts | **65% ↓** 💰 |
| **Rollback** | Manual file repair | Byte-for-byte atomic undo | **∞** 🛡️ |
| **IDE Compatibility** | 1 target at a time | All supported IDEs simultaneously | **5x** 🚀 |

---

## 💡 Key Benefits

| Benefit | Technical Impact |
| :--- | :--- |
| ⚡ **Simultaneous Multi-IDE Fleet Sync** | Write rules once in Markdown; compile and deploy to Google Antigravity, Cursor, Copilot, Claude, and Codex in < 150ms. |
| 🛡️ **Zero-Regression Journaling** | Every change is backed by an automated pre-flight snapshot in `.nexora/snapshots/` for guaranteed 1-click rollback. |
| 🧠 **Predictable Token Economics** | Enforce model context safety (4k–32k presets) with real-time headroom monitoring, eliminating token bloat and context exhaustion. |
| 🔒 **Enterprise Air-Gapped Security** | 100% local execution with zero cloud telemetry, sandboxed IPC, and no administrative privileges required. |
| 🔄 **Non-Destructive 3-Way Diffing** | Safely pull upstream rule improvements while preserving your team's custom modifications and local overrides. |
| 🤝 **Instant Team Stack Standardization** | Commit curated skill packs to source control so every engineer on your team shares the exact same AI standards across different IDEs. |

---

## 🤝 Community & Collaboration

| Repository | Purpose |
| :--- | :--- |
| 🌐 **[`Nexora`](https://github.com/abhishek01032007-pixel/Nexora)** (Public) | Binary releases, skill catalog contributions via PRs, [issue tracking](https://github.com/abhishek01032007-pixel/Nexora/issues) |
| 🔒 **`Nexora-Skills-Manager`** (Private) | Core desktop engine, Electron bridge, PowerShell execution runtime |

**Want to collaborate on the core engine?** Submit an issue with the `collaboration-request` label describing your area of interest. Verified contributors receive private repository access.

---

## 📄 License

Nexora is distributed under a **Dual-License** model (see full terms in [`LICENSE`](LICENSE)):

* 🖥️ **Application, Engine & Binaries**: Licensed under the **Nexora Community License** — free to download, install, and execute for personal, educational, commercial, and enterprise workflows. Unauthorized rebranding, renaming, repackaging, or redistributing the application, UI, or engine under another name is strictly prohibited.
* 📦 **Skills Catalog & Community Recipes**: Licensed under the **[MIT License](LICENSE)** to foster an open, collaborative community of AI skills and engineering rules.
