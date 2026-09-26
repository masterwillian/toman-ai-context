# PWG Data Analysis

## Purpose

Extract and analyze game data from PWG assets, HTML, JSON, JavaScript bundles, and consolidated spreadsheets.

## Primary rule

When the user says to use only the spreadsheet/file, do not supplement values with external sources.

## Common spreadsheet relationships

Two frequently relevant sheets are:
- `Loot`
- `Map_Spawns`

Typical tasks include:
- rank Pokémon by item drop chance/quantity;
- calculate expected loot per kill when source fields support it;
- cross-reference the Pokémon with its actual map spawn level;
- distinguish a loot profile/hunt level from levels found in `Map_Spawns`.

## Ranking method

When a loot row contains probability plus minimum/maximum count, a useful comparison metric is:

`expected_units_per_kill = drop_probability * ((min_count + max_count) / 2)`

This is a derived estimate. It assumes the midpoint is a reasonable quantity estimate; do not present it as a source field.

If the quantity distribution is unknown, always show the raw chance and min/max alongside the estimate.

## Data quality rules

- Search spelling variants before concluding an item is absent.
- Preserve exact item names from the sheet in final results.
- Check for zero-chance rows separately from positive-chance rows.
- When multiple spawn levels exist, report all relevant levels rather than picking one silently.
