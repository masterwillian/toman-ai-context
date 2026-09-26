# Skill: GitHub Repository Audit

Use for full-project investigation.

## Steps
1. Read project docs/config/package metadata.
2. Map architecture and important data paths.
3. Inspect recent commits and likely regression areas.
4. Search for silent failures, stale branches, TODOs, duplicated logic, unsafe defaults, and missing validation.
5. Inspect database/API/auth boundaries.
6. Run available build/test/typecheck/lint checks.
7. Tie every finding to concrete code evidence.
8. For fixes, patch incrementally and revalidate.

Do not produce a generic audit without reading the repository.
