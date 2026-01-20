# Backend

Denne mappen er tom - med vilje!

## Live Demo

Under workshopen vil vi bruke GitHub Copilot til å generere hele backend-en basert på instruksjonene i `.copilot/instructions.md`.

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
