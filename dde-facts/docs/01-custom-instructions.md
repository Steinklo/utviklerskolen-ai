# Nivå 1: Custom Instructions

Lær hvordan instruksjonsfiler styrer hva Copilot genererer.

---

## Hva er Custom Instructions?

En markdown-fil som forteller Copilot om prosjektet ditt:
- Teknologier og rammeverk
- Kodekonvensjoner
- Datamodeller

**Filplassering:** `.github/copilot-instructions.md`

---

## Øvelse 1: Legg til en ny kategori (10 min)

Appen har 4 kategorier: History, Hits, Live, Trivia.

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
2. Skriv: `@workspace Create a new Fact about Bjarne Brøndbo with category Members`
3. Sjekk at Copilot bruker den nye kategorien

---

## Øvelse 2: Legg til en logging-regel (10 min)

**Din oppgave:** Definer hvordan logging skal gjøres i prosjektet.

### Steg 1: Åpne instruksjonsfilen

Åpne `.github/copilot-instructions.md`

### Steg 2: Legg til under "Rules"

Legg til en ny seksjon:

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
2. Skriv: `@workspace Create a FactService method that gets a fact by ID with proper logging`
3. Sjekk at Copilot:
   - Bruker ILogger
   - Logger på riktig nivå
   - Inkluderer kontekst

---

## Eksperiment: Hva skjer når du fjerner regler? (5 min)

Nå skal du **bryte** instruksjonene for å forstå hvorfor de er viktige.

### Test 1: Fjern en regel

1. Åpne `.github/copilot-instructions.md`
2. Kommenter ut logging-regelen du nettopp la til
3. Be Copilot generere samme kode igjen
4. **Observér:** Hva er annerledes?

### Test 2: Endre datamodellen

1. Fjern `year` fra Data Contract
2. Be Copilot lage et nytt fact
3. **Observér:** Inkluderer den `year` fortsatt?

### Rydd opp

Fjern kommentarene og gjenopprett instruksjonene før du går videre.

---

## Nøkkelpunkter

- Instruksjoner styrer Copilots forslag
- Vær spesifikk - Copilot gjør det du sier
- Test endringer umiddelbart
- Fjerner du en regel, forsvinner atferden

---

**Neste:** [Nivå 2: Agents, Skills, Agent Mode og Hooks](02-agents-and-skills.md)
