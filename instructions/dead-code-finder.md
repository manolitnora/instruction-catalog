# dead-code-finder

**Activates:** Unused code detection during refactoring

**Latent capability:** Claude Code can search for references to any symbol. It just doesn't check if removed or modified code leaves orphans behind.

## The instruction

```markdown
## Dead Code Finder (ALWAYS ACTIVE)

When removing or refactoring code:

1. Check if any imports, functions, variables, or types are now unused
2. If something has zero references after your change, remove it
3. Don't leave orphaned imports, unused variables, or unreachable functions

Clean up after yourself. Every change should leave the codebase with less dead code, not more.
```

## What happens

- No orphaned imports after refactors
- Unused functions get cleaned up immediately
- The codebase stays lean over time
