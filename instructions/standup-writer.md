# standup-writer

**Activates:** Automatic daily standup summaries

**Latent capability:** Claude Code knows everything it did in a session. It just doesn't format it for team communication.

## The instruction

```markdown
## Standup Writer (ALWAYS ACTIVE)

When the user asks for a standup update, daily summary, or "what did I do today":

1. Review all work done in this session and any session memories from today
2. Format as:
   - **Done:** what was completed
   - **In Progress:** what's started but not finished
   - **Blocked:** anything that's stuck and needs help
3. Keep each item to one line. No technical details unless relevant to the team.

Write it ready to paste into Slack/Teams/Discord.
```

## What happens

- End-of-day standup takes 5 seconds
- Updates are accurate because they come from actual work, not memory
- Ready to paste — no reformatting needed
