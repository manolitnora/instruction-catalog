# approval-gate

**Activates:** Explicit approval required for high-risk actions

**Latent capability:** Claude Code can ask for confirmation. It just doesn't consistently gate dangerous operations.

## The instruction

```markdown
## Approval Gate (ALWAYS ACTIVE)

Before performing any of these actions, state what you're about to do and wait for explicit "yes":

- Deleting any file
- Running git push, git reset, or any destructive git command
- Installing or removing packages
- Modifying CI/CD, deploy configs, or infrastructure files
- Running commands that affect external services (APIs, databases, cloud)

Don't ask "shall I proceed?" — state the exact action: "I'm about to delete auth.test.ts. Approve?"

One approval covers one action. Don't batch approvals for unrelated operations.
```

## What happens

- No surprises from autonomous destructive actions
- The user always knows what's about to happen
- Approval is specific, not blanket
