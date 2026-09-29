<p align="center">
  <br>
  <img src="https://img.shields.io/badge/NEXORA-SKILLS%20MANAGER-0B1020?style=for-the-badge&labelColor=2563EB&color=111827" alt="Nexora Skills Manager" />
</p>

<h1 align="center">⚡ NEXORA SKILLS MANAGER</h1>

<h3 align="center">Local-first developer skill management, optimization, and multi-platform orchestration for modern AI coding assistants.</h3>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011%20x64-0078D4?style=flat-square" alt="Platform: Windows x64" />
  <img src="https://img.shields.io/badge/Release-v1.2.0-2563EB?style=flat-square" alt="Release: v1.2.0" />
  <img src="https://img.shields.io/badge/Skill%20Pack-v1.1.0-10B981?style=flat-square" alt="Skill Pack: v1.1.0" />
  <img src="https://img.shields.io/badge/Catalog-49%20Skills-6366F1?style=flat-square" alt="Catalog: 49 Skills" />
  <img src="https://img.shields.io/badge/Platforms-5%20Supported-EC4899?style=flat-square" alt="Platforms: 5 Supported" />
  <img src="https://img.shields.io/badge/CLI-nexora-0F766E?style=flat-square" alt="CLI: nexora" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License: MIT" />
  <img src="https://img.shields.io/badge/Architecture-100%25%20Offline%20First-8B5CF6?style=flat-square" alt="Architecture: Offline-First" />
</p>

<p align="center">
  <strong>One Setup. Native Desktop Control Cockpit. 5-Platform AI Agent Skill Orchestration. Zero Telemetry.</strong>
</p>

---

## 🌟 What is Nexora Skills Manager?

Modern AI coding assistants—like **Google Antigravity**, **Cursor IDE**, **GitHub Copilot**, **Claude Code**, and **OpenAI Codex**—are only as capable as the contextual guidance and engineering discipline provided to them. Without structured skills, AI assistants frequently suffer from:

- **Context Amnesia**: Repeating shallow patterns instead of adhering to project-specific architecture.
- **Verbose Prompt Overhead**: Blowing up context windows and wasting tokens with repeated instructions.
- **Platform Fragmentation**: Incompatible instruction formats across different editors and CLI agents.
- **Manual Configuration Drudgery**: Manually copying `.mdc` or `SKILL.md` rules into every new repository.

**Nexora Skills Manager** solves this permanently. It is a high-performance, local-first Windows desktop application and command-line engine (`nexora`) that discovers your codebase stack, recommends battle-tested engineering skills, monitors prompt token budgets, and formats & deploys skills directly into your workspace across **5 major AI platforms with a single click**.

---

## ⚙️ How Nexora Skills Manager Works

Nexora operates completely locally on your machine through a deterministic, 7-step engineering pipeline:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                     NEXORA SKILLS LIFECYCLE WORKFLOW                        │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│   [ 1. Add Workspace ] ───────► Select local repository or project folder   │
│            │                                                                │
│            ▼                                                                │
│   [ 2. Stack Detection ] ─────► Scans marker files (package.json, Cargo,    │
│            │                    pubspec.yaml, go.mod, etc.) with confidence │
│            ▼                                                                │
│   [ 3. Skill Matching ] ──────► Contextual recommendations matched to       │
│            │                    detected stack across 49 curated skills     │
│            ▼                                                                │
│   [ 4. Token Governor ] ──────► Real-time Token Safety Meter calculates     │
│            │                    headroom to prevent context overflow        │
│            ▼                                                                │
│   [ 5. Select Targets ] ──────► Choose target platforms (Antigravity,       │
│            │                    Cursor, Copilot, Claude, Codex)             │
│            ▼                                                                │
│   [ 6. Atomic Injection ] ────► Translates schemas into native formats with │
│            │                    safe delimiter fences & backup snapshots    │
│            ▼                                                                │
│   [ 7. 3-Way Sync & Update ] ─► SHA-256 integrity checks, diff inspection   │
│                                 and byte-for-byte rollback guarantees       │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### The 7 Core Architectural Pillars

