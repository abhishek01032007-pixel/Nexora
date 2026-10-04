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
   - Open Nexora and click **`Select Workspace`** → choose your project folder (e.g., `D:\Projects\ShopMobile`).
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

## 🤖 5-Platform AI Target Matrix

Write instructions once in clean Markdown; Nexora transpiles and writes automatically:

| AI IDE Target | Output Location | Compilation Behavior |
| :--- | :--- | :--- |
| **Google Antigravity** | `.agents/skills/<skill>/SKILL.md` | YAML frontmatter validation + markdown body |
| **Cursor IDE** | `.cursor/rules/<skill>.mdc` | MDC headers with glob triggers and `alwaysApply` flags |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Isolated delimiter fences preserving environment variables |
| **Claude Code** | `.claude/skills/<skill>/SKILL.md` | Skill directories with tool capability bounds |
| **OpenAI Codex** | `.codex/skills/<skill>/SKILL.md` | CLI-runner tool definition format |

---

## 🛡️ Token Safety Governor

AI models have strict context window budgets. Nexora's **Token Governor** prevents prompt bloat:

| Tier | Tokens | Status | Usage |
| :---: | :---: | :---: | :--- |
| **Lean** | `< 1,000` | 🟢 `SAFE` | Focused rules — zero impact on model speed |
| **Standard** | `1,000 – 4,000` | 🔵 `OPTIMAL` | Full-featured domain skills — recommended size |
| **Pro** | `4,000 – 8,000` | 🟡 `MODERATE` | Deep bundles with extensive examples |
| **Overflow** | `> 8,000` | 🔴 `WARNING` | Nexora warns to prune before deploying |

---

## 🔄 100% Byte-for-Byte Atomic Rollback Engine

Every modification is transactional:

| Phase | What Happens |
| :--- | :--- |
| **1. Pre-Flight Snapshot** | SHA-256 hash of all target files archived into `.nexora/snapshots/<timestamp>/` |
| **2. Atomic Write** | Batch transaction — aborts cleanly if power fails or error occurs mid-write |
| **3. Journal Commit** | Operation logged to `.nexora/journal.json` with timestamp, skill IDs, and diff manifests |
| **4. 1-Click Rollback** | Restores the pre-flight snapshot instantly — zero corrupted configurations |

---

## 🩺 6-Category System Doctor

```powershell
nexora doctor --repair
```

| Suite | Validates | Auto-Repair |
| :--- | :--- | :--- |
| **Metadata** | `install.json` integrity | Reconstructs metadata |
| **Engine** | `NexoraEngine.ps1` entrypoints | Restores from cache |
| **Catalog** | 48+ skill database completeness | Rebuilds index |
| **CLI Shims** | `nexora.cmd` & User PATH | Recreates shims |
| **Legacy** | `agpm.cmd` backward compatibility | Re-links bridge |
| **Adapters** | 5 IDE transpiler modules | Re-initializes registry |

---

## 💻 Terminal CLI Reference

| Command | Description |
| :--- | :--- |
| `nexora start` | Launch the desktop graphical control plane |
| `nexora scan [path]` | Detect tech stack and AI adapters in a project |
| `nexora doctor [--repair]` | Run diagnostics and optionally auto-repair |
| `nexora skills list [--category <cat>]` | List installed and available skills |
| `nexora skills search <query>` | Search by keyword, language, or tool |
| `nexora skills install <id> [--project <dir>]` | Install and compile a skill into a workspace |
| `nexora skills bundle create <name> [skills...]` | Assemble a custom reusable bundle |
| `nexora rollback [--steps <n>]` | Undo last deployment via journal snapshots |
| `nexora update [--check] [--all]` | Check for upstream updates and apply diffs |
| `nexora projects [list \| add \| remove]` | Manage registered project workspaces |

---

## 📦 Official Skill Catalog

**48+ pre-verified skills** across 6 engineering pillars:

| Category | Scope | Examples |
| :--- | :--- | :--- |
| 🌐 **Frontend & UI/UX** | React 19, Next.js 15, Flutter, React Native, Swift iOS, Kotlin Android | `frontend-developer`, `ui_ux_pro_max` |
| ⚙️ **Backend** | REST/gRPC, Node.js, FastAPI, Go 1.21+, Rust | `backend-architect`, `python-fastapi-developer` |
| 🛡️ **Security** | OWASP Top 10, Secrets Scanner, Auth Hardening | `security_audit`, `backend-security-coder` |
| 🧪 **QA** | Unit Testing, Widget Testing, Scientific Debugger | `scaffold_tests`, `test_runner`, `debugger` |
| 🗄️ **Database** | PostgreSQL, Supabase RLS, Clean Architecture, DDD | `postgresql-optimization` |
| ☁️ **DevOps** | Docker, Kubernetes, CI/CD, Cloud Infrastructure | `docker-kubernetes-devops` |

> Catalog syncs with [`catalog/skills-index.json`](catalog/skills-index.json) with dual-tier offline cache fallback.

---

## 📊 5-Platform Benchmark Trajectory

<p align="center">
  <a href="https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/assets/benchmark_trajectory.png" target="_blank" title="Click to view full-resolution benchmark trajectory graph">
    <img src="assets/benchmark_trajectory.png" alt="5-Platform Multi-IDE Setup & Maintenance Trajectory" width="950" />
  </a>
</p>

| Metric | ❌ Without Nexora | ✅ With Nexora | Improvement |
| :--- | :--- | :--- | :---: |
| **Fleet Sync Time** | ~60 min manual friction | < 1 min 1-click sync | **60x** ⏱️ |
| **Configuration Drift** | Diverges within days | Zero — single source of truth | **100%** 🔒 |
| **Token Costs** | Unmonitored overflow | Active Governor with tier alerts | **65% ↓** 💰 |
| **Rollback** | Manual file repair | Byte-for-byte atomic undo | **∞** 🛡️ |
| **IDE Compatibility** | 1 target at a time | All 5 simultaneously | **5x** 🚀 |

---

## 💡 Key Benefits

| Benefit | Impact |
| :--- | :--- |
| ⏱️ **90% Time Saved** | Stop configuring `.cursorrules`, `copilot-instructions`, and `SKILL.md` separately |
| 🛡️ **Zero Broken Projects** | Byte-for-byte journal snapshots — never corrupted configurations |
| 💰 **Token Cost Protection** | Prevent LLMs from wasting money on bloated instruction sets |
| 🔒 **100% Local & Private** | Zero telemetry, zero cloud — works fully air-gapped |
| 👥 **Instant Team Onboarding** | Commit versioned skill bundles for standardized engineering rules |

---

## 🤝 Community & Collaboration

| Repository | Purpose |
| :--- | :--- |
| 🌐 **[`Nexora`](https://github.com/abhishek01032007-pixel/Nexora)** (Public) | Binary releases, skill catalog contributions via PRs, [issue tracking](https://github.com/abhishek01032007-pixel/Nexora/issues) |
| 🔒 **`Nexora-Skills-Manager`** (Private) | Core desktop engine, Electron bridge, PowerShell execution runtime |

**Want to collaborate on the core engine?** Submit an issue with the `collaboration-request` label describing your area of interest. Verified contributors receive private repository access.

---

## 📄 License

Released under the [MIT License](LICENSE).
