<p align="center">
  <br>
  <img src="https://img.shields.io/badge/NEXORA-SKILLS%20MANAGER-0B1020?style=for-the-badge&labelColor=2563EB&color=111827" alt="Nexora Skills Manager" />
</p>

<h1 align="center">⚡ NEXORA SKILLS MANAGER</h1>

<h3 align="center">Local-first developer skill management, token optimization, and multi-platform orchestration for modern AI coding assistants.</h3>

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

Modern AI coding assistants—including **Google Antigravity**, **Cursor IDE**, **GitHub Copilot**, **Claude Code**, and **OpenAI Codex**—are only as capable as the contextual guidance and engineering discipline provided to them. Without structured skills, AI assistants frequently suffer from:

- **Context Amnesia**: Repeating shallow patterns instead of adhering to project-specific architecture.
- **Verbose Prompt Overhead**: Blowing up context windows and wasting tokens with repeated instructions.
- **Platform Fragmentation**: Incompatible instruction formats across different editors and CLI agents.
- **Manual Configuration Drudgery**: Manually copying rules or `SKILL.md` instructions into every new repository.

**Nexora Skills Manager** solves this permanently. It is a high-performance, local-first Windows desktop application and command-line engine (`nexora`) that discovers your codebase stack, recommends battle-tested engineering skills, monitors prompt token budgets, and formats & deploys skills directly into your workspace across **5 major AI platforms with a single click**.

---

## ⚙️ How Nexora Skills Manager Works: The 7-Step Lifecycle Pipeline

Nexora operates completely locally on your workstation through a deterministic 7-step engineering pipeline:

```
┌────────────────────────────────────────────────────────────────────────┐
│                     NEXORA SKILLS LIFECYCLE PIPELINE                   │
├────────────────────────────────────────────────────────────────────────┤
│                                                                        │
│   [ 1. Select Workspace ] ──► Choose local project folder              │
│              │                                                         │
│              ▼                                                         │
│   [ 2. Stack Detection ] ───► Auto-scans package.json, Cargo, Go, etc. │
│              │                                                         │
│              ▼                                                         │
│   [ 3. Bundles & Skills ] ──► 1-Click Curated Bundles selection +      │
│              │                ranked recommended individual skills     │
│              ▼                                                         │
│   [ 4. Token Governor ] ────► Real-time prompt headroom validation     │
│              │                                                         │
│              ▼                                                         │
│   [ 5. Platform Targets ] ──► Antigravity, Cursor, Copilot, etc.       │
│              │                                                         │
│              ▼                                                         │
│   [ 6. Atomic Injection ] ──► Transactional deployment & workspace     │
│              │                registration to Desktop Dashboard        │
│              ▼                                                         │
│   [ 7. Diagnostics & Sync ] ─► Continuous health monitoring, rollback   │
│                                snapshots, and updates                  │
│                                                                        │
└────────────────────────────────────────────────────────────────────────┘
```

1. **Workspace Folder Discovery**: Point Nexora to any project directory.
2. **Deterministic Technology Stack Analysis**: Scans project manifests (`package.json`, `pubspec.yaml`, `Cargo.toml`, `go.mod`, `requirements.txt`, `pom.xml`, etc.) to identify frameworks and libraries.
3. **Skill & Curated Bundle Recommendations**: Surfaces compatible pre-packaged bundles (Full-Stack, Mobile, Security) for 1-click selection alongside ranked individual skills.
4. **Token Governor Budget Validation**: Evaluates prompt token weights against model context limits, guarding against prompt context bloat.
5. **Multi-Platform Adapter Translation**: Automatically transforms skills into native formats (`.agents/skills/`, `.cursor/rules/`, `.github/copilot-instructions.md`, `.claude/skills/`, `.codex/skills/`).
6. **Atomic Transactional Registration**: Writes instructions atomically with delimiter protection. The workspace is officially registered and opens directly in the **Workspace Dashboard**.
7. **Health Monitoring & Instant Rollback**: Continuous diagnostics with automatic pre-modification snapshots for instant byte-for-byte rollbacks.

