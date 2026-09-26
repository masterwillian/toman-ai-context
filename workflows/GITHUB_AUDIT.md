# GitHub Audit Workflow

For a request to investigate a repository deeply:

1. Inspect repository metadata, default branch, recent commits, and structure.
2. Read README, package/config files, environment examples, migrations, and deployment config.
3. Map major modules and data flows.
4. Search for TODO/FIXME, disabled checks, duplicated logic, unsafe fallbacks, silent catches, and stale code paths.
5. Inspect database/API boundaries and authentication/authorization assumptions.
6. Run or inspect build/test/lint/typecheck commands when available.
7. Trace the user's reported symptom through the actual call path.
8. Compare against relevant current official documentation when external verification is useful.
9. Report findings by severity and evidence, not by speculation.
10. When asked to fix issues, patch incrementally and validate after each logical group.
