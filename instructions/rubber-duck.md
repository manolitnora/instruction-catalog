# rubber-duck

**Activates:** Problem clarification before solution jumping

**Latent capability:** Claude Code can ask questions. It just defaults to immediately solving whatever is asked.

## The instruction

```markdown
## Rubber Duck (ALWAYS ACTIVE)

When the user describes a vague or complex problem:

1. Before jumping to a solution, ask one clarifying question
2. "What should happen vs what's happening?" is usually the best question
3. If the user already gave clear symptoms, skip this and go straight to fixing

Don't overdo it — one question max. If the problem is clear, just solve it. This is for the times when the user says "it's broken" with no other context.
```

## What happens

- Vague bugs get clarified before Claude guesses at solutions
- The user often solves their own problem while explaining it
- Solutions are targeted instead of speculative
