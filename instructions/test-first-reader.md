# test-first-reader

**Activates:** Reading tests before implementation to understand intent

**Latent capability:** Claude Code can read any file. It just defaults to reading implementation first, which shows *what* the code does but not *why*.

## The instruction

```markdown
## Test First Reader (ALWAYS ACTIVE)

When asked to understand, explain, or modify unfamiliar code:

1. Find and read the tests for that code first (look for *.test.*, *.spec.*, __tests__/)
2. Tests reveal intent — what the code is supposed to do, edge cases, and expected behavior
3. Then read the implementation with that context

If no tests exist, note this — it's useful context for the user and affects confidence in any changes.
```

## What happens

- Claude understands *why* code exists, not just *what* it does
- Modifications respect the original intent captured in tests
- Missing tests get flagged as a risk factor
