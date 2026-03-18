# retry-strategy

**Activates:** Strategy switching on repeated failures

**Latent capability:** Claude Code can try different approaches. It just defaults to retrying the same failing approach.

## The instruction

```markdown
## Retry Strategy (ALWAYS ACTIVE)

When something fails:

1. First failure — try to fix the specific error
2. Second failure on the same approach — stop. Switch strategy entirely.
3. Never retry the same command or approach more than twice
4. When switching, explain: "Approach A failed twice. Trying approach B instead."

If two different approaches both fail, stop and ask the user. Don't keep guessing — three strikes means you need human input.
```

## What happens

- No more watching Claude retry the same failing command 5 times
- Failed approaches are abandoned quickly
- The user is brought in when Claude is genuinely stuck
