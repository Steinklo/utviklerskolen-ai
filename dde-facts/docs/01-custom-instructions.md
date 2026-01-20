# Nivå 1: Custom Instructions

Custom Instructions er den enkleste måten å tilpasse GitHub Copilot til prosjektet ditt.

## Hva er Custom Instructions?

En markdown-fil som forteller Copilot om prosjektet ditt:
- Hvilke teknologier du bruker
- Kodekonvensjoner og mønstre
- Prosjektstruktur

Copilot leser denne filen automatisk og tilpasser forslagene sine.

## Filplassering

```
.github/copilot-instructions.md
```

## Eksempel

Se vår fil: [.github/copilot-instructions.md](../.github/copilot-instructions.md)

```markdown
# Prosjektnavn

## Tech Stack
- Backend: C# ASP.NET Core
- Frontend: React + TypeScript

## Regler
- Bruk records for DTOs
- Bruk React Query for data fetching
```

## Øvelse 1: Les instruksjonene

1. Åpne `.github/copilot-instructions.md`
2. Les gjennom innholdet
3. Forstå hvordan det beskriver DDE-facts prosjektet

## Øvelse 2: Test Copilot

1. Åpne VS Code i dette prosjektet
2. Opprett en ny fil `test.ts`
3. Skriv: `// create a function to fetch facts`
4. Se hvordan Copilot foreslår kode basert på instruksjonene

## Øvelse 3: Endre instruksjonene

1. Legg til en ny regel i `copilot-instructions.md`:
   ```markdown
   ## Logging
   - Always use console.error for errors
   - Never use console.log in production code
   ```
2. Test at Copilot følger den nye regelen

## Tips

- Hold instruksjonene korte og konkrete
- Fokuser på det som er unikt for prosjektet
- Oppdater når prosjektet endrer seg

---

**Neste:** [Nivå 2: Agents og Skills](02-agents-and-skills.md)
