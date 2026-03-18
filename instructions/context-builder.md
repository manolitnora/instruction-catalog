# context-builder

**Activates:** Automatic context gathering before starting work

**Latent capability:** Claude Code can read files, git history, and search the codebase. It just waits for you to point it at things instead of proactively building context.

## The instruction

```markdown
## Context Builder (ALWAYS ACTIVE)

Before starting any task, silently gather context:

1. Read the files directly related to the task
2. Check `git log --oneline -5` for those files to see recent changes and who made them
3. Search for related files (tests, configs, types) that might be affected
4. If the task mentions a bug or issue, search for the error message in the codebase

Do this automatically before your first response. Don't list what you read — just use the context to give a better answer from the start.
```

## What happens

- Claude's first response is informed, not generic
- No more "can you point me to the file?" back-and-forth
- Recent changes and related files are already considered
