# Clan Codex

## Purpose

Collaborative Pokémon trading/codex helper used by a clan to replace large manual messaging lists.

## Repository

Known repository: `masterwillian/clan-codex`.

## Stack

- Next.js
- React / TypeScript
- Supabase
- PostgreSQL
- Vercel

Inspect current versions before making assumptions.

## Core concepts

- Each player has an individual codex/inventory state.
- Clan and allies views aggregate or expose relevant member state.
- Import flows parse codex/deposit HTML to avoid manual entry.
- Trade/delivery flows should avoid requesting Pokémon/rarities the receiver already has in codex or available inventory.
- Pending deliveries have been redesigned toward grouped, compact presentations rather than one row per item.

## Important historical lesson

A Supabase/PostgREST default 1,000-row result limit previously caused later records to appear missing. Pagination was required for large tables such as codex progress, inventory, trades, and trade items.

When counts or rank/state appear stale:
1. verify the write reached the database;
2. verify the query is not truncated/paginated incorrectly;
3. verify aggregation logic;
4. verify UI cache/state refresh;
5. compare raw database state with rendered values.

## Editing policy

Do not infer current architecture solely from this summary. Inspect the live repository and migrations first.
