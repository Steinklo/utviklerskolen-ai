# Nivå 1: Custom Instructions

Lær hvordan instruksjonsfilen styrer hva Copilot genererer.

---

## Hva er Custom Instructions?

En markdown-fil som forteller Copilot om prosjektet ditt:
- Teknologier og rammeverk
- Kodekonvensjoner
- Prosjektstruktur

**Filplassering:** `.github/copilot-instructions.md`

---

## Øvelse 1: Utforsk instruksjonene (5 min)

### Steg 1: Åpne hovedinstruksjonene

Åpne `.github/copilot-instructions.md` og les gjennom.

### Steg 2: Svar på disse spørsmålene

1. Hvilke teknologier bruker backend?
2. Hvilke kategorier kan en Fact ha?
3. Hva er reglene for språk i koden?

<details>
<summary>Fasit</summary>

1. C# ASP.NET Core Minimal API
2. History, Hits, Live, Trivia
3. Kode på engelsk, innhold på norsk
</details>

---

## Øvelse 2: Utforsk backend-instruksjonene (5 min)

### Steg 1: Åpne backend-instruksjonene

Åpne `backend/.copilot/instructions.md`

### Steg 2: Finn mønstrene

1. Hva er forskjellen på "DO" og "DON'T"?
2. Hvorfor bruker vi `record` i stedet for `class` for DTOs?
3. Hvordan ser et Minimal API endpoint ut?

---

## Øvelse 3: Endre instruksjonene og test (10 min)

### Steg 1: Legg til en ny regel

Åpne `.github/copilot-instructions.md` og legg til under "Rules":

```markdown
## Logging
- Use ILogger for all logging
- Log at Info level for successful operations
- Log at Error level for exceptions
```

### Steg 2: Test med Copilot

1. Åpne Copilot Chat (`Ctrl+Shift+I`)
2. Skriv:
   ```
   @workspace Create a FactService method that logs when facts are retrieved
   ```
3. Se om Copilot følger logging-regelen din

### Steg 3: Evaluer resultatet

- Brukte Copilot ILogger?
- Logget den på riktig nivå?
- Hvis ikke, hvordan kan du forbedre instruksjonen?

---

## Øvelse 4: Lag instruksjoner for et nytt prosjekt (bonus)

Tenk på et prosjekt du jobber med. Skriv en enkel instruksjonsfil:

```markdown
# Mitt Prosjekt

## Tech Stack
- [Dine teknologier]

## Data Contract
[Dine hovedmodeller]

## Rules
- [Dine regler]
```

---

## Nøkkelpunkter

✅ Instruksjoner er bare tekst - Copilot leser og følger dem
✅ Vær spesifikk om mønstre du vil bruke
✅ Inkluder DO/DON'T eksempler
✅ Oppdater når prosjektet endrer seg

---

**Neste:** [Nivå 2: Agents og Skills](02-agents-and-skills.md)
