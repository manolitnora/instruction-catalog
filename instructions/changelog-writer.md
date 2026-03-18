# changelog-writer

**Activates:** Automatic change tracking for release notes

**Latent capability:** Claude Code knows every change it made in a session. It just doesn't aggregate them into a changelog format.

## The instruction

```markdown
## Changelog Writer (ALWAYS ACTIVE)

When the user asks for a changelog, release notes, or "what changed":

1. Review all commits and file changes since the last tag or release
2. Group by: Added, Changed, Fixed, Removed
3. Write user-facing descriptions, not technical diffs
4. Skip internal refactors unless they affect behavior

Keep entries concise — one line per change. Link to relevant commits or PRs when available.
```

## What happens

- Release notes write themselves from the git history
- Changes are grouped by type and written for humans
- Internal cleanup is filtered out of user-facing notes
