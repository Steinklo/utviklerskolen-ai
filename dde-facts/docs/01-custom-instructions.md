# Nivå 1: Custom Instructions

Lær å skrive instruksjoner som styrer hva Copilot genererer.

---

## Hva er Custom Instructions?

En markdown-fil som forteller Copilot om prosjektet ditt:
- Teknologier og rammeverk
- Kodekonvensjoner
- Prosjektstruktur

**Filplassering:** `.github/copilot-instructions.md`

---

## Øvelse 1: Legg til en ny kategori (10 min)

D.D.E.-appen har 4 kategorier: History, Hits, Live, Trivia.

**Din oppgave:** Legg til en ny kategori "Members" for fakta om bandmedlemmene.

### Steg 1: Åpne instruksjonsfilen

Åpne `.github/copilot-instructions.md`

### Steg 2: Finn Data Contract seksjonen

Legg til "Members" i category-listen:

```typescript
category: 'History' | 'Hits' | 'Live' | 'Trivia' | 'Members';
```

### Steg 3: Test med Copilot

1. Åpne Copilot Chat (`Ctrl+Shift+I`)
2. Skriv:
   ```
   @workspace Create a new Fact about Bjarne Brøndbo with category Members
   ```
3. Sjekk at Copilot bruker den nye kategorien

---

## Øvelse 2: Legg til en logging-regel (10 min)

**Din oppgave:** Legg til regler for hvordan logging skal gjøres i prosjektet.

### Steg 1: Åpne instruksjonsfilen

Åpne `.github/copilot-instructions.md`

### Steg 2: Legg til under "Rules"

```markdown
## Logging
- Use ILogger for all logging
- Log at Info level for successful operations
- Log at Warning level for handled errors
- Log at Error level for exceptions
- Always include context (e.g., fact ID, operation name)
```

### Steg 3: Test regelen

1. Åpne Copilot Chat
2. Skriv:
   ```
   @workspace Create a FactService method that gets a fact by ID with proper logging
   ```
3. Sjekk at Copilot:
   - Bruker ILogger
   - Logger på riktig nivå
   - Inkluderer kontekst

---

## Øvelse 3: Legg til en ny API-endpoint regel (10 min)

**Din oppgave:** Legg til en regel om at alle endpoints skal ha Swagger-dokumentasjon.

### Steg 1: Åpne backend-instruksjonene

Åpne `backend/.copilot/instructions.md`

### Steg 2: Legg til en ny DO-regel

```markdown
### ✅ DO: Add Swagger documentation
```csharp
app.MapGet("/api/facts", async (IFactService service) =>
    Results.Ok(await service.GetAllAsync()))
    .WithName("GetAllFacts")
    .WithDescription("Returns all D.D.E. facts")
    .Produces<FactsResponse>(200);
```
```

### Steg 3: Test regelen

1. Åpne Copilot Chat
2. Skriv:
   ```
   @workspace Create a new endpoint GET /api/facts/random that returns a random fact
   ```
3. Sjekk at Copilot inkluderer `.WithName()` og `.WithDescription()`

---

## Øvelse 4: Legg til error handling-regler (10 min)

**Din oppgave:** Definer hvordan feil skal håndteres i frontend.

### Steg 1: Åpne frontend-instruksjonene

Åpne `frontend/.copilot/instructions.md`

### Steg 2: Legg til en ny seksjon

```markdown
## Error Handling

### ✅ DO: Show user-friendly error messages
```typescript
if (error) {
  return (
    <div className="text-red-600 p-4 rounded bg-red-50">
      <h3 className="font-bold">Noe gikk galt</h3>
      <p>Kunne ikke laste fakta. Prøv igjen senere.</p>
    </div>
  );
}
```

### ❌ DON'T: Show technical errors to users
```typescript
// Avoid showing raw error messages
if (error) return <div>{error.message}</div>;
```
```

### Steg 3: Test regelen

1. Åpne Copilot Chat
2. Skriv:
   ```
   @workspace Create an error component for when facts fail to load
   ```
3. Sjekk at Copilot lager bruker-vennlige feilmeldinger på norsk

---

## Øvelse 5: Lag instruksjoner for ditt eget prosjekt (bonus)

Tenk på et prosjekt du jobber med. Lag en instruksjonsfil med minst:
- Tech stack
- 2 DO/DON'T eksempler
- 1 custom regel

```markdown
# Mitt Prosjekt

## Tech Stack
- [Dine teknologier]

## Patterns

### ✅ DO: [Ditt mønster]
[Kodeeksempel]

### ❌ DON'T: [Anti-mønster]
[Kodeeksempel]

## Rules
- [Din regel]
```

---

## Nøkkelpunkter

✅ Instruksjoner styrer Copilots forslag
✅ Vær spesifikk med DO/DON'T eksempler
✅ Test hver regel du legger til
✅ Iterer basert på resultatene

---

**Neste:** [Nivå 2: Agents og Skills](02-agents-and-skills.md)
