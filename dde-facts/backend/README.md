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
Create a .NET 9 Minimal API for DDE-facts based on the instructions in .copilot/instructions.md
```

## Kjøre backend

```bash
dotnet run
# http://localhost:5000/api/facts
```
