# GitHub Copilot Workshop

Lær å bruke AI-verktøy til å bygge en komplett app med **kun instruksjonsfiler** og enkle prompts.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Workshop-oversikt (1t 50min)

| Fase | Tid | Aktivitet | Hvem |
|------|-----|-----------|------|
| 1 | 20 min | **Feature-demo**: Ask, Agent, Instructions, CLI | Presenter |
| 2 | 40 min | **Hands-on**: Generer backend + frontend | Alle |
| 3 | 40 min | **Oppgaver**: Modifiser koden | Alle |
| 4 | 10 min | **Oppsummering** | Alle |

---

## Forutsetninger

Sjekk at du har:
- [ ] VS Code med GitHub Copilot
- [ ] .NET 9 SDK
- [ ] Node.js 20+
- [ ] Git (med Git Bash på Windows)
- [ ] GitHub Copilot CLI (`gh extension install github/gh-copilot`)

### Kom i gang

```bash
git clone https://github.com/Steinklo/utviklerskolen-ai.git
cd utviklerskolen-ai/dde-facts
code .
```

---

## Fase 2: One-Command Generation (40 min)

### Steg 1: Generer Backend (15 min)

1. Åpne Copilot Chat (`Ctrl+Shift+I` / `Cmd+Shift+I`)
2. Bytt til **Agent Mode** (dropdown ved "Ask")
3. Skriv denne prompten:

```
@workspace Set up and generate the complete backend following the instructions.
Run the setup commands first, then create the application code.
```

> **Note:** Copilot vil be om tillatelse til å kjøre terminalkommandoer. Godta hver kommando for å se flyten.

4. Godta alle kommandoer og filer som genereres
5. Kjør backend:

```bash
cd backend
dotnet run
```

5. Test at det fungerer: Åpne http://localhost:5000/api/facts

**Forventet resultat:** JSON med 5 D.D.E. fakta

---

### Steg 2: Generer Frontend (15 min)

1. Åpne ny Copilot Chat
2. Bytt til **Agent Mode** (dropdown ved "Ask")
3. Skriv denne prompten:

```
@workspace Set up and generate the complete frontend following the instructions.
Run the setup commands first, then create the application code.
```

> **Note:** Copilot vil be om tillatelse til å kjøre terminalkommandoer. Godta hver kommando for å se flyten.

4. Godta alle kommandoer og filer som genereres
5. Kjør frontend:

```bash
cd frontend
npm run dev
```

5. Se resultatet: Åpne http://localhost:5173

**Forventet resultat:** En fin side med D.D.E. fakta-kort

---

### Refleksjon (10 min)

Diskuter med naboen:
1. Hva skjedde? Copilot leste instruksjonene og genererte matchende kode.
2. Måtte du justere noe? Kanskje imports, CORS, eller proxy?
3. Hva betyr dette? Gode instruksjoner = forutsigbar kode.

---

## Fase 3: Oppgaver (40 min)

Gjør alle tre oppgavene. Hver tar ca. 15 minutter.

---

### Oppgave A: Legg til ny kategori (Instructions)

**Mål:** Lær hvordan instruksjoner styrer Copilot.

#### Steg 1: Rediger instruksjonsfilen

Åpne `.github/copilot-instructions.md`

Legg til "Members" i Data Contract:

```typescript
category: 'History' | 'Hits' | 'Live' | 'Trivia' | 'Members';
```

Legg til nye fakta i tabellen:

| id | title | description | year | category |
|----|-------|-------------|------|----------|
| 6 | Bjarne Brøndbo | Bjarne Brøndbo er vokalist og frontfigur i D.D.E., kjent for sin energiske scenepersonlighet | 1992 | Members |
| 7 | Frode Viken | Gitarist Frode Viken var med fra starten og bidro til bandets karakteristiske lyd. Han gikk bort i 2018 | 1992 | Members |

#### Steg 2: Oppdater med Agent Mode

1. Åpne Copilot Chat
2. Bytt til **Agent Mode** (dropdown ved "Ask")
3. Skriv:

```
Oppdater backend og frontend med den nye kategorien "Members" og de nye faktaene om bandmedlemmer fra copilot-instructions.md
```

4. Se hvordan Copilot oppdaterer flere filer automatisk

#### Steg 3: Test

- Restart backend: `dotnet run`
- Refresh frontend: Se at de nye faktaene vises

---

### Oppgave B: Legg til filter (Ask + Agent)

**Mål:** Lær å bruke Ask for å forstå koden, og Agent for å endre den.

#### Steg 1: Forstå koden med Ask

1. Åpne Copilot Chat i **Ask Mode**
2. Spør:

```
@workspace Hvordan fungerer FactsList-komponenten?
```

3. Les forklaringen og forstå strukturen

#### Steg 2: Legg til filter med Agent

1. Bytt til **Agent Mode**
2. Skriv:

```
Legg til filterknapper i FactsList som lar brukeren filtrere fakta per kategori. Vis alle kategorier som knapper, og en "Alle" knapp for å vise alt.
```

3. Godta endringene

#### Steg 3: Test

- Refresh frontend
- Klikk på filterknappene og se at faktaene filtreres

---

### Oppgave C: Legg til søk (CLI + Agent)

**Mål:** Lær å bruke Copilot CLI for å få hjelp med kode.

#### Steg 1: Bruk CLI for hjelp

Åpne terminal og kjør:

```bash
gh copilot suggest "filter list by search query in react"
```

Se hva Copilot foreslår. Dette gir deg en idé om hvordan du implementerer søk.

#### Steg 2: Implementer med Agent

1. Åpne Copilot Chat i **Agent Mode**
2. Skriv:

```
Legg til et søkefelt i FactsList som filtrerer fakta på tittel og beskrivelse mens brukeren skriver
```

3. Godta endringene

#### Steg 3: Test

- Refresh frontend
- Skriv i søkefeltet og se at faktaene filtreres live

---

## Troubleshooting

### Copilot kjørte ikke init-kommandoer

Hvis `dotnet run` feiler med "project not found":
```bash
cd backend
dotnet new webapi -n DdeFacts.Api --no-https -f net9.0 -o .
rm -rf Controllers/ WeatherForecast.cs
```

Hvis `npm run dev` feiler med "missing package.json":
```bash
cd frontend
npm create vite@latest . -- --template react-ts
npm install
npm install @tanstack/react-query
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
```

### Backend starter ikke

```bash
cd backend
dotnet restore
dotnet build
```

Sjekk at port 5000 ikke er i bruk.

### Frontend viser ikke data

1. Sjekk at backend kjører på port 5000
2. Sjekk CORS i `Program.cs` - må tillate `http://localhost:5173`
3. Sjekk proxy i `vite.config.ts` - må peke til `http://localhost:5000`

### Copilot genererer feil kode

1. Sjekk at instruksjonsfilene er riktig formatert
2. Prøv å være mer spesifikk i prompten
3. Bruk `@workspace` for å gi Copilot kontekst

### CLI fungerer ikke

```bash
gh auth login
gh extension install github/gh-copilot
gh copilot --version
```

---

## Oppsummering

Du har nå lært:

1. **Instructions** - Styr hva Copilot genererer med `.copilot/instructions.md`
2. **Ask Mode** - Forstå eksisterende kode
3. **Agent Mode** - La Copilot gjøre større endringer på tvers av filer
4. **CLI** - Få hjelp i terminalen med `gh copilot suggest/explain`

**Hovedlærdom:** Jo bedre instruksjoner, jo bedre resultat.

---

## Ressurser

- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [Copilot CLI](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line)

---

Made for Utviklerskolen Kristiansand
