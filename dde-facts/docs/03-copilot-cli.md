# Nivå 3: GitHub Copilot CLI

Bruk Copilot direkte i terminalen til å lage og kjøre ting.

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

## Øvelse 1: Installer og test (5 min)

**Din oppgave:** Installer Copilot CLI og verifiser at det fungerer.

### Steg 1: Installer

Følg instruksjonene over for ditt OS.

### Steg 2: Verifiser

```bash
gh copilot --version
```

### Steg 3: Test explain-kommandoen

```bash
gh copilot explain "ls -la"
```

Copilot skal forklare hva kommandoen gjør.

---

## Øvelse 2: Lag et bash-script med Copilot (10 min)

**Din oppgave:** Bruk Copilot til å lage et script som finner store filer.

### Steg 1: Start chat-modus

```bash
cd dde-facts
gh copilot chat
```

### Steg 2: Be Copilot lage scriptet

Skriv i chatten:

```
Create a bash script that finds all files larger than 1MB in the current directory and shows their sizes
```

### Steg 3: Lagre scriptet

Kopier koden Copilot gir deg og lagre som `find-large-files.sh`

### Steg 4: Kjør scriptet

```bash
chmod +x find-large-files.sh
./find-large-files.sh
```

---

## Øvelse 3: Bygg og test med @task (10 min)

**Din oppgave:** Bruk CLI til å bygge og kjøre prosjektet.

### Forutsetning
Du må ha generert backend fra live-demoen først.

### Steg 1: Start chat i backend-mappen

```bash
cd dde-facts/backend
gh copilot chat
```

### Steg 2: Bygg prosjektet

```
@task build this dotnet project
```

### Steg 3: Kjør prosjektet

```
@task run this project
```

### Steg 4: Test API-et

Åpne en ny terminal og kjør:
```bash
gh copilot suggest "curl command to test localhost:5000/api/facts"
```

Kjør kommandoen Copilot foreslår.

---

## Øvelse 4: Lag en git-kommando (10 min)

**Din oppgave:** Bruk Copilot til å lage en kompleks git-kommando.

### Steg 1: Be om hjelp

```bash
gh copilot suggest "show git commits from last week with file changes and author"
```

### Steg 2: Forstå kommandoen

Kopier kommandoen og kjør:

```bash
gh copilot explain "[kommandoen fra steg 1]"
```

### Steg 3: Kjør kommandoen

Kjør kommandoen i prosjektmappen og se resultatet.

### Steg 4: Lag din egen

Prøv selv:
```bash
gh copilot suggest "find all commits that changed markdown files"
```

---

## Øvelse 5: Lag et deployment-script (10 min)

**Din oppgave:** Lag et script som bygger både backend og frontend.

### Steg 1: Start chat

```bash
cd dde-facts
gh copilot chat
```

### Steg 2: Beskriv hva du trenger

```
Create a bash script called build-all.sh that:
1. Builds the dotnet backend in /backend
2. Runs npm install and npm run build in /frontend
3. Shows success/error message for each step
4. Exits with error code if any step fails
```

### Steg 3: Lagre og test

1. Kopier scriptet til `build-all.sh`
2. Gjør det kjørbart: `chmod +x build-all.sh`
3. Kjør det: `./build-all.sh`

### Steg 4: Forbedre scriptet

Be Copilot forbedre det:
```
Add colored output (green for success, red for error) to this script
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
✅ `gh copilot chat` - interaktiv modus for å lage scripts
✅ `@task` - kjør bygg og tester direkte

---

## Ferdig!

Du har nå lært:

1. ✅ **Custom Instructions** - Gi Copilot kontekst
2. ✅ **Agents og Skills** - Spesialiserte AI-hjelpere
3. ✅ **Copilot CLI** - Lag scripts og kjør kommandoer

Gå tilbake til [README](../README.md) for ressurser og videre læring.
