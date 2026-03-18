<p align="center">
  <img src="mascot.png" alt="instruction-catalog mascot" width="400">
</p>

<h1 align="center">instruction-catalog</h1>

<p align="center"><strong>Unlock what Claude Code already knows how to do.</strong></p>

<p align="center">A collection of one-paragraph instructions that activate latent capabilities in Claude Code.<br>No code. No plugins. No dependencies. Just paste into your CLAUDE.md.</p>

---

## What is this?

Claude Code can read files, write files, search code, run commands, reason about problems, and remember across sessions. But it doesn't do most of these things **proactively** — it waits for you to ask.

Each instruction in this catalog activates a behavior that Claude Code already has the capability to perform but doesn't do automatically. One paragraph in your `~/.claude/CLAUDE.md` and the behavior is live across every terminal, every project.

## How to use

1. Browse the catalog below
2. Copy the instruction you want
3. Paste it into `~/.claude/CLAUDE.md`
4. Done. It's active everywhere.

Or install multiple at once:

```bash
git clone https://github.com/manolitnora/instruction-catalog.git
cd instruction-catalog
chmod +x install.sh && ./install.sh
```

The installer lets you pick which instructions to activate.

---

## The Catalog

### Memory

| Instruction | What it activates | Link |
|---|---|---|
| **session-scribe** | Auto-documents SOPs, dead ends, lessons, and key commands on every turn. Memory decays — unused knowledge fades, reinforced knowledge survives. | [Install](instructions/session-scribe.md) |

### Code Quality

| Instruction | What it activates | Link |
|---|---|---|
| **auto-reviewer** | Reviews its own code changes before presenting them. Catches bugs, style issues, and missing edge cases before you see them. | [Install](instructions/auto-reviewer.md) |
| **refactor-guard** | Before modifying a function, traces every caller. Prevents breaking changes from going unnoticed. | [Install](instructions/refactor-guard.md) |
| **dependency-check** | Before adding a new package, searches the codebase for existing solutions. Prevents duplicate dependencies. | [Install](instructions/dependency-check.md) |

### Debugging

| Instruction | What it activates | Link |
|---|---|---|
| **bug-hunter** | When a test fails, checks git blame and recent changes first. Finds regressions instead of debugging from scratch. | [Install](instructions/bug-hunter.md) |
| **error-pattern** | When hitting an error, searches memory and codebase for the same error string. Surfaces past fixes instantly. | [Install](instructions/error-pattern.md) |

### Understanding

| Instruction | What it activates | Link |
|---|---|---|
| **test-first-reader** | When asked about unfamiliar code, reads the tests first to understand intent before reading implementation. | [Install](instructions/test-first-reader.md) |
| **context-builder** | Before starting work, reads related files, recent git history, and open issues. Builds full context silently. | [Install](instructions/context-builder.md) |

### Safety

| Instruction | What it activates | Link |
|---|---|---|
| **commit-guard** | Before any git commit, checks for secrets, large files, and unintended changes. Prevents accidental exposure. | [Install](instructions/commit-guard.md) |
| **blast-radius** | Before modifying shared code, estimates how many files and tests are affected. Warns before high-impact changes. | [Install](instructions/blast-radius.md) |

---

## How instructions work

Claude Code reads `~/.claude/CLAUDE.md` on **every message**. Any instruction in that file becomes a standing order that Claude follows continuously.

```
Traditional plugin:              Instruction:
──────────────────               ────────────
Install package                  Paste paragraph
Configure settings               Done
Import module
Write integration code
Handle errors
Maintain forever
```

The LLM already has the capability. The instruction just tells it when to use it.

For the full philosophy, see [Instruction Architecture](INSTRUCTION_ARCHITECTURE.md).

---

## Create your own

An instruction follows this pattern:

```
1. What can Claude Code already do?        (read, write, search, reason)
2. What doesn't it do automatically?       (the behavior you want)
3. Write the instruction that bridges it.   (one paragraph)
4. Claude fills in the rest.               (edge cases, judgment, adaptation)
```

**Template:**

```markdown
## [Name] (ALWAYS ACTIVE)

This is not optional. Follow this on EVERY turn.

**When:** [trigger condition]
**Do:** [the behavior]
**Rules:**
- [constraint 1]
- [constraint 2]
```

Submit your instructions as a PR. If it activates a real latent capability with zero code, it belongs here.

---

## FAQ

**Is this prompt engineering?**
No. Prompt engineering optimizes a single query. Instruction architecture creates persistent autonomous behaviors that run across every session.

**Will too many instructions slow Claude down?**
No. They're text in a config file, not running processes. Claude reads them as context. Keep the total under ~2000 words for best results.

**Can instructions conflict?**
Yes. If two instructions give contradictory rules, Claude will try to reconcile them or follow the most specific one. Keep instructions focused and non-overlapping.

**Do these work with Cursor/Windsurf/Copilot?**
The instructions can be pasted into `.cursorrules` or similar files, but full functionality (especially memory-dependent instructions like session-scribe) requires Claude Code's built-in memory system.

---

## License

MIT
