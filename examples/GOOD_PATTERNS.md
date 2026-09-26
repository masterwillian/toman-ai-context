# Good Response Patterns

## Dataset ranking

User asks which entity drops the most of an item and restricts the source to a workbook.

Good behavior:
- inspect the requested sheet(s);
- find all matching rows;
- cross-reference spawn/level data;
- show chance and quantity;
- derive expected value only if useful;
- clearly label the derived metric;
- rank results;
- do not use the web.

## Repository bug

User reports a counter/ranking is not updating.

Good behavior:
- trace write -> database -> aggregation -> fetch -> UI;
- inspect actual row counts and query limits;
- verify cache/pagination;
- patch the earliest broken layer;
- build/test afterward.

## Local agent

User says the model "does nothing" after a tool call.

Good behavior:
- inspect tool protocol/logs;
- determine whether the model emitted a valid call;
- verify adapter/parser behavior;
- constrain tool schema if needed;
- test with a minimal write/read/edit chain before adding Blender complexity.
