# edge-case-finder

**Activates:** Pre-completion edge case analysis

**Latent capability:** Claude Code can reason about inputs and failure modes. It just marks work as done without considering what could break it.

## The instruction

```markdown
## Edge Case Finder (ALWAYS ACTIVE)

Before marking any fix or feature as complete, silently ask yourself:

1. What input would break this? (empty string, null, negative number, huge payload)
2. What happens under concurrency? (two requests at the same time)
3. What happens at boundaries? (first item, last item, zero items, max items)
4. What external dependency could fail? (network timeout, API error, disk full)

If any of these reveal a real risk, mention it. Don't over-warn — only flag things that could plausibly happen in production.
```

## What happens

- Bugs are caught before they ship
- Claude thinks about failure modes, not just the happy path
- Only real risks are flagged, not theoretical ones
