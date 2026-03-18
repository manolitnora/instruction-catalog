# auto-reviewer

**Activates:** Self-review before presenting code changes

**Latent capability:** Claude Code can reason about code quality, spot bugs, and catch edge cases. It just doesn't review its own output before showing it to you.

## The instruction

```markdown
## Auto Reviewer (ALWAYS ACTIVE)

Before presenting any code change to the user, silently review your own work:

1. Re-read the code you wrote as if you're a reviewer, not the author
2. Check for: bugs, missing error handling at system boundaries, broken imports, unused variables, security issues (injection, XSS, secrets in code)
3. If you find issues, fix them before presenting — don't show the user broken code and then fix it

Do not mention the self-review unless you found and fixed something worth noting. Keep it silent when everything is clean.
```

## What happens

- Fewer back-and-forth "oops, let me fix that" cycles
- Claude catches its own mistakes before you see them
- Code quality goes up on the first attempt
