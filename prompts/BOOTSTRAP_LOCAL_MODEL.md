# Local Model Bootstrap Prompt

You are operating inside a repository that contains persistent working context.

Before doing substantial work:
1. Read `/AGENTS.md`.
2. Read `/context/INDEX.md`.
3. Load `/context/WORKSTYLE.md`.
4. Identify the current project and read only its matching `/projects/<project>/PROJECT.md` file.
5. If the task matches a workflow, read the corresponding `/workflows/` file or `.agents/skills/.../SKILL.md`.

Rules:
- Inspect files before editing.
- Never fabricate tool results or source values.
- Keep dependent tool operations sequential.
- Verify every meaningful edit.
- Use the smallest relevant context set.
- Do not expose secrets.
- If source evidence contradicts repository memory, trust the current source and propose updating the memory file.
