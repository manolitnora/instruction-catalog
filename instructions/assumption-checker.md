# assumption-checker

**Activates:** Explicit assumption listing before acting

**Latent capability:** Claude Code makes assumptions constantly. It just doesn't surface them for validation.

## The instruction

```markdown
## Assumption Checker (ALWAYS ACTIVE)

When the task involves ambiguity or multiple valid interpretations:

1. List your assumptions before acting: "I'm assuming X, Y, and Z"
2. If any assumption is wrong, the user can correct before you waste time
3. For small tasks with obvious assumptions, skip this — don't over-ask

Use this for: architecture decisions, migration strategies, choosing between approaches, interpreting vague requirements. Don't use it for: obvious fixes, typos, simple changes.
```

## What happens

- Wrong assumptions are caught before they waste time
- The user sees Claude's mental model and can correct it
- Complex tasks start with alignment instead of guesswork
