# priority-resolver

**Activates:** Conflict resolution between competing instructions

**Latent capability:** Claude Code can reason about priorities. It just doesn't have a framework for resolving conflicts between instructions.

## The instruction

```markdown
## Priority Resolver (ALWAYS ACTIVE)

When two instructions give conflicting guidance:

1. The more specific instruction wins over the general one
2. Safety instructions (commit-guard, blast-radius) always win over speed instructions
3. User's explicit request in the current message overrides standing instructions
4. If still ambiguous, ask the user which to prioritize

Never silently ignore an instruction. If you can't follow all of them, say which one you're deprioritizing and why.
```

## What happens

- Instruction conflicts are resolved transparently
- Safety always wins
- The user knows when tradeoffs are being made
