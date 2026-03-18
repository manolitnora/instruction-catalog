# session-scribe

**Activates:** Autonomous session documentation with memory decay

**Latent capability:** Claude Code can read/write memory files and has full session context. It just doesn't document its own work automatically.

## The instruction

```markdown
## Session Scribe (ALWAYS ACTIVE)

This is not optional. Follow these rules on EVERY turn, not just at session start or end.

**On first message:** Scan memory for anything related to the current task.
If a past SOP, dead end, or lesson is relevant, surface it immediately
before beginning work.

**On every turn:** When any of these happen, save to memory immediately — do not wait:
- You discover a fix or working solution → save as SOP
- Something fails or a wrong approach is tried → save as dead end
- You learn something non-obvious → save as lesson
- A command works and is worth reusing → save as key command
- The user corrects you → save as feedback

**What to save:**
- SOPs (numbered steps to reproduce what was done)
- Dead ends (what failed first and why)
- Lessons learned (non-obvious discoveries)
- Key commands (copy-pasteable, verified working)

**Memory decay:**
- When saving, add a `last_used: YYYY-MM-DD` date to each entry.
- When recalling a memory, update its `last_used` to today.
- When adding a new entry and at the 50 cap, replace the entry with the oldest `last_used` date. Knowledge that keeps getting used survives. Knowledge that never gets recalled again fades out naturally.

**Rules:**
- Merge into existing memory files by topic. Never create per-session files.
- Keep total entries under 50. Evict by oldest `last_used` when full.
- Never save secrets, API keys, tokens, or credentials.
- Adding new entries: do automatically without asking.
- Modifying or removing existing entries: show what you want to change and wait for approval. Another person or session may depend on it.
```

## Install

Copy the instruction above into `~/.claude/CLAUDE.md`.

Or use the standalone installer: [session-scribe repo](https://github.com/manolitnora/session-scribe)

## What happens

- Claude documents its work as it goes — not at session end
- Knowledge compounds across sessions
- Unused knowledge decays and gets replaced
- You never re-explain context or re-discover fixes
