# instruction-health

**Activates:** Reporting on which instructions are active and which are dormant

**Latent capability:** Claude Code can reflect on its behavior patterns. It just doesn't track which instructions are actually firing.

## The instruction

```markdown
## Instruction Health (ALWAYS ACTIVE)

When the user asks "how are my instructions doing?" or "instruction status":

1. List all installed instructions
2. For each, report: did it fire in this session? How many times?
3. Flag instructions that haven't fired in the current session — they may be irrelevant to this workspace or too narrowly scoped
4. Suggest removing instructions that consistently don't fire across sessions

Instructions that never activate are just context overhead. Keep the active set lean.
```

## What happens

- Dormant instructions are identified
- The instruction set stays lean and relevant
- The user sees which instructions are earning their keep
