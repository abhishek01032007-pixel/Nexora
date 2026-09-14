# ⚡ Nexora Skills Manager

<p align="center">
  <img src="https://img.shields.io/badge/NEXORA-SKILLS%20MANAGER-0B1020?style=for-the-badge&labelColor=2563EB&color=111827" alt="Nexora Skills Manager" />
</p>

<p align="center">
  <strong>Modular AI Agent Skill Orchestration, Desktop Management & 5-Platform Deployment for Windows.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011%20x64-0078D4?style=flat-square" alt="Platform: Windows x64" />
  <img src="https://img.shields.io/badge/Release-v1.2.0-2563EB?style=flat-square" alt="Release: v1.2.0" />
  <img src="https://img.shields.io/badge/Skill%20Pack-v1.1.0-10B981?style=flat-square" alt="Skill Pack: v1.1.0" />
  <img src="https://img.shields.io/badge/Catalog-49%20Skills-6366F1?style=flat-square" alt="Catalog: 49 Skills" />
  <img src="https://img.shields.io/badge/CLI-nexora-0F766E?style=flat-square" alt="CLI: nexora" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License: MIT" />
  <img src="https://img.shields.io/badge/Architecture-100%25%20Offline%20First-8B5CF6?style=flat-square" alt="Architecture: Offline-First" />
</p>

---

## 🌟 Overview

**Nexora Skills Manager** is a standalone Windows desktop control center and unified command-line tool (`nexora`) designed to supercharge modern AI coding assistants—including **Google Antigravity**, **Cursor IDE**, **GitHub Copilot**, **Claude Code**, and **OpenAI Codex**.

Instead of writing repetitive prompt instructions or manually configuring rules for every new project, Nexora:
1. **Scans your codebase** locally to discover frameworks, languages, dependencies, and architectural patterns.
2. **Recommends specialized engineering skills** from a curated library of **49 production skill packs**.
3. **Deploys native, formatted instruction sets** simultaneously across 5 platforms (`.agents/`, `.cursor/`, `.github/`, `.claude/`, or `.codex/`).
4. **Governs prompt token consumption** via a dynamic Token Safety Meter with context-window headroom safeguards.
5. **Manages skill lifecycles, 3-way checksum updates, and atomic rollbacks** safely across all local projects.

---

## ⚡ Quick One-Command Setup (Windows x64)

Install Nexora with a single command that runs out of the box in **any Windows terminal** (**Windows PowerShell**, **Command Prompt (CMD)**, or **VS Code Terminal**):

```powershell
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
```

### Windows Command Prompt (CMD):
```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex"
```

> 💡 **One command for both PowerShell & CMD:** Automatically verifies system requirements, checks cryptographic SHA-256 integrity, unpacks into `%LOCALAPPDATA%\NexoraSkillsManager`, registers the `nexora` command in your User `PATH`, and launches the Desktop manager.

### 📦 Alternative: Windows Package Manager (WinGet)
```cmd
winget install Nexora.NexoraSkillsManager
```

