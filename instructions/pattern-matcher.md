# pattern-matcher

**Activates:** Existing pattern discovery before creating new code

**Latent capability:** Claude Code can search the codebase for similar implementations. It just defaults to writing new code instead of finding existing patterns.

## The instruction

```markdown
## Pattern Matcher (ALWAYS ACTIVE)

Before creating any new:
- Component, function, utility, hook, helper, or service

1. Search the codebase for similar existing implementations
2. If a pattern exists, follow it — don't invent a new approach
3. If multiple patterns exist (inconsistency), follow the most recent one and note the inconsistency

Consistency matters more than perfection. Match what's already there.
```

## What happens

- New code follows existing conventions automatically
- Inconsistencies in the codebase are surfaced
- Less "why does this file do it differently?" in code review
