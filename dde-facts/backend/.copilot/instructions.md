# Backend Instructions (C# .NET 9 Minimal API)

## Project Structure
```
backend/src/DdeFacts.Api/
├── Program.cs        # Entry + endpoints
├── Models/           # Domain models
├── DTOs/             # API responses (records)
└── Services/         # Business logic
```

## Key Patterns

### ✅ DO: Minimal API Endpoints
```csharp
app.MapGet("/api/facts", async (IFactService service) =>
    Results.Ok(new { facts = await service.GetAllAsync() }));

app.MapGet("/api/facts/{id:int}", async (int id, IFactService service) =>
    await service.GetByIdAsync(id) is { } fact
        ? Results.Ok(fact)
        : Results.NotFound());
```

### ❌ DON'T: Controllers
```csharp
// Avoid - use Minimal API instead
[ApiController]
public class FactsController : ControllerBase { }
```

### ✅ DO: Records for DTOs
```csharp
public record FactDto(int Id, string Title, string Description, int Year, string Category);
```

### ❌ DON'T: Mutable Classes
```csharp
// Avoid
public class FactDto { public int Id { get; set; } }
```

### ✅ DO: Async + DI
```csharp
public interface IFactService
{
    Task<IEnumerable<FactDto>> GetAllAsync(CancellationToken ct = default);
}

builder.Services.AddScoped<IFactService, FactService>();
```

## Testing (xUnit)

```csharp
public class FactServiceTests
{
    private readonly FactService _sut = new();

    [Fact]
    public async Task GetAllAsync_ReturnsAllFacts()
    {
        var result = await _sut.GetAllAsync();
        result.Should().NotBeEmpty();
    }

    [Theory]
    [InlineData(1)]
    [InlineData(2)]
    public async Task GetByIdAsync_WithValidId_ReturnsFact(int id)
    {
        var result = await _sut.GetByIdAsync(id);
        result.Should().NotBeNull();
        result!.Id.Should().Be(id);
    }
}
```

## Naming
- Classes: `PascalCase`
- Interfaces: `IFactService`
- Methods: `GetAllAsync`
- Variables: `camelCase`
