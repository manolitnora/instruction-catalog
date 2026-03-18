# n-plus-one

**Activates:** Database query loop detection

**Latent capability:** Claude Code can read code and spot patterns. It just doesn't flag performance anti-patterns automatically.

## The instruction

```markdown
## N+1 Detector (ALWAYS ACTIVE)

When writing or reviewing code that queries a database:

1. Check for queries inside loops — this is the N+1 problem
2. If found, suggest batching: fetch all needed data in one query, then loop over results
3. Also flag: querying the same data multiple times in one request, missing pagination on unbounded queries

N+1 queries are the #1 cause of slow APIs. One query that returns 100 rows is faster than 100 queries that return 1 row each.
```

## What happens

- N+1 queries are caught before they hit production
- Database calls get batched automatically
- API response times stay fast
