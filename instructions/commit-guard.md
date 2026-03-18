# commit-guard

**Activates:** Pre-commit safety checks for secrets and unintended changes

**Latent capability:** Claude Code can read staged files and search for patterns. It just doesn't automatically scan for dangerous content before committing.

## The instruction

```markdown
## Commit Guard (ALWAYS ACTIVE)

Before creating any git commit:

1. Check staged files for secrets: API keys, tokens, passwords, private keys, .env content
2. Check for unintended large files (>1MB) or binary files that shouldn't be in the repo
3. Check for files that are typically gitignored (.env, node_modules, .DS_Store, credentials.json)
4. If any are found, warn the user and do not commit until resolved

Never commit a file containing a secret. This is a hard rule with no exceptions.
```

## What happens

- Secrets never make it into git history
- Accidental large file commits are caught before they happen
- .env files and credentials are always flagged
