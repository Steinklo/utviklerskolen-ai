# GitHub Copilot Workshop

Lær å bruke AI-verktøy til å bygge en komplett app med **kun instruksjonsfiler** og enkle prompts.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Workshop-oversikt

| Fase | Aktivitet |
|------|-----------|
| 1 | **Demo**: Agent Mode og Instructions |
| 2 | **Hands-on**: Generer backend + frontend |
| 3 | **Oppgaver**: Modifiser koden |

---

## Forutsetninger

- VS Code med GitHub Copilot
- .NET 10 SDK
- Node.js 20+

### Kom i gang

```bash
git clone https://github.com/Steinklo/utviklerskolen-ai.git
cd utviklerskolen-ai/dde-facts
code .
```

---

## Fase 2: Generer appen

### Backend

1. Åpne Copilot Chat (`Ctrl+Shift+I`)
2. Bytt til **Agent Mode**
3. Skriv:

```
@workspace Sett opp og generer komplett backend basert på instruksjonene.
Kjør ALLE setup-kommandoene i terminalen SELV først, deretter lag applikasjonskoden.
```

4. Godta kommandoer og filer
5. Test: `cd backend && dotnet run` → http://localhost:5000/api/facts

---

### Frontend

1. Ny Copilot Chat i **Agent Mode**
2. Skriv:

```
@workspace Sett opp og generer komplett frontend basert på instruksjonene.
Kjør ALLE setup-kommandoene i terminalen SELV først, deretter lag applikasjonskoden.
```

3. Godta kommandoer og filer
4. Test: `cd frontend && npm run dev` → http://localhost:5173

---

## Fase 3: Oppgaver

### Oppgave A: Legg til ny kategori

Be Copilot legge til bandmedlemmer:

```
@workspace Legg til en ny kategori "Members" med fakta om Bjarne Brøndbo (vokalist) og Frode Viken (gitarist).
Oppdater instruksjonsfilen, backend og frontend.
```

Test: Restart backend og refresh frontend.

---

### Oppgave B: Legg til filter

Først, forstå koden med **Ask Mode**:

```
@workspace Hvordan fungerer FactsList-komponenten?
```

Deretter, bytt til **Agent Mode** og legg til filter:

```
Legg til filterknapper i FactsList som lar brukeren filtrere fakta per kategori.
```

Test: Klikk på filterknappene.

---

### Oppgave C: Legg til søk

```
Legg til et søkefelt i FactsList som filtrerer fakta på tittel og beskrivelse mens brukeren skriver.
```

Test: Skriv i søkefeltet.

---

## Oppsummering

Du har lært:

1. **Instructions** - Styr hva Copilot genererer
2. **Agent Mode** - La Copilot gjøre endringer på tvers av filer
3. **Ask Mode** - Forstå eksisterende kode

**Hovedlærdom:** Jo bedre instruksjoner, jo bedre resultat!

---

Made for Utviklerskolen Kristiansand
