# Common Corrections

These are failure modes to avoid.

- Do not generate a plausible-looking result when the user's source can be inspected directly.
- Do not merge two measurements because their labels look related; preserve the geometry/data model the user specified.
- Do not call a partial mockup "finished" when required source material has not been analyzed.
- Do not assume a database write happened because the UI action succeeded.
- Do not assume a missing record is absent until pagination/limits/filters are checked.
- Do not equate a loot-profile level with a map spawn level unless the source explicitly does so.
- Do not replace a requested exact first-party value with an approximate external value.
