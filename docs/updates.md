# Update Center & Releases

Nexora Skills Manager features a built-in, secure **Update Center** to keep your application and engineering skills continuously up to date.

---

## 🔄 How Updates Work

1. **Automatic Discovery**: Nexora checks for available updates against the official public distribution repository (`abhishek01032007-pixel/Nexora`) on application startup or when clicking **Check for Updates** in the Update Center.
2. **Cryptographic Validation**: Update payloads are downloaded over HTTPS and verified against SHA-256 checksums before installation.
3. **Atomic Installation & Rollback**: Updates are staged and applied transactionally. If an update encounters an issue, the application automatically rolls back to the previous working version.
4. **Data Preservation**: Updates upgrade only application runtime and desktop binaries; user project registries and custom skill files are preserved byte-for-byte.

---

## 📦 Official Release Authority

All official stable updates, manifests, and release assets are published exclusively through:
`https://github.com/abhishek01032007-pixel/Nexora/releases`
