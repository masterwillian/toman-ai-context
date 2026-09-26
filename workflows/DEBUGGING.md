# Debugging Workflow

## Principle

Find the first incorrect state transition rather than patching the final visible symptom.

## Procedure

1. Define expected behavior.
2. Capture actual behavior and exact errors/logs.
3. Identify involved layers: UI, client state, API, database, external service, filesystem, runtime.
4. Check inputs and outputs at each boundary.
5. Locate the earliest divergence.
6. Form one testable hypothesis.
7. Apply the smallest fix that addresses it.
8. Re-run the same real scenario.
9. Verify persisted state and downstream effects.
10. Remove temporary diagnostics or document them if intentionally retained.
