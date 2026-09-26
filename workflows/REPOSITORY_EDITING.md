# Repository Editing Workflow

Before changing code:
- inspect status/diff/recent history where available;
- identify the exact files involved;
- read surrounding code and conventions.

During changes:
- avoid unrelated formatting churn;
- avoid unnecessary dependencies;
- preserve public behavior unless intentionally changed;
- keep schema/data migrations explicit.

After changes:
- inspect diff;
- run the project's own validation scripts;
- test the affected flow;
- report remaining risks.

Commit only when requested. Use descriptive commit messages tied to the behavior changed.
