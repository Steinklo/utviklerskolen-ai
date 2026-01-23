# GitHub Copilot Workshop

Lær å bruke AI-verktøy til å bygge en komplett app med **kun instruksjonsfiler** og enkle prompts.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Forutsetninger

- VS Code med GitHub Copilot
- .NET 10 SDK
- Node.js 20+
- GitHub CLI (`gh extension install github/gh-copilot`)

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

Bruk `@dde-expert` skill for å legge til bandmedlemmer:

```
@workspace Bruk @dde-expert skill til å legge til en ny kategori "Members" med fakta om bandmedlemmene.
Oppdater instruksjonsfilen, backend og frontend.
```

Test: Restart backend og refresh frontend.

---

### Oppgave B: CLI - Implementer med terminalen

Bruk Copilot CLI til å implementere søkefelt direkte fra terminalen:

```bash
copilot "Legg til et søkefelt i FactsList som filtrerer fakta på tittel og beskrivelse"
```

Godta endringene og test: Skriv i søkefeltet.

---

### Oppgave C: Agents - Code Review

Bruk `@code-reviewer` agent for å sjekke koden:

```
@code-reviewer Gjør en code review av backend og frontend koden.
```

Se gjennom feedback og fiks eventuelle problemer.

---

## Bonus: Code Review

Bruk code review før commit - enten med agent eller CLI.

**Agent (VS Code):**
```
@code-reviewer Sjekk staged endringer
```

**CLI (Terminal):**
```bash
copilot
# Be om code review basert på .github/skills/code-review/SKILL.md
```

---

## Oppsummering

Du har lært:

1. **Instructions** - Styr hva Copilot genererer
2. **Agent Mode** - La Copilot gjøre endringer på tvers av filer
3. **Skills** - Gjenbrukbar ekspertkunnskap (@dde-expert)
4. **CLI** - Få hjelp i terminalen (copilot)
5. **Agents** - Spesialiserte assistenter (@code-reviewer)

**Hovedlærdom:** Jo bedre instruksjoner, jo bedre resultat!

---

Made for Utviklerskolen Kristiansand
