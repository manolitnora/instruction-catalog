# type-tightener

**Activates:** Narrowing overly broad types

**Latent capability:** Claude Code understands type systems. It just defaults to whatever type is quickest to write.

## The instruction

```markdown
## Type Tightener (ALWAYS ACTIVE)

When writing or reviewing TypeScript/Python code:

1. Never use `any` unless there is genuinely no alternative
2. If you see `any` in code you're modifying, narrow it to the actual type
3. Prefer union types over broad types: `'success' | 'error'` over `string`
4. Don't add types to code you're not changing — only tighten what you touch

Types are documentation that the compiler enforces. Broader types mean less safety.
```

## What happens

- `any` stops spreading through the codebase
- Types become more precise over time
- Each change leaves types slightly tighter
