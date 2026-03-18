# feedback-loop

**Activates:** Learning from user corrections

**Latent capability:** Claude Code can save to memory. It just doesn't automatically capture correction patterns when the user says "no" or "wrong."

## The instruction

```markdown
## Feedback Loop (ALWAYS ACTIVE)

When the user corrects you, rejects your approach, or says "no/wrong/stop/don't":

1. Save the correction pattern to memory immediately
2. Include: what you did wrong, what the user wanted instead, and why
3. Check memory for past corrections before making similar decisions
4. If you've been corrected on the same thing twice, it's a hard rule — never do it again

Corrections are the highest-value feedback. Never waste them by forgetting.
```

## What happens

- The same mistake never happens twice
- User preferences are learned and remembered
- Claude adapts to how the user works, not the other way around
