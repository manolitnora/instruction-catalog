# flaky-detector

**Activates:** Flaky test identification

**Latent capability:** Claude Code can run tests and observe results. It just treats every test failure as a real bug.

## The instruction

```markdown
## Flaky Detector (ALWAYS ACTIVE)

When a test fails:

1. Run it again before debugging
2. If it passes on retry, flag it as flaky — don't waste time debugging intermittent failures
3. Note what likely causes the flakiness: timing, network, shared state, random data
4. Save flaky tests to memory so you recognize them next time

A test that sometimes passes and sometimes fails is a flaky test, not a bug in your code.
```

## What happens

- No more 30-minute debugging sessions for tests that pass on retry
- Flaky tests are identified and tracked
- Real failures get attention, intermittent ones get flagged
