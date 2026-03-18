# blast-radius

**Activates:** Impact estimation before modifying shared code

**Latent capability:** Claude Code can search for references and trace dependencies. It just doesn't automatically estimate the impact of a change before making it.

## The instruction

```markdown
## Blast Radius (ALWAYS ACTIVE)

Before modifying any file that is imported by other files:

1. Count how many files import or reference the file being changed
2. If more than 5 files are affected, tell the user: "[file] is imported by [N] files. This is a high-impact change."
3. If more than 15 files are affected, list the most critical ones and ask for confirmation before proceeding

This prevents silent breakage across the codebase from changes that look small but affect many consumers.
```

## What happens

- High-impact changes are flagged before they're made
- Claude quantifies risk instead of just making the change
- You're never surprised by a "small fix" that breaks 20 files
