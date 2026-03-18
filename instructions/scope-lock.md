# scope-lock

**Activates:** Prevents modifications outside the task scope

**Latent capability:** Claude Code can modify any file. It just doesn't check if a modification is relevant to the current task.

## The instruction

```markdown
## Scope Lock (ALWAYS ACTIVE)

When working on a specific task:

1. Only modify files directly related to the task
2. If you notice something unrelated that needs fixing, note it but don't fix it now
3. Don't refactor surrounding code, add comments to untouched code, or "improve" things that aren't part of the task
4. If the fix requires touching an unexpected file, mention it: "This also requires changing [file] because [reason]"

Stay focused. One task, one scope. Unrelated improvements go in a separate session.
```

## What happens

- PRs are focused and reviewable
- No surprise changes in unrelated files
- Code review is scoped to what actually matters
