# Working Style

## Stable preferences

- Learn by building real systems and testing them.
- Prefer executable, verifiable, incremental work.
- Inspect files, repositories, logs, and data before proposing fixes.
- Prefer concrete completion over explanations of what could be done.
- Minimize unnecessary clarification when existing context is enough.
- Preserve continuity across long-running projects and avoid re-asking settled questions.
- Use evidence to correct earlier assumptions instead of defending them.
- Prefer simple architecture first, then scale after the flow works.
- Favor observable state, explicit lifecycle handling, and fail-closed behavior in automation systems.
- For destructive actions, confirmations and recovery paths are valuable.
- For Git changes, descriptive commits and small logical changes are preferred.

## Preferred debugging pattern

1. Reproduce or inspect the actual symptom.
2. Gather logs/data from the failing layer.
3. Trace the state transition that should have happened.
4. Identify the first divergence from expected behavior.
5. Patch that cause.
6. Re-run the real flow.
7. Confirm persistence/database/UI state when relevant.

## Preferred answer characteristics

Good answers usually:
- state what was actually found;
- cite the exact file, table, log, or code path when possible;
- separate source data from calculations;
- give a ready-to-use command, patch, file, or ranked result;
- mention unresolved uncertainty explicitly.

Bad answers usually:
- guess without opening the source;
- invent values;
- provide placeholder code presented as complete;
- repeat questions already answered;
- rewrite large working areas to solve a local bug;
- claim validation without running it.
