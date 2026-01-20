# DDE-facts 🎸

Fun facts about Norwegian rock band **D.D.E.** - a learning project for Utviklerskolen Kristiansand.

## About D.D.E.

D.D.E. (originally "After Dark") is a Norwegian rock band from Namsos, formed in 1992. Known for their "Trønderrock" style - rock music with lyrics in Trøndelag dialect. Hits include "Rai Rai", "E6", and "Vinsjan på kaia".

## Tech Stack

| Component | Technology |
|-----------|------------|
| **Backend** | C# ASP.NET Core Minimal API (.NET 9+) |
| **Frontend** | React 18 + TypeScript + Vite |
| **Styling** | Tailwind CSS |
| **Data Fetching** | TanStack Query |
| **Testing** | xUnit (backend), Vitest (frontend) |

## Getting Started

### Prerequisites
- [.NET 9 SDK](https://dotnet.microsoft.com/download)
- [Node.js 20+](https://nodejs.org/)

### Backend
```bash
cd backend
dotnet restore
dotnet run --project src/DdeFacts.Api
# API runs on http://localhost:5000
```

### Frontend
```bash
cd frontend
npm install
npm run dev
# App runs on http://localhost:5173
```

### Run Tests
```bash
# Backend
cd backend && dotnet test

# Frontend
cd frontend && npm test
```

## Project Structure

```
dde-facts/
├── backend/
│   ├── src/
│   │   └── DdeFacts.Api/
│   │       ├── Program.cs
│   │       ├── Models/
│   │       ├── DTOs/
│   │       └── Services/
│   └── tests/
│       └── DdeFacts.Api.Tests/
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   ├── hooks/
│   │   ├── services/
│   │   └── types/
│   └── tests/
└── .claude/              # Claude Code configuration
```

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/facts` | Get all D.D.E. facts |
| GET | `/api/facts/{id}` | Get a specific fact |

### Response Format
```json
{
  "facts": [
    {
      "id": 1,
      "title": "Fra After Dark til D.D.E.",
      "description": "Bandet startet som After Dark i 1984...",
      "year": 1984,
      "category": "History"
    }
  ]
}
```

## AI-Assisted Development

This project is configured for AI-assisted development with both **Claude Code** and **GitHub Copilot**.

### Claude Code Features

The `.claude/` directory contains:

| Feature | Description |
|---------|-------------|
| **Agents** | `code-reviewer` and `test-runner` for automated tasks |
| **Skills** | `dde-expert` for band knowledge, `code-review` for quality checks |
| **Commands** | `/test`, `/build`, `/add-fact` for quick actions |
| **Hooks** | Auto-formatting, sensitive file protection |

See [CLAUDE.md](CLAUDE.md) for full documentation.

### GitHub Copilot

Copilot instruction files:
- `.github/copilot-instructions.md` - Project context
- `backend/.copilot/instructions.md` - C# patterns
- `frontend/.copilot/instructions.md` - React/TS patterns

## Development Guidelines

### Code Style
- **Backend**: PascalCase for classes, camelCase for locals
- **Frontend**: PascalCase for components, camelCase for functions

### Commit Messages
```
feat: add category filter to facts list
fix: handle empty facts response
docs: update API documentation
test: add FactService unit tests
```

### Pull Requests
- Run `/test` before submitting
- Use `/build` to verify build passes
- Request code review

## License

MIT - Educational project for Utviklerskolen Kristiansand.

---

Made with ❤️ in Kristiansand
