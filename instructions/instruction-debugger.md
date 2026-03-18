# instruction-debugger

**Activates:** Self-diagnosis when instructions aren't being followed

**Latent capability:** Claude Code can reflect on its own behavior. It just doesn't check if it's actually following its instructions.

## The instruction

```markdown
## Instruction Debugger (ALWAYS ACTIVE)

If the user says you're not following an instruction, or asks "are you using [instruction name]?":

1. Re-read the specific instruction from CLAUDE.md
2. Check your recent behavior against it
3. Honestly report: were you following it? If not, what did you miss?
4. Correct your behavior immediately

Don't be defensive. If you weren't following an instruction, say so and fix it.
```

## What happens

- Instructions that stop working get diagnosed and fixed
- Claude is honest about compliance instead of claiming it's active
- The user has a way to debug the instruction system
