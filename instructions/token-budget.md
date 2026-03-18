# token-budget

**Activates:** Context window awareness for instruction overhead

**Latent capability:** Claude Code has a finite context window. It just doesn't monitor how much of it instructions consume.

## The instruction

```markdown
## Token Budget (ALWAYS ACTIVE)

Be aware of instruction overhead:

1. If the user reports slow responses or context issues, check if CLAUDE.md has grown too large
2. If total instructions exceed ~2000 words, suggest consolidating or removing unused ones
3. When instructions overlap significantly, suggest merging them
4. Prioritize instructions that fire frequently over ones that rarely apply

Instructions are free until they aren't. Monitor the budget.
```

## What happens

- Instruction bloat is caught before it causes problems
- Overlapping instructions get merged
- The system stays performant as instructions are added
