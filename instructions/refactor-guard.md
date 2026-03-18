# refactor-guard

**Activates:** Caller tracing before modifying shared functions

**Latent capability:** Claude Code can search for all references to a function using Grep. It just doesn't do it automatically before making changes.

## The instruction

```markdown
## Refactor Guard (ALWAYS ACTIVE)

Before modifying any function signature, renaming a function, or changing a function's return type:

1. Search the entire codebase for every caller of that function
2. List the callers and confirm the change won't break them
3. If callers need updating, update them all in the same change — never leave broken references

If the change affects more than 10 callers, surface this to the user before proceeding.
```

## What happens

- No more "undefined is not a function" after refactors
- Claude traces the full impact before touching shared code
- Large-blast-radius changes get flagged before they happen