1. **📊 Dashboard**: Real-time project cockpit displaying project health scores, active skill counts, detected stack classification, and Token Safety Governor overview.
2. **📁 Workspaces**: Comprehensive multi-repository workspace manager. Inspect discovered languages, frameworks, dependencies, and manage deployed skills per workspace.
3. **👛 Skill Wallet (Store & Importer)**: A searchable repository of **49 canonical engineering skills**. Import custom skills locally or paste any **GitHub repository URL** to automatically discover, inspect, and install community skills.
4. **🛠️ Skill Studio**: Author and test your own custom AI skills. Includes YAML frontmatter scaffolding, schema validation, parameter templates, and instant preview across all 5 platform formats.
5. **🤖 Platforms**: Unified target manager. Choose which platforms receive deployed skills: Google Antigravity, Cursor IDE, GitHub Copilot, Claude Code, or OpenAI Codex.
6. **📜 Activity & Audit Trail**: Chronological immutable log tracking every skill deployment, activation, deactivation, scan, and system update.
7. **🩺 Maintenance & Doctor**: 6-category diagnostic engine that validates runtime integrity, environment PATH, platform adapters, file permissions, and offers one-click self-healing repair.

---

## 🤖 5-Platform AI Target Matrix

Nexora automatically translates skills into the exact native file format and directory structure required by each AI coding environment:

| AI Platform | Target File Location | Schema / Format | Execution Behavior |
| :--- | :--- | :--- | :--- |
| **Google Antigravity** | `.agents/skills/<skill>/SKILL.md` | Standard `SKILL.md` with YAML frontmatter | Loaded on-demand as specialized agent capabilities. |
| **Cursor IDE** | `.cursor/rules/<skill>.mdc` | MDC structured markdown with YAML metadata | Automatically applied on relevant file patterns and prompts. |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Delimiter-scoped markdown fences | Injected cleanly without touching custom user instructions. |
| **Claude Code** | `.claude/skills/<skill>/SKILL.md` | Anthropic skill container with execution guides | Discovered and loaded by the Claude CLI runtime. |
| **OpenAI Codex** | `.codex/skills/<skill>/SKILL.md` | Codex instructions container with environment rules | Loaded into OpenAI Codex workspaces and dev containers. |

---

## 🛡️ Critical Safety & Engineering Invariants

