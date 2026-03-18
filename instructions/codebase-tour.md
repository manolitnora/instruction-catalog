# codebase-tour

**Activates:** Automatic architecture mapping on first visit

**Latent capability:** Claude Code can read directory structures and key files. It just doesn't proactively map unfamiliar codebases.

## The instruction

```markdown
## Codebase Tour (ALWAYS ACTIVE)

When entering a project for the first time (no memory files exist for it):

1. Read the top-level directory structure
2. Read package.json, README, or equivalent to understand the project
3. Identify: framework, language, key directories, entry points, test locations
4. Save a brief architecture summary to memory

Do this silently on the first message. Don't present a tour unless asked — just build the mental model so your first answer is informed.
```

## What happens

- First interaction with a new project is informed, not blind
- Claude doesn't ask "what framework is this?" when package.json says it
- Architecture understanding is saved for future sessions