---

## 🎛️ The 7 Core Cockpit Navigation Hubs

Nexora organizes developer capabilities into 7 specialized application screens:

1. 📊 **Dashboard**: Real-time telemetry, active workspace status, recent actions, quick-start actions, and token headroom gauges.
2. 📁 **Workspaces**: Multi-repository workspace fleet manager. Inspect discovered languages, frameworks, dependencies, and manage active deployed skills per workspace.
3. 🎨 **Skill Studio (Discovery & Authoring Hub)**:
   - **The Store**: Searchable catalog of 49+ official canonical engineering skills with search and category filtering.
   - **Skill Author**: Built-in Markdown & YAML frontmatter prompt editor for authoring custom skills with live token estimation.
   - **GitHub URL Importer**: Remote repository parser that inspects public GitHub repos and imports verified `.agents/skills`.
   - **Local Folder Scanner**: Disk folder browser to import existing custom skills from local directories.
   *(Note: Downloads are strictly separated and managed within the Skill Wallet)*.
4. 👛 **Skill Wallet (Skill Vault & Reusable Bundles)**:
   - **My Downloads Vault**: Personal disk inventory showing acquisition dates (`📅 YYYY-MM-DD`), detailed skill capabilities and rules, cryptographic SHA-256 checksums, token size tiers, and the direct **"Add to Project / Workspace"** action that maps the skill immediately into the selected Workspace Dashboard.
   - **Skill Bundles (Official & Custom)**: Pre-packaged standard industry bundles (Full-Stack Web, Backend Microservices, Mobile Multiplatform, DevOps & Cloud, Security Hardened, Clean Architecture).
   - **Universal Bundle Editor**: Full capability to add new custom bundles and **edit existing bundles** (including official preset packs) with persistent custom overrides.
   - **1-Click Apply to Workspace**: Bulk deployment of all skills in a bundle to any connected workspace.
5. 🤖 **Platforms Matrix**: Centralized platform adapter manager. Toggle and verify targets across Google Antigravity, Cursor IDE, GitHub Copilot, Claude Code, and OpenAI Codex.
6. 📜 **Activity & Audit Trail**: Chronological, immutable event journal tracking every skill installation, uninstallation, batch update, and scan.
7. 🩺 **Maintenance & Diagnostics Doctor**: 6-category diagnostic engine that audits CLI PATH, bridge integrity, platform adapters, file permissions, and offers one-click self-healing repair.

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

