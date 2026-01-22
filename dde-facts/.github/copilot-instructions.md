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

## Required Facts (use EXACTLY these)

| id | title | description | year | category |
|----|-------|-------------|------|----------|
| 1 | Grunnleggelsen | D.D.E. ble dannet i Namsos i 1992. Bandet het opprinnelig "After Dark" fra 1984, men byttet navn til Det Dansen Elansen (D.D.E.) | 1992 | History |
| 2 | Rai Rai | Låten "Rai Rai" fra 1994 ble en massiv hit og er fortsatt bandets signaturlåt. Den spilles på nesten hver eneste konsert | 1994 | Hits |
| 3 | E6 | Sangen "E6" handler om europaveien som går gjennom Trøndelag. Den ble en folkefavoritt og symbol på trøndersk identitet | 1995 | Hits |
| 4 | Russetreff | D.D.E. har spilt på russetreff over hele Norge siden 2000-tallet og er blant de mest bookede artistene for russen | 2000 | Live |
| 5 | Vinsjan på kaia | En av de mest kjente D.D.E.-låtene som handler om havnearbeid og kaikultur i Trøndelag | 1996 | Hits |

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
