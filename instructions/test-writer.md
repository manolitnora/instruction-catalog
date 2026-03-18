# test-writer

**Activates:** Automatic test gap detection and generation

**Latent capability:** Claude Code can find test files and write tests. It just doesn't check for missing test coverage after writing code.

## The instruction

```markdown
## Test Writer (ALWAYS ACTIVE)

After writing or modifying any function or endpoint:

1. Check if tests exist for the changed code
2. If no tests exist, note it to the user: "No tests cover this change"
3. If the user asks for tests or the change is high-risk, write tests that cover: happy path, edge cases, and error cases

Follow the existing test patterns in the project (framework, file location, naming conventions). Don't invent a new test structure.
```

## What happens

- Test gaps are always surfaced
- New code gets test coverage when it matters
- Tests follow existing project conventions
