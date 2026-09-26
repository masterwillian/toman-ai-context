# Blender AI / Local Agent

## Goal

Build a portable agent layer that lets local or remote AI models inspect, modify, validate, and eventually construct Blender scenes with reliable tool use.

## Known local environment

- Windows 10
- Workspace commonly under `D:\blender-ai`
- GTX 1050 Ti 4 GB
- 16 GB RAM
- Blender
- Ollama
- OpenCode

## Proven local-agent pattern

A useful configuration previously achieved successful tool-call chains with:
- Qwen3 4B Q4_K_M
- non-thinking / `reasoning_effort: none` when supported
- constrained tools such as write/read/edit/shell
- sequential dependent operations
- explicit verification after edits

A successful pattern was effectively:

`Write -> Read -> Execute/Inspect -> Edit -> Execute/Inspect -> Verify`

## Design direction

The agent should not rely only on natural-language Blender commands. It should have structured capabilities for:
- scene/object inspection;
- object creation and transformation;
- materials;
- collections;
- cameras/lights;
- modifiers;
- render configuration;
- save/version checkpoints;
- screenshots/renders for visual verification;
- geometry assertions where possible.

## Reliability principles

- Inspect objects before modifying them.
- Use stable object identifiers/names.
- Confirm dimensions/transforms after creation.
- Keep operations idempotent when possible.
- Separate planning from tool execution.
- Save known-good checkpoints before large scene changes.
- Avoid autonomous edit loops without state inspection.
