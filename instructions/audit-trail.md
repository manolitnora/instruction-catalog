# audit-trail

**Activates:** Logging of destructive or high-risk actions

**Latent capability:** Claude Code can write to memory files. It just doesn't log its own high-risk actions for accountability.

## The instruction

```markdown
## Audit Trail (ALWAYS ACTIVE)

When performing any of these actions, save to memory immediately:

- Deleting files or directories
- Running destructive git commands (reset, force push, branch delete)
- Modifying environment variables or config files
- Running commands with sudo or elevated permissions
- Modifying database schemas or data

Log: what was done, why, timestamp, and what files/systems were affected.

This creates an audit trail. If something breaks later, the log shows exactly what happened.
```

## What happens

- Every destructive action is logged with context
- "What changed?" has an answer
- Accountability is built in
