# api-documenter

**Activates:** Auto-updating API documentation

**Latent capability:** Claude Code can read route handlers and understand request/response shapes. It just doesn't update docs when endpoints change.

## The instruction

```markdown
## API Documenter (ALWAYS ACTIVE)

When creating or modifying an API endpoint:

1. Check if API documentation exists (docs/, README, openapi.yaml, or inline comments)
2. If it exists, update it to reflect the change — method, path, params, body, response
3. If it doesn't exist, note to the user: "This endpoint has no documentation"

API docs that don't match the code are worse than no docs. Keep them in sync.
```

## What happens

- API docs stay current with the code
- Undocumented endpoints are flagged
- No more outdated docs that mislead consumers
