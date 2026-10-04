# Contributing to Nexora Skills Manager

Thank you for your interest in contributing to **Nexora Skills Manager**!

Nexora is a high-performance, enterprise-grade desktop orchestrator for managing, sharing, and deploying engineering skills, rules, and AI configurations across multiple AI platforms (Google Antigravity, Cursor, GitHub Copilot, Claude Code, and OpenAI Codex).

This repository serves as the official distribution authority, skill catalog repository, and public contribution hub.

---

## Ways to Contribute

### 1. Community Skill Submissions (Public Repository)
We welcome developers to submit new AI agent skills to the official catalog:
- Skills must follow the standard `SKILL.md` format with valid YAML frontmatter (`name`, `description`).
- Fork this repository and add your skill under `skills/<skill-name>/` or contribute metadata to `catalog/skills-index.json`.
- Validate against our public schemas: `schemas/skill.manifest.v1.json` and `schemas/skill.catalog.v1.json`.
- Submit a Pull Request targeting the `main` branch.

### 2. Bug Reports & Feature Requests
- Check existing issues before opening a new one.
- Use our [Issue Templates](https://github.com/abhishek01032007-pixel/Nexora/issues/new/choose) to report bugs, UI glitches, or request features.

### 3. Core Engine & UI Collaboration
Development of the core Windows desktop engine, Electron bridge, and PowerShell runtime is coordinated through our development repository.
- To request collaborator access, reach out directly to maintainers via GitHub.

---

## How to Fix UI & UX Errors via Pull Requests

If you are fixing a UI rendering bug, layout issue, or responsive styling glitch:

### 1. Button & DOM Event Binding
* **Rule**: Never leave buttons or interactive elements without an identifier or event handler.
* **Standard**: Assign a descriptive `id` (e.g., `id="btn-deploy-skill"`) or `data-action` attribute to every interactive element.
* **Lifecycle**: Attach event listeners inside the view component's `bindEvents()` or `mount()` lifecycle method.
* **Integrity**: Ensure there are **0 dead links** (`href="#"`) and **0 unbound buttons**.

### 2. Modal Dialogs & Back-Navigation
When repairing or adding modals (`UpdateModal`, `ConfirmationDialog`, `WorkflowDialog`, `SideSheet`):
* Always provide a visible close button (`.btn-close` or `data-action="close"`).
* Implement backdrop click dismissal so clicking outside the dialog closes it.
* Support keyboard accessibility: listen for the `Escape` key (`keydown`) to dismiss active modals.
* Restore focus to the triggering element when dismissed.

### 3. Asynchronous Transitions & Loading Feedback
* Nexora utilizes smooth transitions for all asynchronous backend operations.
* Never leave the UI unresponsive during long-running tasks (such as skill downloads, catalog scans, or updates).
* Show loading spinners, skeleton cards, or `LoadingModal` states.
* Ensure all bridge invocations are asynchronous (`async/await`) to keep the renderer thread fluid at 60 FPS.

---

## How to Fix Backend & IPC Issues

If your fix involves backend logic or IPC communication:

### 1. Three-Layer IPC Parity
Nexora enforces a strict 3-tier boundary:
1. **Registry** (`desktop/registry/operations.js`): Declares the operation name and parameter specifications.
2. **Preload Whitelist** (`desktop/preload.js`): Registers the operation in the context isolation `VALID_OPERATIONS` set.
3. **Bridge Host** (`desktop/bridge/NexoraDesktopBridgeHost.ps1`): Handles the operation and executes the corresponding engine cmdlet.
* *Rule*: Any change to IPC operations must maintain parity across all three layers.

### 2. Safe PowerShell Execution
* All backend scripts must execute cleanly on both Windows PowerShell 5.1 and PowerShell 7+.
* **Zero Code Injection**: Never use string concatenation with `Invoke-Expression` (`iex`). Always use strongly-typed parameters.
* **Encoding Safety**: Save files in UTF-8 without BOM or ASCII-safe strings to prevent encoding mismatches across Windows codepages.

---

## Design System & Styling Guidelines

Nexora uses the **Daylight Design System**:
* **CSS Custom Properties**: Always use variables defined in `ui/styles/` or `desktop/renderer/index.css`:
  - `--color-surface`: Card, sheet, and modal backgrounds
  - `--color-primary`: Accent color for CTAs, buttons, and active tabs
  - `--color-background`: Canvas background
  - `--color-text`: High-contrast body text
  - `--radius-sm`, `--radius-md`, `--radius-lg`: Border radii
* **Line Clamping**: When truncating multi-line text, always declare both `-webkit-line-clamp` and the standard `line-clamp` property for CSS compliance.
* **Transitions**: Use micro-animations with durations between `150ms` and `250ms` using `cubic-bezier(0.4, 0, 0.2, 1)`.

---

## Testing & Verification Protocol

Before submitting a Pull Request, verify that all test suites and audits pass locally:

```powershell
# 1. Verify syntax across all PowerShell and JavaScript files
powershell -NoProfile -ExecutionPolicy Bypass -File "scripts/verify-all-powershell.ps1"
node scripts/verify-all-syntax.js
node scripts/verify-es-imports.js
node scripts/verify-html-assets.js

# 2. Run backend cmdlet and IPC parity audits
node scripts/audit-backend-functions.js
node scripts/audit-ipc-operations.js

# 3. Run UI interaction and navigation audits
node scripts/audit-ui-and-backend.js
node scripts/audit-ui-interactions.js

# 4. Run full desktop test suites
node scripts/run-all-desktop-tests.js
```

---

## Pull Request (PR) Workflow

1. **Fork the Repository**: Create a fork of `abhishek01032007-pixel/Nexora` on GitHub.
2. **Create a Feature Branch**:
   ```bash
   git checkout -b fix/ui-modal-dismiss
   # or
   git checkout -b feat/catalog-rust-skill
   ```
3. **Make Surgical, Focused Changes**: Keep your changes specific to the issue or feature. Avoid unrelated formatting changes.
4. **Run Verification**: Ensure all audits and verification tests pass.
5. **Submit Your Pull Request**:
   - Reference any relevant issues (e.g., `Fixes #12`).
   - Include before-and-after screenshots or screen recordings for UI changes.
   - Describe your testing steps and verification results.

---

## Code of Conduct

We are committed to providing a welcoming, inclusive, and harassment-free environment for all contributors. Please communicate constructively, respectfully, and collaboratively in issues, discussions, and pull requests.

---

## Reporting Security Vulnerabilities

Please **do not** report security vulnerabilities via public GitHub issues. Follow the instructions in our [Security Policy](SECURITY.md) to disclose issues responsibly via GitHub Private Vulnerability Reporting.
