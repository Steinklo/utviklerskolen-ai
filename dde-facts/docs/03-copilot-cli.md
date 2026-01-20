# Nivå 3: GitHub Copilot CLI

GitHub Copilot CLI lar deg bruke Copilot direkte i terminalen.

## Installasjon

```bash
# macOS
brew install gh
gh extension install github/gh-copilot

# Windows (med winget)
winget install GitHub.cli
gh extension install github/gh-copilot

# Autentiser
gh auth login
```

## Grunnleggende kommandoer

### Spør Copilot

```bash
gh copilot suggest "how to list all files in a directory"
```

### Forklar en kommando

```bash
gh copilot explain "git rebase -i HEAD~3"
```

### Kjør i chat-modus

```bash
gh copilot chat
```

## Innebygde Agents

Copilot CLI har innebygde agenter:

| Agent | Formål |
|-------|--------|
| `@explore` | Analyser kodebase raskt |
| `@task` | Kjør kommandoer som tester/bygg |
| `@plan` | Lag implementasjonsplaner |
| `@code-review` | Gjennomgå kodeendringer |

### Eksempel: Utforsk kodebasen

```bash
gh copilot chat
> @explore what does the FactService do?
```

### Eksempel: Kjør tester

```bash
gh copilot chat
> @task run the backend tests
```

## Øvelse 1: Installer Copilot CLI

1. Følg installasjonsinstruksjonene over
2. Verifiser installasjonen:
   ```bash
   gh copilot --version
   ```

## Øvelse 2: Spør om hjelp

```bash
gh copilot suggest "create a new dotnet project"
```

Se hva Copilot foreslår.

## Øvelse 3: Forklar en kommando

```bash
gh copilot explain "docker run -d -p 8080:80 --name myapp nginx"
```

## Øvelse 4: Bruk chat-modus

```bash
cd dde-facts
gh copilot chat
```

Prøv disse:
- `@explore what technologies does this project use?`
- `@explore where are the API endpoints defined?`
- `@task list all files in the backend folder`

## Øvelse 5: La Copilot skrive en kommando

```bash
gh copilot suggest "find all TypeScript files containing 'useState'"
```

Copilot vil foreslå en kommando du kan kjøre.

## Tips

- Bruk `@explore` for å forstå kode uten å endre noe
- Bruk `@task` for å kjøre tester og bygg
- Chat-modus husker kontekst mellom meldinger

## Konfigurasjon

Copilot CLI kan konfigureres i `~/.copilot/config`:

```yaml
# Tillat/blokker nettsider
allowed_urls:
  - "docs.microsoft.com"
  - "*.github.com"
denied_urls:
  - "*.internal.company.com"
```

---

**Ferdig!** Du har nå lært:
1. ✅ Custom Instructions
2. ✅ Agents og Skills
3. ✅ GitHub Copilot CLI

Gå tilbake til [README](../README.md) for oversikt.
