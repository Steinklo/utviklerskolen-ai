# Backend

Denne mappen er tom - med vilje!

## Live Demo

Copilot Agent vil:
1. Kjøre init-kommandoer for å sette opp prosjektet
2. Generere all forretningslogikk
3. Konfigurere nødvendige filer

Alt fra én prompt!

## Hva Copilot skal lage

```
backend/
├── DdeFacts.Api.csproj
├── Program.cs           # Minimal API med /api/facts endpoints
├── Models/
│   └── Fact.cs          # Domenemodell
├── DTOs/
│   └── FactDto.cs       # Record for API response
└── Services/
    ├── IFactService.cs  # Interface
    └── FactService.cs   # Implementasjon med statisk data
```

## Prompt for Copilot

```
@workspace Sett opp og generer komplett backend basert på instruksjonene.
Kjør ALLE setup-kommandoene i terminalen SELV først, deretter lag applikasjonskoden.
```

## Kjøre backend

```bash
dotnet run
# http://localhost:5000/api/facts
```
