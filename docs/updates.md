# Update Center & Releases

Nexora Skills Manager features a built-in, secure **Update Center** to keep your skills and desktop host up to date.

---

## How Updates Work

1. **Automatic Check**: Nexora checks for available updates on application startup or when clicking **Check for Updates** in the Update Center.
2. **Cryptographic Validation**: Update payloads are downloaded over HTTPS and verified against SHA-256 checksums before installation.
3. **Atomic Installation & Rollback**: Updates are staged and installed transactionally. If an update encounters an issue, the application automatically rolls back to the previous working version.

---

## Release Authority

**GitHub Releases** on this repository serve as the primary public release authority for Nexora Skills Manager. Each release includes:

- The installer executable (`NexoraSkillsManager-Setup.exe`)
- SHA-256 checksums (`SHA256SUMS.txt`)
- Release notes describing changes and fixes

**`latest.json`** in this repository provides machine-readable metadata about the current stable release (version, platform, installer URL, SHA-256 hash). It is a convenience reference and is automatically updated by the release pipeline when a new version is published.

---

## Distribution Architecture Transition

Nexora is transitioning its public distribution to this official repository (`abhishek01032007-pixel/Nexora`).

- Future application releases and update manifests will be published directly through this repository's GitHub Releases.
- Existing installations will automatically receive the migration update seamlessly without requiring manual re-installation.
- The permanent download URL remains stable across all future versions:
  ```
  https://github.com/abhishek01032007-pixel/Nexora/releases/latest/download/NexoraSkillsManager-Setup.exe
  ```
