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
│   ├── Program.cs
│   ├── Models/
│   ├── DTOs/
│   └── Services/
├── frontend/src/
│   ├── components/
│   ├── pages/
│   ├── hooks/
│   └── types/
└── .claude/          # Claude Code config
```

## API

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/facts` | All facts |
| GET | `/api/facts/{id}` | Single fact |

**Response:**
```json
{
  "facts": [{
    "id": 1,
    "title": "Fra After Dark til D.D.E.",
    "description": "Bandet startet som After Dark i 1984...",
    "year": 1984,
    "category": "History"
  }]
}
```

## AI-Assisted Development

### Claude Code
See [CLAUDE.md](CLAUDE.md) for agents, skills, commands, and hooks.

### GitHub Copilot
- `backend/.copilot/instructions.md` - C# patterns
- `frontend/.copilot/instructions.md` - React/TS patterns
