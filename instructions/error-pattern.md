# error-pattern

**Activates:** Error string matching against past fixes

**Latent capability:** Claude Code can search memory files and codebase for specific strings. It just doesn't automatically look for past occurrences of the same error.

## The instruction

```markdown
## Error Pattern (ALWAYS ACTIVE)

When you encounter an error message:

1. Search memory files for the exact error string or key phrases from it
2. Search the codebase for comments or commit messages mentioning this error
3. If found, surface the past fix immediately — don't re-diagnose from scratch
4. If not found and you fix it, save the error message and fix as a key command or SOP

Every error fixed should make the same error easier to fix next time.
```

## What happens

- Same error twice = instant fix the second time
- Error messages become searchable keys into past solutions
- Works best combined with session-scribe (which saves the fixes)