### 💾 Standalone GUI Installer (.exe)
Download `NexoraSkillsManager-Setup.exe` directly from the [Official GitHub Releases](https://github.com/abhishek01032007-pixel/Nexora/releases).

---

## 🎨 Multi-Theme Engine & Visual Design

Nexora Desktop features a responsive interface engineered with a dynamic multi-theme engine:

* 🖥️ **System Theme (Auto-Sync)**: Dynamically aligns with your Windows 10/11 system light or dark preference in real-time.
* ☀️ **White Normal Mode (Daylight Clean)**: Clean daylight background (`#ffffff` / `#f8f9fa`) with deep slate typography (`#0f172a`), crisp contrast borders, and full WCAG AA compliance.
* 🌘 **Dark Mode (Charcoal Slate)**: Deep charcoal foundation (`#13131b`) with violet accent highlights.
* ⚡ **Zero-Flash Startup**: Instantaneous theme application before first paint.
* 🔄 **Top Bar Quick Switcher**: Toggle between System, Dark, and Light themes directly from the header navigation bar.

---

## 🖥️ The Screen Manager & User Flow

The **Nexora Screen Manager** provides a visual desktop control center built for engineers who prefer an interactive dashboard alongside their IDE:

```
┌────────────────────────────────────────────────────────────────────────┐
│                     NEXORA SCREEN MANAGER WORKFLOW                     │
├────────────────────────────────────────────────────────────────────────┤
│                                                                        │
│   [ 1. Dashboard ] ────> Select or add your project workspace          │
│         │                                                              │
│         ▼                                                              │
│   [ 2. Project Analysis ] ──> Auto-detects frameworks & stack depth    │
│         │                                                              │
│         ▼                                                              │
│   [ 3. Recommendations ] ──> AI-matched skills based on confidence     │
│         │                                                              │
│         ▼                                                              │
│   [ 4. Token Governor ] ───> Monitors token budget & context safety    │
│         │                                                              │
│         ▼                                                              │
│   [ 5. Skill Library ] ───> Browse all 49 skills & toggle activation   │
│         │                                                              │
│         ▼                                                              │
│   [ 6. Platform Target ] ─> Pick Antigravity, Cursor, Copilot, etc.    │
│         │                                                              │
│         ▼                                                              │
│   [ 7. Update Center ] ───> 3-way checksum diffs & safe bulk updates   │
│                                                                        │
└────────────────────────────────────────────────────────────────────────┘
```

### The 15 Integrated Screens & Modules

| Screen / View | Purpose & Capabilities |
|---|---|
| **Startup Screen** | Self-healing engine bootstrapper with path and permissions check. |
| **Dashboard Screen** | Central hub listing registered projects, active skill counts, and update status. |
| **Add Project Screen** | Quick file-picker to import projects into the manager with instant detection. |
| **Project Analysis Screen** | Deep scan displaying detected tech stacks, architectural markers, and confidence scores. |
| **Recommended Skills Screen** | Stack-aware recommendations ranked by project fit with one-click activation. |
| **Skill Library Screen** | Full searchable catalog of all 49 engineering skills with category filters. |
| **Skill Detail Screen** | Full inspection of skill markdown, frontmatter, parameters, and platform previews. |
| **Active Skills Screen** | Manage currently deployed skills for the selected project with Token Safety Meter. |
| **Platform Selection Screen** | Configure where skills deploy: Antigravity, Cursor, Copilot, Claude, or Codex. |
| **Cross-Project Usage Screen** | Matrix view showing which skills are shared across different workspaces. |
| **Update Center Screen** | Unified tabbed center for Application Updates and Skill Updates. |
| **Skill Update Center View** | Preflight planning, selective bulk updates, and interrupted batch recovery. |
| **Diff Viewer Modal** | Git-like side-by-side color-coded split diff viewer for 3-way conflict resolution. |
| **Recent Activity Screen** | Comprehensive audit trail logging every activation, rollback, and update. |
| **System Health Screen** | Built-in "Doctor" diagnosing runtime integrity, file permissions, and environment. |

---

## 🤖 Multi-Platform AI Target Matrix (5 Platforms)

Nexora automatically generates native configurations tailored to each AI assistant's official standard:

| Platform | Generated File / Format | How the AI Tool Uses It |
|---|---|---|
| **Google Antigravity** | `.agents/skills/<skill>/SKILL.md` | Auto-discovered by Antigravity's agent skill system. |
| **Cursor IDE** | `.cursor/rules/<skill>.mdc` | Evaluated on every prompt and code edit inside Cursor. |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Injected inside safe delimiter fences; followed on code generation. |
| **Claude Code** | `.claude/skills/<skill>/SKILL.md` | Anthropic native skill container auto-loaded by Claude CLI. |
| **OpenAI Codex** | `.codex/skills/<skill>/SKILL.md` | Native skill instructions container loaded in Codex environments. |

---

## 📚 Complete Universal Skill Catalog (49 Skills)

Nexora includes **49 battle-tested engineering skill packs**, organized across four functional pillars:

### 1. 🎨 Frontend, Mobile & UI/UX (13 Skills)
| Skill ID | Category | Description |
|---|---|---|
| `frontend-developer` | Frontend | React 19, Next.js 15, responsive component architecture & accessibility. |
| `frontend_design` | Frontend | Production-grade creative web styling, animations & distinctive interfaces. |
| `ui_ux_pro_max` | UI/UX | Comprehensive design intelligence database of palettes, typography & patterns. |
| `enhance_ui` | UI/UX | Systematic UI enhancement, responsiveness verification & design audits. |
| `web_performance_optimization` | Performance | Core Web Vitals, bundle-size reduction, asset optimization & caching. |
| `mobile-developer` | Mobile | Modern cross-platform mobile patterns (Flutter & React Native). |
| `flutter-build-responsive-layout` | Flutter | LayoutBuilder, MediaQuery, and Adaptive UI for phone, tablet, and desktop. |
| `flutter-apply-architecture-best-practices` | Flutter | Clean layered architecture separating UI, Logic, and Data layers. |
| `flutter-setup-declarative-routing` | Flutter | Advanced GoRouter declarative navigation, URL schemes & deep links. |
| `flutter-implement-json-serialization` | Flutter | JSON mapping models with robust error handling and type safety. |
| `flutter-setup-localization` | Flutter | Multi-language localization with `intl` and `l10n` configuration. |
| `flutter-use-http-package` | Flutter | Production-ready REST API integration with interceptors and retry policies. |
| `flutter-add-widget-preview` | Flutter | Interactive widget previews and component sandbox testing. |

### 2. ⚙️ Backend, Microservices & Architecture (15 Skills)
| Skill ID | Category | Description |
|---|---|---|
| `backend-architect` | Architecture | Scalable API design, microservices boundaries, gRPC, and resilience patterns. |
| `architecture-patterns` | Architecture | Clean Architecture, Hexagonal Architecture, and Domain-Driven Design (DDD). |
| `api-design-principles` | Backend | RESTful and GraphQL API design best practices for scalable developer platforms. |
| `auth-implementation-patterns` | Security | OAuth2, OIDC, JWT lifecycle, RBAC, and secure token storage. |
| `backend-security-coder` | Security | Secure backend implementation, input sanitization, and OWASP defense. |
| `cqrs-implementation` | Architecture | Command Query Responsibility Segregation with separated read/write stores. |
| `event-store-design` | Architecture | Event-driven event sourcing, immutable append-only logs & stream partitioning. |
| `microservices-patterns` | Architecture | Service mesh, API gateways, circuit breakers, and distributed tracing. |
| `projection-patterns` | Backend | Real-time and async read-model projections from event streams. |
| `saga-orchestration` | Architecture | Distributed saga patterns with compensating transactions. |
| `sql-optimization-patterns` | Database | Query optimization, indexing strategies, schema tuning, and EXPLAIN plans. |
| `workflow-orchestration-patterns` | Backend | Resilient background job processing and distributed workflow engines. |
| `nodejs-backend-patterns` | Node.js | Express and Fastify production services with middleware pipelines. |
| `fastapi-templates` | Python | High-speed asynchronous REST APIs using FastAPI, Pydantic, and SQLAlchemy. |
| `async-python-patterns` | Python | Concurrency, asyncio event loops, background workers, and threadpools. |

### 3. 🧪 QA, Debugging, Testing & Security (16 Skills)
| Skill ID | Category | Description |
|---|---|---|
| `code_review` | Code Quality | Senior-level code reviews across Functionality, OWASP Security, and Performance. |
| `architect-review` | Architecture | System design review for architectural integrity, maintainability, and scale. |
| `debug_issue` | Debugging | Scientific root-cause debugging protocol (The "Iron Law"). |
| `e2e-testing-patterns` | Testing | Reliable end-to-end test automation with Playwright and Cypress. |
| `scaffold_tests` | Testing | Automated unit and regression test scaffolding (Happy Path, Edge, Error). |
| `test_runner` | Testing | Test execution orchestrator with automatic failure analysis and fixes. |
| `security_audit` | Security | OWASP Top 10 vulnerability scanner and SECURITY.md management. |
| `optimize_codebase` | Refactoring | Refactors monolithic files (>2k lines) into modular, high-performance units. |
| `document_api` | Documentation | Standardized OpenAPI / Markdown documentation generators. |
| `dart-add-unit-test` | Testing | Unit and logic testing for Dart classes using `package:test`. |
| `dart-generate-test-mocks` | Testing | Dependency mocking using Mockito and `build_runner`. |
| `dart-run-static-analysis` | Quality | Static analysis and mechanical linting via `dart analyze` and `dart fix`. |
| `dart-fix-runtime-errors` | Debugging | Active stack trace diagnosis and hot-reload fix verification. |
| `dart-resolve-package-conflicts` | Maintenance | Automated dependency resolution for pub package version conflicts. |
| `flutter-add-widget-test` | Testing | Component-level UI testing via WidgetTester. |
| `flutter-add-integration-test` | Testing | End-to-end device testing using Flutter Driver and integration tests. |

### 4. 🌐 Full-Stack, Optimization & Multi-Agent Orchestration (5 Skills)
| Skill ID | Category | Description |
|---|---|---|
| `token-manager` | Optimization | High-performance AI prompt token governor (Low tokens, High output). |
| `agent-orchestration-multi-agent-optimize` | AI Agents | Coordinated multi-agent profiling, task routing, and cost-aware orchestration. |
| `full-stack-orchestration-full-stack-feature` | Full Stack | Coordinated end-to-end implementation across database, API, and UI layers. |
| `flutter-fix-layout-issues` | Layout | Visual debugger for RenderFlex overflows and unbounded height constraints. |
| `error-handling-patterns` | Resilience | Multi-language error handling, Result types, and graceful degradation. |

---

## 🛠️ How to Add & Activate Skills

### Method A: From the Desktop Screen Manager
1. Launch Nexora by clicking the Desktop icon or typing `nexora` in any terminal.
2. Select your project from the **Dashboard**.
3. Go to **Skill Library** or **Recommended Skills**.
4. Click **Add Skill** on any card. Nexora instantly formats and deploys the skill to your project.

### Method B: From the Command Line
```bash
# Add a skill for GitHub Copilot & Codex in VS Code
nexora skills add flutter-build-responsive-layout --platform copilot

# Add a skill for Cursor IDE
nexora skills add backend-architect --platform cursor

# Add a skill for Google Antigravity
nexora skills add ui_ux_pro_max --platform antigravity

# Add a skill for Claude Code
nexora skills add api-design-principles --platform claude

# Check which skills are active in your current project
nexora skills active .

# Remove a skill cleanly
nexora skills remove flutter-build-responsive-layout .
```

---

## 🏗️ System Architecture: Dual-Tier Engine

Nexora is engineered as an **Electron + PowerShell hybrid application**:

```
┌─────────────────────────────────────────────────────────────┐
│                    NEXORA ARCHITECTURE                      │
├──────────────────────────────┬──────────────────────────────┤
│  DESKTOP UI (Electron)       │  ENGINE RUNTIME (PowerShell) │
│  • HTML5 / CSS3 / ES Modules │  • Pure native Windows logic │
│  • Multi-Theme Engine        │  • 3-Way SHA-256 Checksums   │
│  • Token Safety Meter        │  • Sequential Bulk Executor  │
│  • 3-Way Diff Viewers        │  • Quarantine & Rollback     │
│  • Modals & Progress Bars    │  • 5-Platform Adapters       │
├──────────────────────────────┴──────────────────────────────┤
│               SECURE IPC BRIDGE (stdin / stdout)            │
│  • Zero direct renderer file access                         │
│  • Input sanitization & Concurrency Mutex Locks             │
└─────────────────────────────────────────────────────────────┘
```

1. **Frontend (Electron):** Provides a fluid GUI supporting System, Dark, and Light themes with side-by-side diffs, modals, and progress bars without requiring any web server.
2. **Backend Engine (PowerShell):** Runs natively in the background using built-in Windows PowerShell 5.1+. Zero prerequisite runtimes (no Python or Node installations required on user machines).

---

## 🛡️ Privacy & Local-First Security

- **100% Local Processing:** Codebase analysis, stack detection, and skill generation run completely on your local device. Your proprietary code is never sent to the cloud.
- **Zero Usage Tracking:** Nexora contains no analytics, telemetry beacons, or user tracking.
- **Delimiter-Safe Multi-Platform Injection:** When editing shared files (like `.github/copilot-instructions.md`), Nexora strictly isolates its managed block. Existing developer instructions outside the block are completely untouched.
- **Automatic Backups:** Every update or replacement automatically snapshots current files to `%LOCALAPPDATA%\NexoraSkillsManager\backups\` before making any modifications.

---

## 📌 Repository Structure & Governance

To ensure security, quality, and smooth public distribution, Nexora is structured across two distinct repositories:

```
┌────────────────────────────────────────┬────────────────────────────────────────┐
│   PUBLIC SHOWCASE & DISTRIBUTION REPO  │    PRIVATE CORE ENGINE REPOSITORY      │
│   (https://github.com/.../Nexora)      │    (https://github.com/.../Skills-Mgr) │
├────────────────────────────────────────┼────────────────────────────────────────┤
│ • Official public showcase & portal    │ • Proprietary core engine source code  │
│ • User documentation & feature guides  │ • Electron desktop application source  │
│ • Public installer bootstrap scripts   │ • Full 49 skill template definitions   │
│ • Release notes & binary distributions │ • Automated test suites (56+ suites)   │
│ • Public issue reporting & discussions │ • CI/CD build & packaging pipelines    │
└────────────────────────────────────────┴────────────────────────────────────────┘
```

| Repository | Visibility | Role & Description |
|---|---|---|
| **[Nexora (THIS REPOSITORY)](https://github.com/abhishek01032007-pixel/Nexora)** | 🌐 **Public** | **Showcase, Documentation & Distribution Portal:** Designed for developers and users to explore capabilities, read documentation, download verified installers, and report issues. |
| **[Nexora-Skills-Manager](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager)** | 🔒 **Private** | **Fully Controlled Core Engine Repository:** Houses the proprietary engine source, Electron application shell, test suites, and internal release pipelines. |

> 🔑 **Requesting Contributor / Team Access to Private Repository:**  
> Access to the private core engine is restricted to authorized team members, enterprise partners, and approved core contributors. To request access, please submit an inquiry via [GitHub Repository Access](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager) or reach out through our [Public Issue Tracker](https://github.com/abhishek01032007-pixel/Nexora/issues).

---

## 🤝 Support & Feedback

- **Bug Reports & Feature Requests:** [Open a Public Issue](https://github.com/abhishek01032007-pixel/Nexora/issues)
- **License:** [MIT License](LICENSE)

<p align="center">
  Built with ❤️ for modern AI-assisted software engineers.
</p>
