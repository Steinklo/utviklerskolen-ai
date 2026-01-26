# GitHub Copilot Workshop

Lær å bruke AI-verktøy til å bygge en komplett app med **kun instruksjonsfiler** og enkle prompts.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Forutsetninger

- VS Code med GitHub Copilot
- .NET 10 SDK
- Node.js 20+
- Copilot CLI (`copilot` i terminalen)

### Kom i gang

```bash
git clone https://github.com/Steinklo/utviklerskolen-ai.git
cd utviklerskolen-ai/dde-facts
code .
```

---

## Generer appen

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

## Oppgaver

### Oppgave A: Skills - Legg til fakta

Bruk `dde-expert` skill for å legge til bandmedlemmer:

```
@workspace Les .github/skills/dde-expert/SKILL.md og bruk informasjonen til å legge til en ny kategori "Members" med fakta om bandmedlemmene.
Oppdater data contract i copilot-instructions.md, backend og frontend.
```

Test: Restart backend og refresh frontend.

---

### Oppgave B: CLI - Søkefelt

Start Copilot CLI og legg til søkefunksjonalitet:

```bash
copilot
```

Skriv i chatten:
```
Legg til et søkefelt i FactsList som filtrerer fakta på tittel og beskrivelse
```

Test: Skriv i søkefeltet og se at fakta filtreres.

---

### Oppgave C: CLI - Favoritter

Legg til mulighet for å markere favoritter:

```bash
copilot
```

Skriv i chatten:
```
Legg til en favoritt-knapp på hver fact-card. Bruk localStorage for å lagre favoritter. Vis en stjerne-ikon som toggle.
```

Test: Klikk på stjerna og refresh - favorittene skal huskes.

---

### Oppgave D: CLI - Animasjoner

Legg til retro terminal-animasjoner:

```bash
copilot
```

Skriv i chatten:
```
Legg til en typewriter-effekt når fakta vises første gang. Bruk CSS animations, ikke JavaScript.
```

Test: Refresh siden og se teksten "skrives ut".

---

### Oppgave E: CLI - Random fact

Legg til en knapp som viser tilfeldig fakta:

```bash
copilot
```

Skriv i chatten:
```
Legg til en "Tilfeldig fakta"-knapp som viser én random fact i en modal med retro terminal-stil
```

Test: Klikk på knappen og se en tilfeldig fakta.

---

## Oppsummering

Du har lært:

1. **Instructions** - Styr hva Copilot genererer
2. **Agent Mode** - La Copilot gjøre endringer på tvers av filer
3. **Skills** - Gjenbrukbar ekspertkunnskap (dde-expert)
4. **CLI** - Implementer features via terminalen (copilot)

**Hovedlærdom:** Jo bedre instruksjoner, jo bedre resultat!

---

Made for Utviklerskolen Kristiansand
