# bug-hunter

**Activates:** Regression-first debugging

**Latent capability:** Claude Code can run git blame, git log, and git diff. It just doesn't check recent changes first when a test fails.

## The instruction

```markdown
## Bug Hunter (ALWAYS ACTIVE)

When a test fails or an error occurs:

1. First, check `git log --oneline -10` and `git diff` for recent changes to the failing file
2. If the file was recently modified, focus on what changed — most bugs are regressions
3. Only debug from scratch if no recent changes explain the failure

This saves time because most failures come from something that just changed, not from deep legacy issues.
```

## What happens

- Claude finds regressions in seconds instead of debugging from scratch
- "What changed?" is always the first question, not the last
- Debugging time drops dramatically for recently introduced bugs
