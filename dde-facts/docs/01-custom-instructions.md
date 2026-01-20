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

Legg til en ny seksjon "Logging" med disse reglene:
- Use ILogger for all logging
- Log at Info level for successful operations
- Log at Warning level for handled errors
- Log at Error level for exceptions
- Always include context (e.g., fact ID, operation name)

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

## Øvelse 3: Legg til en Swagger-regel (10 min)

**Din oppgave:** Legg til en regel om at alle endpoints skal ha Swagger-dokumentasjon.

### Steg 1: Åpne backend-instruksjonene

Åpne `backend/.copilot/instructions.md`

### Steg 2: Legg til en ny DO-regel

Under "Key Patterns", legg til en ny seksjon:

**Tittel:** `### ✅ DO: Add Swagger documentation`

**Innhold:** Et kodeeksempel som viser `.WithName()`, `.WithDescription()` og `.Produces<T>()` på et endpoint.

Se på de eksisterende DO/DON'T mønstrene i filen for inspirasjon.

### Steg 3: Test regelen

1. Åpne Copilot Chat
2. Skriv:
   ```
   @workspace Create a new endpoint GET /api/facts/random that returns a random fact
   ```
3. Sjekk at Copilot inkluderer Swagger-metodene

---

## Øvelse 4: Legg til error handling-regler (10 min)

**Din oppgave:** Definer hvordan feil skal håndteres i frontend.

### Steg 1: Åpne frontend-instruksjonene

Åpne `frontend/.copilot/instructions.md`

### Steg 2: Legg til en Error Handling seksjon

Legg til to nye mønstre:

**DO:** Vis brukervennlige feilmeldinger på norsk med Tailwind-styling (rød bakgrunn, tydelig tekst).

**DON'T:** Vis tekniske feilmeldinger direkte til brukeren (som `error.message`).

### Steg 3: Test regelen

1. Åpne Copilot Chat
2. Skriv:
   ```
   @workspace Create an error component for when facts fail to load
   ```
3. Sjekk at Copilot lager bruker-vennlige feilmeldinger

---

## Øvelse 5: Lag instruksjoner for ditt eget prosjekt (bonus)

**Din oppgave:** Lag en instruksjonsfil for et prosjekt du jobber med.

### Steg 1: Opprett filen

Lag en ny fil `my-project-instructions.md` (hvor som helst).

### Steg 2: Fyll inn malen

```markdown
# [Prosjektnavn]

## Tech Stack
- Backend: [teknologi]
- Frontend: [teknologi]
- Database: [teknologi]

## Data Models
[Beskriv hovedmodellene]

## Patterns

### ✅ DO: [Navn på mønster]
[Beskriv hva som er bra praksis]

### ❌ DON'T: [Navn på anti-mønster]
[Beskriv hva som skal unngås]

## Rules
- [Regel 1]
- [Regel 2]
```

### Steg 3: Test med Copilot

Åpne filen i VS Code og bruk Copilot Chat til å generere kode. Følger den instruksjonene?

---

## Nøkkelpunkter

✅ Instruksjoner styrer Copilots forslag
✅ Vær spesifikk med DO/DON'T eksempler
✅ Test hver regel du legger til
✅ Iterer basert på resultatene

---

**Neste:** [Nivå 2: Agents og Skills](02-agents-and-skills.md)
