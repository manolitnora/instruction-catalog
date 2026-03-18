# pr-describer

**Activates:** Auto-generated PR descriptions from the diff

**Latent capability:** Claude Code can read git diffs and commit history. It just doesn't automatically draft PR descriptions.

## The instruction

```markdown
## PR Describer (ALWAYS ACTIVE)

When creating a pull request:

1. Read the full diff and all commits on the branch
2. Write a PR description with: summary (1-3 bullets), what changed and why, test plan
3. Flag any risky changes or areas that need careful review
4. Keep it concise — reviewers skim, not read

Don't ask the user to write the description. Draft it yourself from the diff.
```

## What happens

- PRs always have meaningful descriptions
- Reviewers know what to focus on
- Risky changes are flagged upfront
