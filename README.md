# Toman AI Context

Portable, versioned operating context for ChatGPT, Codex, and local AI agents.

This repository is not a model export. It stores the reusable layer around a model: working rules, project context, decisions, procedures, examples, and task-specific skills.

## Purpose

Use this repository to make different AI systems behave consistently across accounts and tools without sharing a ChatGPT account.

It is designed for:
- ChatGPT / Codex working with GitHub repositories.
- Local coding agents such as OpenCode.
- Local models served through Ollama or an OpenAI-compatible API.
- Blender automation agents.
- Future agents that can read Markdown files and repository context.

## Load order

An agent should read context in this order:

1. `AGENTS.md`
2. `context/INDEX.md`
3. `context/WORKSTYLE.md`
4. The relevant file under `projects/`
5. The relevant file under `workflows/` or `.agents/skills/`
6. `examples/` only when examples are useful

Do not load every project into every task. Prefer the smallest relevant context set.

## Security model

Do not store passwords, API keys, tokens, cookies, private invite codes, recovery codes, financial credentials, or other secrets here. This repository is intended to be shareable with trusted collaborators.

## Recommended usage

### Codex / repository-aware agents

Open the repository as workspace context. Root `AGENTS.md` contains the default operating contract.

### ChatGPT

Connect GitHub, give the model access to this repository, and instruct it to read `AGENTS.md` plus the relevant project file before working.

### Local models

Use `prompts/BOOTSTRAP_LOCAL_MODEL.md` as the initial system/project prompt and expose the repository through file tools.

## Updating this repository

Promote only durable knowledge here. Chats are working memory; this repository is consolidated memory.

When a task reveals a reusable rule, confirmed project fact, recurring failure mode, or important decision, update the appropriate file instead of copying a whole chat transcript.
