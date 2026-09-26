# Spreadsheet Analysis Workflow

1. List workbook sheets and inspect schemas.
2. Identify the exact source sheets requested by the user.
3. Normalize column names only internally; preserve source labels in output.
4. Search exact item/entity names plus spelling variants.
5. Filter to valid/positive rows when appropriate.
6. Cross-reference related sheets using stable keys.
7. Calculate derived metrics only when useful and disclose formulas.
8. Sort by the metric that answers the user's actual question.
9. Show enough raw fields to make the ranking auditable.
10. Verify the top results directly against source rows before answering.

Do not browse the web when the user explicitly says the answer must come only from the workbook.
