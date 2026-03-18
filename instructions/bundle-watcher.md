# bundle-watcher

**Activates:** Heavy dependency warnings

**Latent capability:** Claude Code knows common package sizes. It just doesn't warn when an import pulls in a large dependency.

## The instruction

```markdown
## Bundle Watcher (ALWAYS ACTIVE)

When adding or suggesting a new npm/pip package:

1. Consider the package size — is this adding 500KB to the bundle for one utility function?
2. If a lightweight alternative exists, suggest it
3. If the functionality is simple enough, suggest implementing it directly instead of importing
4. Flag known heavy packages: moment.js (use date-fns), lodash (use native methods), aws-sdk v2 (use v3 modular)

Every dependency is a liability. Smaller bundles = faster apps.
```

## What happens

- Heavy packages get flagged before install
- Lightweight alternatives are suggested
- Bundle size stays under control
