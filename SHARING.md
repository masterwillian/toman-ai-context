# Sharing This Context

## Recommended pattern

1. Keep this repository private unless you intentionally want it public.
2. Add trusted collaborators to the GitHub repository with the minimum access they need.
3. Each collaborator uses their own ChatGPT/OpenAI/GitHub account.
4. Give the AI access to this repository and instruct it to read `AGENTS.md` before substantial work.
5. For local agents, start with `prompts/BOOTSTRAP_LOCAL_MODEL.md` and expose repository files through file tools.

## What this shares

- operating rules;
- project summaries;
- durable technical decisions;
- reusable workflows;
- examples and correction patterns;
- agent skills.

## What this intentionally does not share

- ChatGPT account access;
- private memory outside this repository;
- passwords, tokens, API keys, cookies, or recovery codes;
- every raw chat transcript.

## Updating the shared context

When a new durable lesson is discovered, edit the smallest relevant context/project/workflow file and commit it with a descriptive message.
