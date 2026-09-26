# Lyth Multi-Account Workspace

## Goal

A multi-profile workspace capable of controlling multiple browser identities/sessions with persistent storage, routing, lifecycle handling, and health monitoring.

## Known architectural themes

- Electron-style persistent profile partitions.
- Profile runtime abstraction.
- Profile/group/history/bookmark persistence.
- Proxy and Tor routing.
- Tor/profile ControlPort handling.
- Process/SOCKS recovery.
- Health engine.
- External-IP observation from the same browser/account session.

## Reliability priorities

- Explicit lifecycle state.
- Observable external IP and routing state.
- Separate connectivity checks from Tor-validation checks.
- Detect and recover failed proxy/Tor processes without silently changing identity assumptions.
- Prefer fail-closed behavior for privacy-sensitive routing.

Always inspect the current repository before treating this as the current implementation.
