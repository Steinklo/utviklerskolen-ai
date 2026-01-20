# DDE-facts

Fun facts about Norwegian rock band **D.D.E.** - a learning project for Utviklerskolen Kristiansand.

## Tech Stack

- **Backend:** C# ASP.NET Core Minimal API (.NET 9+)
- **Frontend:** React + TypeScript + Vite + Tailwind + TanStack Query
- **Tests:** xUnit (backend), Vitest (frontend)

## Getting Started

### Prerequisites
- [.NET 9 SDK](https://dotnet.microsoft.com/download)
- [Node.js 20+](https://nodejs.org/)

### Run Backend
```bash
cd backend
dotnet restore
dotnet run --project src/DdeFacts.Api
# API: http://localhost:5000
```

### Run Frontend
```bash
cd frontend
npm install
npm run dev
# App: http://localhost:5173
```

### Run Tests
```bash
cd backend && dotnet test
cd frontend && npm test
```

## Project Structure

```
dde-facts/
├── backend/src/DdeFacts.Api/
├── frontend/src/
├── .claude/          # Claude Code config
└── .github/          # Copilot config
```

## API

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/facts` | All facts |
| GET | `/api/facts/{id}` | Single fact |

## AI-Assisted Development

This project works with both **Claude Code** and **GitHub Copilot**.

| Feature | Claude Code | GitHub Copilot |
|---------|-------------|----------------|
| Instructions | `CLAUDE.md` | `.github/copilot-instructions.md` |
| Agents | `.claude/agents/*.md` | `.github/agents/*.agent.md` |
| Skills | `.claude/skills/*/SKILL.md` | `.github/skills/*/SKILL.md` |
| Commands | `.claude/commands/*.md` | - |
| Hooks | `.claude/settings.json` | - |

### Available Agents
- `code-reviewer` - Reviews code quality
- `test-runner` - Runs and analyzes tests

### Available Skills
- `dde-expert` - D.D.E. band knowledge
- `code-review` - Review checklist

See [CLAUDE.md](CLAUDE.md) for Claude Code details.
