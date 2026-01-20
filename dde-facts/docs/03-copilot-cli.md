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

## Øvelse 1: Installer og verifiser (5 min)

### Steg 1: Installer

Følg instruksjonene over for ditt OS.

### Steg 2: Verifiser

```bash
gh copilot --version
```

Du skal se versjonsnummer.

### Steg 3: Test en enkel kommando

```bash
gh copilot explain "ls -la"
```

Copilot forklarer hva kommandoen gjør.

---

## Øvelse 2: Utforsk kodebasen (5 min)

### Steg 1: Start chat-modus

```bash
cd dde-facts
gh copilot chat
```

### Steg 2: Bruk @explore agenten

Skriv disse i chatten:

```
@explore what files are in the .github folder?
```

```
@explore what does the copilot-instructions.md file contain?
```

```
@explore list all agent files
```

### Steg 3: Avslutt

Skriv `exit` for å avslutte chat.

---

## Øvelse 3: Kjør kommandoer med @task (5 min)

Hvis du har generert backend fra demoen:

### Steg 1: Start chat

```bash
cd dde-facts/backend
gh copilot chat
```

### Steg 2: Kjør bygg

```
@task build the dotnet project
```

### Steg 3: Kjør tester (hvis du har laget tester)

```
@task run the tests
```

---

## Øvelse 4: La Copilot foreslå kommandoer (5 min)

### Steg 1: Be om hjelp med en oppgave

```bash
gh copilot suggest "find all markdown files in current directory"
```

### Steg 2: Se forslaget

Copilot viser en kommando du kan kjøre.

### Steg 3: Prøv flere

```bash
gh copilot suggest "count lines of code in all TypeScript files"
```

```bash
gh copilot suggest "show git log with graph"
```

---

## Øvelse 5: Forklar komplekse kommandoer (5 min)

### Steg 1: Forklar en git-kommando

```bash
gh copilot explain "git rebase -i HEAD~3"
```

### Steg 2: Forklar en docker-kommando

```bash
gh copilot explain "docker run -d -p 8080:80 -v $(pwd):/app nginx"
```

### Steg 3: Forklar en du er usikker på

Har du en kommando du har sett men ikke forstår? Prøv:

```bash
gh copilot explain "din-kommando-her"
```

---

## Innebygde CLI-agenter

| Agent | Bruk |
|-------|------|
| `@explore` | Utforsk kodebase uten å endre noe |
| `@task` | Kjør kommandoer (test, bygg) |
| `@plan` | Lag implementasjonsplaner |
| `@code-review` | Gjennomgå endringer |

---

## Nøkkelpunkter

✅ `gh copilot suggest` - få kommandoforslag
✅ `gh copilot explain` - forstå kommandoer
✅ `gh copilot chat` - interaktiv modus
✅ `@explore`, `@task` - spesialiserte agenter i chat

---

## Ferdig!

Du har nå lært:

1. ✅ **Custom Instructions** - Gi Copilot kontekst
2. ✅ **Agents og Skills** - Spesialiserte AI-hjelpere
3. ✅ **Copilot CLI** - AI i terminalen

Gå tilbake til [README](../README.md) for ressurser og videre læring.
