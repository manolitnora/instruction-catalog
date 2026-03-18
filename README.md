<p align="center">
  <img src="mascot.png" alt="instruction-catalog mascot" width="600">
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

### Just want everything?

Use the **[all-in-one](instructions/all-in-one.md)** — all 30 instructions compressed into a single block. Same coverage, ~82% fewer tokens. Paste one block, done.

---

## The Catalog — 30 Instructions

### Layer 1: Capabilities

#### Memory

| Instruction | What it activates | Link |
|---|---|---|
| **session-scribe** | Auto-documents SOPs, dead ends, lessons, and key commands on every turn. Memory decays naturally. | [Install](instructions/session-scribe.md) |

#### Code Quality

| Instruction | What it activates | Link |
|---|---|---|
| **auto-reviewer** | Reviews its own code before presenting it. Catches bugs before you see them. | [Install](instructions/auto-reviewer.md) |
| **refactor-guard** | Traces every caller before modifying a function. Prevents breaking changes. | [Install](instructions/refactor-guard.md) |
| **dependency-check** | Searches codebase for existing solutions before adding new packages. | [Install](instructions/dependency-check.md) |
| **pattern-matcher** | Finds existing patterns in the codebase before creating new code. Enforces consistency. | [Install](instructions/pattern-matcher.md) |
| **dead-code-finder** | Removes orphaned imports and unused functions after refactoring. | [Install](instructions/dead-code-finder.md) |
| **type-tightener** | Narrows `any` and overly broad types when touching TypeScript code. | [Install](instructions/type-tightener.md) |

#### Debugging

| Instruction | What it activates | Link |
|---|---|---|
| **bug-hunter** | Checks git blame and recent changes first when a test fails. Finds regressions fast. | [Install](instructions/bug-hunter.md) |
| **error-pattern** | Searches memory and codebase for the same error string. Surfaces past fixes instantly. | [Install](instructions/error-pattern.md) |
| **flaky-detector** | Reruns failed tests before debugging. Flags intermittent failures as flaky, not broken. | [Install](instructions/flaky-detector.md) |

#### Understanding

| Instruction | What it activates | Link |
|---|---|---|
| **test-first-reader** | Reads tests before implementation to understand intent, not just behavior. | [Install](instructions/test-first-reader.md) |
| **context-builder** | Silently reads related files and git history before starting work. | [Install](instructions/context-builder.md) |
| **codebase-tour** | Maps architecture on first visit to a new project. Saves to memory. | [Install](instructions/codebase-tour.md) |

#### Performance

| Instruction | What it activates | Link |
|---|---|---|
| **n-plus-one** | Spots database queries inside loops. Suggests batching. | [Install](instructions/n-plus-one.md) |
| **bundle-watcher** | Warns when a new package is heavy. Suggests lightweight alternatives. | [Install](instructions/bundle-watcher.md) |

#### Git & Workflow

| Instruction | What it activates | Link |
|---|---|---|
| **branch-namer** | Suggests descriptive branch names from the task context. | [Install](instructions/branch-namer.md) |
| **pr-describer** | Auto-generates PR descriptions from the diff. | [Install](instructions/pr-describer.md) |
| **conflict-resolver** | Reads both sides of merge conflicts before resolving. Preserves intent. | [Install](instructions/conflict-resolver.md) |

#### Documentation

| Instruction | What it activates | Link |
|---|---|---|
| **changelog-writer** | Generates release notes from git history grouped by Added/Changed/Fixed/Removed. | [Install](instructions/changelog-writer.md) |
| **api-documenter** | Updates API docs when endpoints change. Flags undocumented endpoints. | [Install](instructions/api-documenter.md) |

#### Communication

| Instruction | What it activates | Link |
|---|---|---|
| **standup-writer** | Generates daily standup updates ready to paste into Slack/Teams. | [Install](instructions/standup-writer.md) |
| **handoff-note** | Writes context notes so the next person picks up with zero ramp-up time. | [Install](instructions/handoff-note.md) |

#### Safety

| Instruction | What it activates | Link |
|---|---|---|
| **commit-guard** | Blocks secrets, large files, and .env from entering git. | [Install](instructions/commit-guard.md) |
| **blast-radius** | Estimates impact before modifying shared code. Warns on high-impact changes. | [Install](instructions/blast-radius.md) |

### Layer 2: Governance

| Instruction | What it activates | Link |
|---|---|---|
| **constitution** | Hard rules that override everything. Never delete prod data, never commit secrets, never force push main. | [Install](instructions/constitution.md) |
| **audit-trail** | Logs every destructive action with timestamp and reason. | [Install](instructions/audit-trail.md) |
| **approval-gate** | Requires explicit "yes" before destructive operations. Specific, not blanket. | [Install](instructions/approval-gate.md) |
| **scope-lock** | Prevents modifications outside the current task scope. Keeps PRs focused. | [Install](instructions/scope-lock.md) |

### Layer 3: Self-Improvement

| Instruction | What it activates | Link |
|---|---|---|
| **feedback-loop** | Saves every user correction to memory. Same mistake never happens twice. | [Install](instructions/feedback-loop.md) |
| **confidence-signal** | Labels guesses as guesses. Doesn't present uncertainty as fact. | [Install](instructions/confidence-signal.md) |
| **assumption-checker** | Lists assumptions before acting on ambiguous tasks. Catches wrong assumptions early. | [Install](instructions/assumption-checker.md) |
| **retry-strategy** | Switches approach after two failures instead of retrying the same thing. | [Install](instructions/retry-strategy.md) |

### Layer 4: Meta

| Instruction | What it activates | Link |
|---|---|---|
| **instruction-debugger** | Self-diagnoses when instructions aren't being followed. | [Install](instructions/instruction-debugger.md) |
| **priority-resolver** | Resolves conflicts between competing instructions. Safety always wins. | [Install](instructions/priority-resolver.md) |
| **token-budget** | Monitors instruction overhead on context window. Suggests consolidation when bloated. | [Install](instructions/token-budget.md) |
| **instruction-health** | Reports which instructions are firing and which are dormant. Keeps the set lean. | [Install](instructions/instruction-health.md) |

### Layer 5: Teaching

| Instruction | What it activates | Link |
|---|---|---|
| **explain-like-im** | Adapts explanations to the user's demonstrated skill level. | [Install](instructions/explain-like-im.md) |
| **mentor-mode** | Explains WHY behind non-obvious decisions. Teaches principles while working. | [Install](instructions/mentor-mode.md) |
| **rubber-duck** | Asks one clarifying question before jumping to solutions on vague problems. | [Install](instructions/rubber-duck.md) |

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

## Part of the Verra Stack

instruction-catalog is Layer 2 of a three-layer system for giving LLM agents persistent intelligence:

```
Layer 3: verra-kernel            Computation — MCP server with memory decay,
                                 signal processing, inference scoring, crypto
                                 (coming soon)

Layer 2: instruction-catalog     Governance — 30 one-paragraph instructions
 ──▶ YOU ARE HERE                that activate latent LLM capabilities
                                 github.com/manolitnora/instruction-catalog

Layer 1: session-scribe          Memory — autonomous session documentation
                                 with recall, decay, and feedback loop
                                 github.com/manolitnora/session-scribe
```

Each layer works independently. Start with session-scribe. Add instructions when you want more governance. Add the kernel when you need computation.

---

## License

MIT
