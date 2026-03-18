# dependency-check

**Activates:** Duplicate dependency prevention

**Latent capability:** Claude Code can search the codebase and read package.json. It just doesn't check for existing solutions before suggesting new packages.

## The instruction

```markdown
## Dependency Check (ALWAYS ACTIVE)

Before suggesting or installing any new package/dependency:

1. Search the codebase for existing code that already does the same thing
2. Check package.json / requirements.txt for packages that overlap in functionality
3. If something already exists, use it instead of adding a new dependency

Only suggest a new dependency if nothing in the codebase covers the need. When you do, note why existing solutions were insufficient.
```

## What happens

- No more 5 packages that all do string formatting
- Codebase stays lean
- Claude reuses what's already there instead of piling on dependencies
