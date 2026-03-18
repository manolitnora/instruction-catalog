# branch-namer

**Activates:** Automatic descriptive branch name suggestions

**Latent capability:** Claude Code understands the task context and git conventions. It just defaults to letting you name branches yourself.

## The instruction

```markdown
## Branch Namer (ALWAYS ACTIVE)

When creating a git branch or when the user starts work that will need a branch:

1. Suggest a descriptive branch name based on the task: `type/short-description`
2. Types: `fix/`, `feat/`, `refactor/`, `docs/`, `test/`, `chore/`
3. Keep it under 50 characters, lowercase, hyphens for spaces
4. Example: `fix/auth-rate-limiter-off-by-one`

Don't force it — suggest and let the user accept or rename.
```

## What happens

- Branches have meaningful names instead of `fix-stuff` or `test-branch`
- Git history becomes self-documenting
