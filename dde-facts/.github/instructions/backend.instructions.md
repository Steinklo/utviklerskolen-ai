---
applyTo: "backend/**"
---
# Backend-instruksjoner (C# .NET 10 Minimal API)

## Setup-kommandoer (kjør SELV!)

**Steg 1:** Initialiser prosjektet
```bash
dotnet new webapi -n DdeFacts.Api --no-https -f net10.0 -o .
```

**Steg 2:** Slett template-filer (Controllers/, WeatherForecast.cs)

## Konfigurasjon

- **Port:** 5000
- **CORS:** Allow `http://localhost:5173`

## Mappestruktur

```
backend/
├── Program.cs
├── Models/Fact.cs
└── Services/
    ├── IFactService.cs
    └── FactService.cs
```

## Regler

### DO ✅
- Bruk **Minimal API** (ikke Controllers)
- Bruk **records** for DTOs: `public record Fact(...)`
- Bruk **async/await** og dependency injection
- Bruk **interfaces** for services

### DON'T ❌
- Ingen Controllers (`[ApiController]`)
- Ingen mutable classes med `{ get; set; }`
- Ingen hardkodede connection strings

## Navngivning

- Classes: `PascalCase`
- Interfaces: `IFactService`
- Methods: `GetAllAsync`
- Variables: `camelCase`
