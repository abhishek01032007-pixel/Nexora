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
  <a href="#-installation-options"><img src="https://img.shields.io/badge/Download-Windows%2010%20%7C%2011%20x64-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Download for Windows" /></a>
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
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
```

#### In Windows Command Prompt (CMD):
```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex"
```

> [!NOTE]
> **System Requirements:**
> * **OS:** Windows 10 & 11 (64-bit)
> * **Runtime:** PowerShell 5.1+ (pre-installed — zero Node.js or Python)
> * **Scope:** Per-user installation (`%LOCALAPPDATA%\NexoraSkillsManager`) — no admin required
> * **Disk:** ~150 MB • **Integrity:** SHA-256 verified • **PATH:** Auto-configured

---

## 🚀 How It Works — 4-Step Workflow

| Step | Phase | You Do | Nexora Does |
| :---: | :--- | :--- | :--- |
| **`01`** | **Connect Workspace** | Select your project folder | Auto-scans dependencies & initializes 5 target adapters |
| **`02`** | **Skill Studio** | Browse **The Store** or author custom rules | Validates schema, tool bindings, and prompt instructions |
| **`03`** | **Skill Wallet** | Assemble bundles & audit context | **Token Governor** calculates cumulative tokens & assigns headroom tier |
| **`04`** | **Fleet Deploy** | Click **Apply to Workspace** | Synchronizes all 5 AI targets with atomic rollback snapshot |

<details>
<summary><b>📋 Step-by-Step Detail Cards (expand)</b></summary>

| 1️⃣ **Connect Workspace** | 2️⃣ **Skill Studio** |
| :--- | :--- |
| **📁 Ingestion & Adapter Setup**<br>• Point Nexora to your project root folder<br>• Auto-detects dependencies & active framework stack<br>• Initializes 5 target AI adapters (`.agents`, `.cursor`, `.github`, `.claude`, `.codex`) | **🛠️ Discovery & Instruction Authoring**<br>• Explore 48+ verified official skills in **The Store**<br>• Author bespoke instructions with the built-in Markdown editor<br>• Direct-import skills from any remote Git repository URL |
| 3️⃣ **Skill Wallet** | 4️⃣ **Fleet Deploy** |
| **📦 Stack Bundling & Token Safety**<br>• Organize downloaded skills into curated bundles<br>• Fine-tune per-stack prompt rules and custom overrides<br>• Real-time **Token Governor** calculates context headroom & tiers | **⚡ 1-Click Multi-IDE Sync**<br>• Click **Apply** to synchronize all 5 AI targets simultaneously<br>• Sub-second local compilation with zero cloud dependencies<br>• **100% Byte-for-Byte Atomic Rollback** snapshot protection |

</details>

---

## 📖 Practical Usage Scenarios

<details>
<summary><b>Scenario 1: Initializing a New Project & Multi-IDE Target Sync</b></summary>

1. Launch **Nexora** from Start Menu or type `nexora start` in terminal.
2. Click **Select Workspace** → browse to your project root (e.g., `D:\MyProject`).
3. The **Project Detector** scans your codebase and shows active adapter badges:
   * 🟢 `.agents/skills` (Antigravity) • 🟢 `.cursor/rules` (Cursor) • 🟢 `.github` (Copilot) • 🟢 `.claude/skills` (Claude) • 🟢 `.codex/skills` (Codex)
4. Browse **The Store** → click **Install** on desired skills → click **Apply to Workspace**.
5. All rule files are formatted, compiled, and written to their respective IDE folders in milliseconds.

</details>

<details>
<summary><b>Scenario 2: Custom Bundle with Live Token Budgeting</b></summary>

1. Open **Skill Wallet** → click **`+ New Custom Bundle`**.
2. Name your stack (e.g., `Fintech Secure Architecture Stack`).
3. Select complementary skills (e.g., `backend-security-coder`, `postgresql-optimization`, `security_audit`).
4. The **Token Governor Meter** displays combined token overhead and assigns a tier badge:
   * **Lean** (< 1k tokens) • **Standard** (1k–4k) • **Pro** (4k–8k)
5. Click **Save Bundle**. Stored in `%LOCALAPPDATA%\NexoraSkillsManager\vault\bundles` — reusable with 1 click.

</details>

<details>
<summary><b>Scenario 3: Upstream Updates & 3-Way Checksum Diffing</b></summary>

1. Navigate to **Updates** tab → Nexora compares local SHA-256 hashes against upstream releases.
2. Click **Inspect Diff** for a 3-way visual comparison (Local ↔ Base ↔ Upstream).
3. Click **Apply Update** → atomic snapshot taken, then changes merged cleanly.

</details>

<details>
<summary><b>Scenario 4: Emergency Rollback</b></summary>

1. Open **Dashboard** → **Recent Operations** activity feed.
2. Click **Rollback** or run `nexora rollback` from terminal.
3. Nexora reads `.nexora/journal.json` and restores the exact pre-commit snapshot byte-for-byte in < 1 second.

</details>

<details>
<summary><b>Scenario 5: Running the System Doctor</b></summary>

1. Click **Doctor** in sidebar or run `nexora doctor` in terminal.
2. Nexora runs 6 non-destructive diagnostic suites (metadata, entrypoints, catalog, CLI, legacy, adapters).
3. Click **Auto-Repair** or run `nexora doctor --repair` to fix any detected issues automatically.

</details>

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