- **Zero Source Code Mutation**: Nexora strictly edits instruction configuration files inside `.agents/`, `.cursor/`, `.github/`, `.claude/`, or `.codex/`. Your source code is **never modified**.
- **Delimiter-Safe Injection**: In shared files like `.github/copilot-instructions.md`, Nexora wraps skills inside clear delimiter fences (`<!-- NEXORA:START -->` ... `<!-- NEXORA:END -->`). Existing developer instructions outside the fence remain 100% untouched.
- **Token Safety Meter**: Dynamic token budget monitoring calculates prompt token consumption and guards against context-window exhaustion.
- **3-Way Checksum Diff Engine**: When updating skills, Nexora compares base, local-modified, and upstream versions to prevent overwriting local customizations.
- **Atomic Rollbacks**: Every mutating operation automatically snapshots modified files to `%LOCALAPPDATA%\NexoraSkillsManager\backups\` before writing. If any step fails, changes are restored byte-for-byte.
- **100% Offline-First & Zero Telemetry**: Codebase analysis, stack detection, and skill generation run completely on your local workstation. Zero analytics, zero telemetry beacons, and zero secret storage.

---

## 📚 The 49 Curated Built-in Engineering Skills

Nexora comes pre-bundled with **49 production-grade engineering skills** designed by veteran software architects:

### 1. 🎨 Frontend, Mobile & UI/UX Engineering (15 Skills)

| Skill ID | Focus Area | Description |
| :--- | :--- | :--- |
| `frontend_design` | Design Systems | Production-grade creative web styling, modern color harmonies, micro-animations & distinctive aesthetics. |
| `frontend-developer` | React & Next.js | Modern React 19, Next.js 15, component hierarchy, accessibility, and client-side state patterns. |
| `ui_ux_pro_max` | UI/UX Intelligence | Searchable design intelligence database with palettes, font pairings, layout blueprints, and interaction models. |
| `enhance_ui` | Visual Enhancement | Systematic UI refinement, responsiveness verification, contrast tuning, and layout bug prevention. |
| `mobile-developer` | Mobile Cross-Platform | React Native and Flutter mobile architectures, offline sync, performance tuning, and app store readiness. |
| `flutter-build-responsive-layout` | Flutter Layouts | LayoutBuilder, MediaQuery, and Adaptive UI paradigms scaling smoothly from mobile to desktop screens. |
| `flutter-apply-architecture-best-practices` | Flutter Architecture | Clean layered architecture strictly separating UI, Business Logic, and Data Access layers. |
| `flutter-setup-declarative-routing` | Flutter Routing | GoRouter declarative URL routing, deep linking, authentication redirection, and state-driven navigation. |
| `flutter-implement-json-serialization` | Flutter Models | Type-safe JSON serialization with error resilience, immutability, and mapping helpers. |
| `flutter-setup-localization` | Flutter i18n | Multi-language localization with `intl`, `l10n.yaml`, and RTL layout support. |
| `flutter-use-http-package` | Flutter Networking | Production-ready HTTP/REST networking with interceptors, retry exponential backoff, and caching. |
| `flutter-add-widget-preview` | Flutter Prototyping | Interactive component previews and widget sandboxes for rapid isolated UI development. |
| `flutter-fix-layout-issues` | Flutter Debugging | Surgical fixes for RenderFlex overflows, unbounded constraints, and layout viewport collisions. |
| `flutter-add-widget-test` | Flutter Testing | Component-level UI verification using WidgetTester for user interactions, gestures, and rendering. |
| `flutter-add-integration-test` | Flutter E2E | End-to-end device integration testing using Flutter Driver and integration_test suites. |

### 2. ⚙️ Backend, Microservices & Architecture (12 Skills)

| Skill ID | Focus Area | Description |
| :--- | :--- | :--- |
| `backend-architect` | Distributed Systems | Scalable API design, microservices boundaries, service mesh patterns, gRPC, resilience, and observability. |
| `architecture-patterns` | Clean Architecture | Clean Architecture, Hexagonal (Ports & Adapters), and Domain-Driven Design (DDD) domain modeling. |
| `architect-review` | Design Review | Comprehensive architectural reviews evaluating scalability, fault tolerance, modularity, and cohesion. |
| `api-design-principles` | API Standards | RESTful and GraphQL API design best practices, versioning, idempotent mutations, and pagination. |
| `nodejs-backend-patterns` | Node.js Services | Express and Fastify production services with middleware pipelines, structured logging, and error handling. |
| `backend-security-coder` | Backend Security | Secure backend implementation, input sanitization, SQL/NoSQL injection defense, and OWASP compliance. |
| `software_architecture` | Architecture Core | Quality-focused software engineering standards, SOLID principles, and low-coupling system design. |
| `document_api` | Documentation | Automated standardized OpenAPI/Swagger and Markdown documentation generation for endpoints. |
| `error-handling-patterns` | Resilience | Multi-language error handling, Result types, exception boundaries, and graceful service degradation. |
| `postgresql-optimization` | Database Tuning | PostgreSQL-specific development: JSONB queries, indexing strategies, full-text search, and EXPLAIN plans. |
| `supabase-postgres-best-practices` | Supabase & Postgres | Database schema design, Row Level Security (RLS) policies, pgvector search, and migration hygiene. |
| `full-stack-orchestration-full-stack-feature` | Full Stack Features | Coordinated multi-tier feature implementation across database schemas, APIs, and frontend views. |

### 3. 🧪 QA, Debugging, Testing & Security (12 Skills)

| Skill ID | Focus Area | Description |
| :--- | :--- | :--- |
| `debug_issue` | Root Cause Analysis | Strict, scientific debugging protocol (The "Iron Law"): No fixes permitted without proven root cause. |
| `debugger` | General Debugging | Systematic error diagnostic specialist for test failures, memory leaks, and unexpected runtime behavior. |
| `test_runner` | Test Orchestration | Automated test execution runner that analyzes failures and provides surgical fix recommendations. |
| `scaffold_tests` | Test Generation | Generates comprehensive test suites with Happy Path, Edge Case, and Error Condition test stubs. |
| `e2e-testing-patterns` | E2E Testing | Robust end-to-end browser automation with Playwright and Cypress to eliminate flaky tests. |
| `code-review-excellence` | Code Review | Constructive, senior-level code review practices catching subtle bugs, security gaps, and antipatterns. |
| `code_review` | Quality & OWASP | Multi-dimensional code review covering Functionality, OWASP Top 10 Security, and Performance. |
| `security-auditor` | Security Auditing | DevSecOps security auditor specializing in threat modeling, OAuth2/OIDC, and compliance frameworks. |
| `security_audit` | Vulnerability Scan | Scans codebase for secrets, injection vulnerabilities, and maintains project SECURITY.md policies. |
| `accidental-data-loss-prevention` | Data Guard | Pre-flight stop-and-verify guard blocking accidental drops, bucket deletions, or destructive data loss. |
| `optimize_codebase` | Code Refactoring | Identifies and refactors monolithic code files (>2k lines) into clean, modular, testable components. |
| `ui-simulation-auditor` | UI Audit | Automated UI simulation validating buttons, back navigation, modal lifecycles, and visual glitches. |

### 4. ☁️ Cloud Storage, BigQuery & Data Engineering (10 Skills)

| Skill ID | Focus Area | Description |
| :--- | :--- | :--- |
| `bigquery-sql` | SQL Optimization | High-performance BigQuery SQL optimization, query cost reduction, and partition/clustering design. |
| `bigquery-ai-ml` | BigQuery ML | Built-in BigQuery machine learning: time-series forecasting, anomaly detection, and GenAI integration. |
| `bigquery-bigframes` | DataFrames & ML | Python BigQuery DataFrames (BigFrames) for pandas/scikit-learn style workflows over petabyte datasets. |
| `bigtable-basics` | NoSQL Storage | Bigtable schema design, row key optimization, hotspot elimination, and client library integrations. |
| `building-data-apps` | Data Dashboards | Modern data applications and interactive visualization UIs using React + Vite and Streamlit. |
| `data-autocleaning` | Data Quality | Automated data quality, cleaning, and transformation pipelines for Dataform and dbt workflows. |
| `dbt-bigquery` | dbt Modeling | Production dbt pipeline creation, modular SQL transformations, and incremental models for BigQuery. |
| `google-cloud-storage-basics` | Cloud Storage | Secure GCS object storage: bucket policies, lifecycle rules, signed URLs, and streaming optimization. |
| `google-cloud-storage-bucket-architect` | Bucket Architecture | Workload-tuned Cloud Storage bucket design: retention locks, uniform access, and tiering economics. |
| `schema-mapping` | Schema Mapping | High-fidelity ETL/ELT schema transformations, mapping manifesto generation, and cross-platform sync. |

---

## 🚀 Download & Quick Setup (Windows 10 / 11 x64)

Nexora Skills Manager is 100% free, open-source, and installs non-elevated (no administrator privileges needed):

### Method 1: The One Setup Link (PowerShell Terminal) ⚡

Open Windows PowerShell (5.1+) and run:

```powershell
irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
```

#### Windows Command Prompt (CMD):
```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex"
```

*✔ 100% non-elevated installation (runs in user space)*  
*✔ Automatic cryptographic SHA-256 integrity verification*  
*✔ Configures the `nexora` CLI in your User `PATH` and launches the desktop app*  
*✔ Repository safety: Your local source code and drives remain completely untouched*  

---

### Method 2: Direct Download (Windows Graphical Installer) 🖱️

For developers who prefer a traditional Windows wizard setup:

<p align="center">
  <br>
  <a href="https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe">
    <img src="https://img.shields.io/badge/DOWNLOAD%20FOR%20WINDOWS-DIRECT%20EXE%20INSTALLER-22C55E?style=for-the-badge&logo=windows&logoColor=white" alt="Download Nexora Skills Manager for Windows" height="48" />
  </a>
  <br>
  <sub><strong>Single-Click Windows Installer (.exe)</strong> • Fast Download • 100% Non-Elevated (Zero Admin Rights Needed)</sub>
</p>

1. **Download:** Click the button above to download `NexoraSkillsManager-Setup.exe`.
2. **Launch:** Run the executable to open the clean Windows setup wizard.
3. **Install:** Choose your installation destination and optional desktop shortcuts, then click Install.

---

## 💻 Command Line Interface (`nexora`)

Nexora provides a first-class CLI for developers who work in the terminal:

```powershell
# Open interactive CLI / view status
nexora

