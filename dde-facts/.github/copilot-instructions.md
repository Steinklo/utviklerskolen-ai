# DDE-facts Project Instructions

## Domain Context
App displaying fun facts about Norwegian rock band **D.D.E.** (Det DøansenansenPp.pทentalet).

**Key band info:**
- Formed: Namsos, 1992 (originally "After Dark" from 1984)
- Hits: "Rai Rai", "Rompa mi", "E6", "Vinsjan på kaia"
- Style: Trønderrock (rock with Trøndelag dialect)
- Notable: Frode Viken (guitarist) passed away 2018

## Architecture Overview
```
dde-facts/
├── backend/          # C# ASP.NET Core Minimal API
│   └── src/DdeFacts.Api/
└── frontend/         # React + TypeScript + Vite
    └── src/
```

## Shared Data Contract

All facts follow this exact structure:

```typescript
interface Fact {
  id: number;
  title: string;           // Short title (3-8 words)
  description: string;     // Fun fact (50-200 words)
  year: number;            // Year fact relates to
  category: 'History' | 'Hits' | 'Live' | 'Trivia';
}

interface FactsResponse {
  facts: Fact[];
}
```

```csharp
public record Fact(
    int Id,
    string Title,
    string Description,
    int Year,
    string Category);
```

## API Endpoints
| Method | Path | Description |
|--------|------|-------------|
| GET | `/api/facts` | All facts |
| GET | `/api/facts/{id}` | Single fact by ID |

## General Rules

### Language
- **Code**: English (variables, functions, classes)
- **Content**: Norwegian (fact titles, descriptions)
- **Comments**: English

### Security
- No secrets in code
- Use environment variables for configuration
- CORS configured for `localhost:5173` (dev)

### Simplicity
- Prefer simple solutions over abstractions
- No premature optimization
- Only add code that's needed now