- **Zero Source Code Mutation**: Nexora strictly edits instruction configuration files inside `.agents/`, `.cursor/`, `.github/`, `.claude/`, or `.codex/`. Your application source code is **never modified**.
- **Delimiter-Safe Injection**: In shared files like `.github/copilot-instructions.md`, Nexora wraps skills inside clear delimiter fences (`<!-- NEXORA:START -->` ... `<!-- NEXORA:END -->`). Existing developer instructions outside the fence remain 100% untouched.
- **Token Safety Governor**: Dynamic token budget monitoring calculates prompt token consumption and guards against context-window exhaustion.
- **3-Way Checksum Diff Engine**: When updating skills, Nexora compares base, local-modified, and upstream versions to prevent overwriting local customizations.
- **Atomic Rollbacks**: Every mutating operation automatically snapshots modified files to `%LOCALAPPDATA%\NexoraSkillsManager\backups\` before writing. If any step fails, changes are restored byte-for-byte.
- **100% Offline-First & Zero Telemetry**: Codebase analysis, stack detection, and skill generation run completely on your local workstation. Zero analytics, zero telemetry beacons, and zero secret storage.

---

## 📦 Streamlined Project Onboarding Workflow

Adding a new project to Nexora follows an intuitive, guarded onboarding lifecycle:

1. **Select Directory**: Use the native folder browser or enter the repository path.
2. **Automated Stack Detection**: Real-time scan reveals technologies, frameworks, and package dependencies.
3. **Bundles & Skills Selection**:
   - **Curated Bundles (1-Click)**: Pick an applicable bundle (e.g. *Full-Stack Web Pack* or *Mobile Multiplatform Pack*) to instantly select all matching skills.
   - **Recommended Individual Skills**: Fine-tune specific skills with live token budget indicators.
4. **Choose AI Platforms**: Check the platforms used in the project (Google Antigravity, Cursor, GitHub Copilot, Claude Code, OpenAI Codex).
5. **Confirm & Deploy**: Skills are deployed transactionally across platforms.
6. **Workspace Dashboard Mapping**: The workspace is officially registered into the fleet and opens directly into the active **Workspace Dashboard**.

---

## 📚 Built-in Canonical Skills Catalog (49 Skills)

Nexora comes pre-bundled with **49 production-grade engineering skills** designed for modern software architecture:

### 1. 🎨 Frontend, Mobile & UI/UX Engineering
- `frontend_design` — Production-grade creative web styling, modern color harmonies, micro-animations & distinctive aesthetics.
- `frontend-developer` — Modern React 19, Next.js 15, component hierarchy, accessibility, and client-side state patterns.
- `ui_ux_pro_max` — Searchable design intelligence database with palettes, font pairings, layout blueprints, and interaction models.
- `enhance_ui` — Systematic UI refinement, responsiveness verification, contrast tuning, and layout bug prevention.
- `mobile-developer` — React Native and Flutter mobile architectures, offline sync, performance tuning, and app store readiness.
- `react-native-developer` — React Native Expo development, native modules, gestures, and offline caching.
- `swift-ios-developer` — Native iOS Swift & SwiftUI application architecture and performance.
- `kotlin-android-developer` — Modern Android Jetpack Compose development with Material Design 3.
- `flutter-build-responsive-layout` — LayoutBuilder, MediaQuery, and Adaptive UI paradigms scaling smoothly from mobile to desktop screens.
- `flutter-apply-architecture-best-practices` — Clean layered architecture strictly separating UI, Business Logic, and Data Access layers.
- `flutter-setup-declarative-routing` — GoRouter declarative URL routing, deep linking, authentication redirection, and state-driven navigation.
- `flutter-implement-json-serialization` — Type-safe JSON serialization with error resilience, immutability, and mapping helpers.
- `flutter-setup-localization` — Multi-language localization with `intl`, `l10n.yaml`, and RTL layout support.
- `flutter-use-http-package` — Production-ready HTTP/REST networking with interceptors, retry exponential backoff, and caching.
- `flutter-add-widget-preview` — Interactive component previews and widget sandboxes for rapid isolated UI development.
- `flutter-fix-layout-issues` — Surgical fixes for RenderFlex overflows, unbounded constraints, and layout viewport collisions.
- `flutter-add-widget-test` — Component-level UI verification using WidgetTester for user interactions, gestures, and rendering.
- `flutter-add-integration-test` — End-to-end device integration testing using Flutter Driver and integration_test suites.

### 2. ⚙️ Backend, Microservices & Architecture
- `backend-architect` — Scalable API design, microservices boundaries, service mesh patterns, gRPC, resilience, and observability.
- `architecture-patterns` — Clean Architecture, Hexagonal (Ports & Adapters), and Domain-Driven Design (DDD) domain modeling.
- `architect-review` — Comprehensive architectural reviews evaluating scalability, fault tolerance, modularity, and cohesion.
- `api-design-principles` — RESTful and GraphQL API design best practices, versioning, idempotent mutations, and pagination.
- `nodejs-backend-developer` — Production Node.js backend services, asynchronous concurrency, and performance tuning.
- `nodejs-backend-patterns` — Express and Fastify production services with middleware pipelines, structured logging, and error handling.
- `python-fastapi-developer` — High-performance async APIs with FastAPI, SQLAlchemy 2.0, and Pydantic V2.
- `go-microservices-developer` — Modern Go 1.21+ patterns, advanced concurrency, channels, and production microservices.
- `rust-systems-developer` — Systems programming with Rust 1.75+, ownership safety, and high-throughput async.
- `backend-security-coder` — Secure backend implementation, input sanitization, SQL/NoSQL injection defense, and OWASP compliance.
- `software_architecture` — Quality-focused software engineering standards, SOLID principles, and low-coupling system design.
- `document_api` — Automated standardized OpenAPI/Swagger and Markdown documentation generation for endpoints.
- `error-handling-patterns` — Multi-language error handling, Result types, exception boundaries, and graceful service degradation.
- `postgresql-optimization` — PostgreSQL-specific development: JSONB queries, indexing strategies, full-text search, and EXPLAIN plans.
- `supabase-postgres-best-practices` — Database schema design, Row Level Security (RLS) policies, pgvector search, and migration hygiene.
- `docker-kubernetes-devops` — Containerization, Kubernetes manifests, Helm charts, Terraform infrastructure, and CI/CD pipelines.
- `full-stack-orchestration-full-stack-feature` — Coordinated multi-tier feature implementation across database schemas, APIs, and frontend views.

### 3. 🛡️ Quality Assurance, Testing, Diagnostics & Security
- `code_review` — Comprehensive multi-dimensional code reviews covering Functionality, OWASP Security, Performance, and Clean Code.
- `code-review-excellence` — Constructive review guidelines, automated linting rules, and regression prevention.
- `debug_issue` — Strict scientific debugging protocol ("The Iron Law"): zero modifications without verified root cause isolation.
- `debugger` — Automated diagnostic specialist for runtime exceptions, memory leaks, and failing integration tests.
- `security_audit` — Automated static and behavioral vulnerability scanner covering OWASP Top 10 vulnerabilities.
- `security-auditor` — Expert DevSecOps auditor: threat modeling, OAuth2/OIDC flows, and compliance frameworks.
- `test_runner` — Automated test runner and execution manager across unit, integration, and end-to-end suites.
- `scaffold_tests` — Automatic generation of unit, regression, and happy-path/edge-case test files.
- `e2e-testing-patterns` — Reliable end-to-end testing with Playwright and Cypress.
- `dart-add-unit-test` — Unit and regression test generation for Dart classes and business logic using `package:test`.
- `dart-generate-test-mocks` — Type-safe mock generators using `mockito` and `build_runner`.
- `dart-run-static-analysis` — Automated static analysis with `dart analyze` and mechanical autofixes with `dart fix`.
- `dart-fix-runtime-errors` — Active stack trace resolution and hot reload verification.
- `dart-resolve-package-conflicts` — Automated dependency solver for conflicting Dart/Flutter packages.

---

## 🚀 Quickstart & Installation

### Option 1: Native Windows Installer (Recommended)

1. Open PowerShell on Windows 10 or 11 (x64):
   ```powershell
   irm https://raw.githubusercontent.com/abhishek01032007-pixel/Nexora/main/setup.ps1 | iex
   ```
2. The setup script downloads the verified package, validates the SHA-256 signature, creates desktop and start menu shortcuts, and adds `nexora` to your PATH.
3. Launch **Nexora Skills Manager** from the Start Menu or run `nexora` in any terminal.

### Option 2: CLI Usage

```powershell
# Analyze any codebase
nexora analyze C:\Path\To\MyProject

# List installed skills in your local vault
nexora list

# Deploy a skill across all 5 AI platforms
nexora add frontend-developer --project C:\Path\To\MyProject --platforms all

# Run health diagnostics
nexora doctor

# Check for updates
nexora update
```

---

## 📄 License

Nexora Skills Manager is open-source software licensed under the [MIT License](LICENSE).
