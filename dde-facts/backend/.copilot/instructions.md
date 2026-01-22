# Backend-instruksjoner (C# .NET 10 Minimal API)

## VIKTIG: Kjør disse kommandoene SELV!

**Du MÅ kjøre disse kommandoene i terminalen - ikke bare vis dem!**

### Steg 1: Initialiser .NET-prosjektet
```bash
dotnet new webapi -n DdeFacts.Api --no-https -f net10.0 -o .
```

### Steg 2: Slett template-filer vi ikke trenger
```bash
rm -rf Controllers/ WeatherForecast.cs
```

**⚠️ ALDRI slett `.copilot/`-mappen eller `instructions.md`-filer!**

**Kjør BEGGE kommandoene før du genererer kode!**

## Configuration

- **Port:** 5000
- **CORS:** Allow `http://localhost:5173` (frontend dev server)

## Project Structure
```
backend/
├── DdeFacts.Api.csproj
├── Program.cs
├── Models/
│   └── Fact.cs
└── Services/
    ├── IFactService.cs
    └── FactService.cs
```

## Required: DdeFacts.Api.csproj
```xml
<Project Sdk="Microsoft.NET.Sdk.Web">
  <PropertyGroup>
    <TargetFramework>net10.0</TargetFramework>
    <Nullable>enable</Nullable>
    <ImplicitUsings>enable</ImplicitUsings>
  </PropertyGroup>
</Project>
```

## Required: Program.cs Template
```csharp
var builder = WebApplication.CreateBuilder(args);

// Add CORS
builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(policy =>
    {
        policy.WithOrigins("http://localhost:5173")
              .AllowAnyHeader()
              .AllowAnyMethod();
    });
});

// Add services
builder.Services.AddScoped<IFactService, FactService>();

var app = builder.Build();

// Use CORS
app.UseCors();

// Endpoints
app.MapGet("/api/facts", async (IFactService service) =>
    Results.Ok(new { facts = await service.GetAllAsync() }));

app.MapGet("/api/facts/{id:int}", async (int id, IFactService service) =>
    await service.GetByIdAsync(id) is { } fact
        ? Results.Ok(fact)
        : Results.NotFound());

app.Run();
```

## Key Patterns

### DO: Records for DTOs
```csharp
public record Fact(int Id, string Title, string Description, int Year, string Category);
```

### DON'T: Mutable Classes
```csharp
// Avoid
public class Fact { public int Id { get; set; } }
```

### DO: Async + DI
```csharp
public interface IFactService
{
    Task<IEnumerable<Fact>> GetAllAsync(CancellationToken ct = default);
    Task<Fact?> GetByIdAsync(int id, CancellationToken ct = default);
}

builder.Services.AddScoped<IFactService, FactService>();
```

### DON'T: Controllers
```csharp
// Avoid - use Minimal API instead
[ApiController]
public class FactsController : ControllerBase { }
```

## Naming
- Classes: `PascalCase`
- Interfaces: `IFactService`
- Methods: `GetAllAsync`
- Variables: `camelCase`

## Running
```bash
cd backend
dotnet run
# API available at http://localhost:5000/api/facts
```
