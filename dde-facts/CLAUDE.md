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

## Claude Code Features

This project uses `.claude/` for AI-assisted development:

### Slash Commands
- `/test` - Run all tests
- `/build` - Build project
- `/add-fact` - Add new D.D.E. fact

### Agents (auto-trigger on relevant tasks)
- `code-reviewer` - Reviews code quality after changes
- `test-runner` - Runs and analyzes test results

### Skills (auto-activate on context)
- `dde-expert` - Band history and facts knowledge
- `code-review` - Code review checklist

### Hooks (run automatically)
- Blocks edits to `.env`, lock files
- Auto-formats TypeScript/C# on save

### Modes
Press `Shift+Tab` to toggle between:
- `default` - Normal prompts
- `plan` - Read-only exploration
- `acceptEdits` - Auto-accept changes

## GitHub Copilot

See pattern examples in:
- `backend/.copilot/instructions.md`
- `frontend/.copilot/instructions.md`
