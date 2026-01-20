# Utviklerskolen AI Projects

Learning projects for Utviklerskolen Kristiansand with AI-assisted development.

## Current Project

**DDE-facts** - Fun facts about Norwegian rock band D.D.E.

```
dde-facts/
├── CLAUDE.md      # Project instructions
├── README.md      # Getting started
├── .claude/       # Claude Code config (agents, skills, hooks)
├── backend/       # C# ASP.NET Core API
└── frontend/      # React + TypeScript
```

## Claude Code Features

### File Locations
| Feature | Path |
|---------|------|
| Agents | `.claude/agents/*.md` |
| Skills | `.claude/skills/*/SKILL.md` |
| Commands | `.claude/commands/*.md` |
| Hooks | `.claude/settings.json` |

### Quick Examples

**Agent** (`.claude/agents/code-reviewer.md`):
```yaml
---
name: code-reviewer
description: Reviews code quality. Use after writing code.
tools: Read, Grep, Glob
model: sonnet
---
You are a code reviewer...
```

**Skill** (`.claude/skills/my-skill/SKILL.md`):
```yaml
---
name: my-skill
description: When this activates
---
Knowledge content...
```

**Command** (`.claude/commands/test.md`):
```yaml
---
description: Run all tests
---
Run backend and frontend tests...
```

**Hooks** (`.claude/settings.json`):
```json
{
  "hooks": {
    "PostToolUse": [{
      "matcher": "Edit",
      "hooks": [{ "type": "command", "command": "prettier --write" }]
    }]
  }
}
```

### Modes
Toggle with `Shift+Tab`: default → acceptEdits → plan
