## Description
<!-- Provide a clear, concise summary of the changes and motivation behind them. -->

## Type of Change
- [ ] 🐛 Bug fix (non-breaking change fixing an issue or UI glitch)
- [ ] ✨ New feature (non-breaking change adding functionality)
- [ ] 🎨 UI/UX enhancement (design tokens, styling, accessibility, animation)
- [ ] 🔒 Security fix or hardening
- [ ] ⚡ Performance optimization
- [ ] 📝 Documentation update

## Areas Affected
- [ ] Frontend UI (Components, Views, Styles, Modals)
- [ ] Electron IPC Bridge (Preload, Operations Registry, Bridge Host)
- [ ] Backend Engine (Application, Services, Adapters, Security, Updates)
- [ ] Tests / Scripts / CI Workflows
- [ ] Documentation

## Verification Checklist
Before submitting, please ensure you have run and verified the following:

- [ ] All 35 Desktop test suites pass: `node scripts/run-all-desktop-tests.js`
- [ ] All 34 Engine test suites pass: `powershell -ExecutionPolicy Bypass -File "engine\Tests\Run-AllEngineTests.ps1"`
- [ ] Backend functions audited (0 missing cmdlets): `node scripts/audit-backend-functions.js`
- [ ] IPC operations & whitelist parity verified: `node scripts/audit-ipc-operations.js`
- [ ] UI interaction audit passed (0 dead links, 0 unbound buttons): `node scripts/audit-ui-and-backend.js`
- [ ] Code adheres to Daylight Design Tokens and Vanilla ES module standards.
- [ ] No hardcoded secrets, temporary files, or sensitive artifacts included.

## Screenshots / Evidence (if applicable)
<!-- For UI changes, attach screenshots or recordings demonstrating the before/after behavior. -->

## Related Issues
<!-- Link the issue: e.g. Fixes #123 -->
