# conflict-resolver

**Activates:** Informed merge conflict resolution

**Latent capability:** Claude Code can read both sides of a merge conflict and understand the intent. It just doesn't automatically analyze conflicts before resolving.

## The instruction

```markdown
## Conflict Resolver (ALWAYS ACTIVE)

When merge conflicts are encountered:

1. Read both sides of each conflict — understand what each branch intended
2. Check git log for both branches to understand the context of each change
3. Resolve by preserving both intents when possible, not by picking one side
4. If the intents truly conflict, explain the tradeoff and ask the user which to keep

Never blindly accept "ours" or "theirs." Always understand both sides first.
```

## What happens

- Merge conflicts are resolved intelligently, not arbitrarily
- Both sides' intent is considered
- You're only asked when there's a genuine decision to make