# View help and available options
nexora --help

# Display installed version
nexora --version

# Run full 6-category system health diagnostics
nexora doctor

# Run doctor with automatic self-healing repair
nexora doctor --repair

# List all skills available in the catalog
nexora skills

# Scan and analyze active project tech stack
nexora scan
```

---

## 🎨 Multi-Theme Engine

Nexora Desktop features a responsive interface engineered with an instant multi-theme engine:

* 🖥️ **System Theme (Auto-Sync)**: Dynamically aligns with your Windows 10/11 system light or dark preference in real-time.
* ☀️ **White Normal Mode (Daylight Clean)**: Clean daylight background (`#ffffff` / `#f8f9fa`) with deep slate typography (`#0f172a`), crisp contrast borders, and full WCAG AA compliance.
* 🌘 **Dark Mode (Charcoal)**: Deep charcoal foundation (`#13131b`) with violet accents.
* ⚡ **Zero-Flash Startup**: Instantaneous theme application before first paint.

---

## 🏛️ Public Distribution vs Private Core Architecture

To guarantee the highest levels of security, release stability, and public transparency, Nexora operates under a clean two-tier repository architecture:

| Repository | Visibility | Role & Purpose |
| :--- | :---: | :--- |
| **[Nexora (THIS REPOSITORY)](https://github.com/abhishek01032007-pixel/Nexora)** | 🌐 **Public** | **Public Showcase & Distribution Portal:** Official documentation, verified installer downloads, public issue tracker, security policies, and setup bootstrap scripts. |
| **[Nexora-Skills-Manager](https://github.com/abhishek01032007-pixel/Nexora-Skills-Manager)** | 🔒 **Private** | **Core Engine & Development Workspace:** Houses the full Electron application, native PowerShell bridge dispatcher, test matrix (1,200+ tests), and CI/CD packaging pipelines. |

---

## 📖 Additional Documentation

- 🚀 [Installation Guide](docs/installation.md)
- 🔒 [Privacy & Local-First Security](docs/privacy.md)
- 💻 [System Requirements](docs/system-requirements.md)
- 🔄 [Update & Rollback Engine](docs/updates.md)
- 🛡️ [Security Policy](SECURITY.md)
- 📜 [MIT License](LICENSE)

---

## 🤝 Support & Feedback

- **Bug Reports & Feature Requests:** [Open a Public Issue](https://github.com/abhishek01032007-pixel/Nexora/issues)
- **License:** [MIT License](LICENSE)

<p align="center">
  Built with ❤️ for modern AI-assisted software engineers.
</p>