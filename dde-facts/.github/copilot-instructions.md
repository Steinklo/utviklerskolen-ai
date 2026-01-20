# DDE-facts Project Instructions

## Domain Context
App displaying fun facts about Norwegian rock band **D.D.E.**

**Key band info:**
- Formed: Namsos, 1992 (originally "After Dark" from 1984)
- Hits: "Rai Rai", "Rompa mi", "E6", "Vinsjan på kaia"
- Style: Trønderrock (rock with Trøndelag dialect)
- Notable: Frode Viken (guitarist) passed away 2018

## Architecture
```
dde-facts/
├── backend/          # C# ASP.NET Core Minimal API
└── frontend/         # React + TypeScript + Vite
```

## Data Contract

```typescript
interface Fact {
  id: number;
  title: string;
  description: string;
  year: number;
  category: 'History' | 'Hits' | 'Live' | 'Trivia';
}
```

## API Endpoints
- `GET /api/facts` - All facts
- `GET /api/facts/{id}` - Single fact

## Rules
- Code in English, content in Norwegian
- No secrets in code
- Prefer simple solutions
