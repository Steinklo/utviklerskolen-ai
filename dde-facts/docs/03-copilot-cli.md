# Nivå 3: GitHub Copilot CLI

Bruk Copilot direkte i terminalen.

---

## Installasjon

```bash
# macOS
brew install gh
gh extension install github/gh-copilot

# Windows (winget)
winget install GitHub.cli
gh extension install github/gh-copilot

# Autentiser
gh auth login
```

---

## De tre kommandoene

| Kommando | Hva den gjør |
|----------|--------------|
| `gh copilot suggest` | Foreslår en kommando basert på beskrivelse |
| `gh copilot explain` | Forklarer hva en kommando gjør |
| `gh copilot chat` | Interaktiv chat i terminalen |

---

## Øvelse 1: Forstå ukjente kommandoer (5 min)

**Din oppgave:** Bruk Copilot til å forstå komplekse kommandoer.

### Steg 1: Installer og verifiser

```bash
gh copilot --version
```

### Steg 2: Forklar en enkel kommando

```bash
gh copilot explain "ls -la"
```

### Steg 3: Forklar en kompleks kommando

```bash
gh copilot explain "find . -name '*.cs' -exec grep -l 'async' {} \;"
```

**Forstår du nå hva den gjør?**

---

## Øvelse 2: Lag kommandoer fra beskrivelser (10 min)

**Din oppgave:** Beskriv hva du vil gjøre, la Copilot lage kommandoen.

### Steg 1: Enkel git-kommando

```bash
gh copilot suggest "show git commits from last week with author names"
```

Kjør kommandoen Copilot foreslår.

### Steg 2: Finn filer

```bash
gh copilot suggest "find all TypeScript files that contain the word useState"
```

### Steg 3: Bygg prosjektet

```bash
cd dde-facts/backend
gh copilot suggest "build this dotnet project and show any errors"
```

---

## Eksperiment: Løs et ekte problem (5 min)

Tenk på noe du faktisk lurer på hvordan du gjør i terminalen.

### Eksempler å prøve

```bash
# Hvor mye diskplass bruker denne mappen?
gh copilot suggest "show total size of current directory"

# Hvilke porter er i bruk?
gh copilot suggest "show which processes are using port 5000"

# Slett alle node_modules
gh copilot suggest "delete all node_modules folders recursively"
```

### Din tur

Hva vil **du** gjøre? Prøv:
```bash
gh copilot suggest "[beskriv det du vil gjøre]"
```

---

## Nøkkelpunkter

- `suggest` = "hvordan gjør jeg X?"
- `explain` = "hva gjør denne kommandoen?"
- `chat` = lengre samtaler om komplekse oppgaver
- Copilot CLI er trygt - den kjører ingenting uten din bekreftelse

---

**Neste:** [Avsluttende utfordring](04-final-challenge.md)
