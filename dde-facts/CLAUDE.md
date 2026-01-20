# DDE-facts

Fun facts app about Norwegian rock band **D.D.E.** - Utviklerskolen Kristiansand.

## Quick Start

```bash
# Backend (http://localhost:5000)
cd backend && dotnet run --project src/DdeFacts.Api

# Frontend (http://localhost:5173)
cd frontend && npm run dev

# Tests
cd backend && dotnet test
cd frontend && npm test
```

## Tech Stack

- **Backend:** C# ASP.NET Core Minimal API (.NET 9+)
- **Frontend:** React + TypeScript + Vite + Tailwind + TanStack Query
- **Tests:** xUnit (backend), Vitest (frontend)

## AI Configuration

This project supports both Claude Code and GitHub Copilot.

### Claude Code (`.claude/`)

| Feature | Path | Description |
|---------|------|-------------|
| Agents | `.claude/agents/*.md` | Auto-triggered specialists |
| Skills | `.claude/skills/*/SKILL.md` | Context-activated knowledge |
| Commands | `.claude/commands/*.md` | Slash commands (`/test`, `/build`) |
| Hooks | `.claude/settings.json` | Auto-format, protect files |

**Modes:** Press `Shift+Tab` to toggle: default → acceptEdits → plan

### GitHub Copilot (`.github/`)

| Feature | Path | Description |
|---------|------|-------------|
| Instructions | `.github/copilot-instructions.md` | Project context |
| Agents | `.github/agents/*.agent.md` | Custom agents |
| Skills | `.github/skills/*/SKILL.md` | Agent skills |

### Available Agents & Skills

| Name | Purpose |
|------|---------|
| `code-reviewer` | Reviews code quality and patterns |
| `test-runner` | Runs and analyzes tests |
| `dde-expert` | D.D.E. band knowledge |
| `code-review` | Review checklist |

## Copilot Patterns

See detailed examples in:
- `backend/.copilot/instructions.md` - C# patterns
- `frontend/.copilot/instructions.md` - React/TS patterns
