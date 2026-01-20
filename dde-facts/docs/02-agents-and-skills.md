# Nivå 2: Agents, Skills, Agent Mode og Hooks

Avanserte Copilot-funksjoner for mer kontroll og automatisering.

---

## Oversikt

| Funksjon | Hva det er | Bruksområde |
|----------|------------|-------------|
| **Agent** | Copilot med spesifikke instruksjoner | Spesialiserte oppgaver |
| **Skill** | Kunnskap agenten kan bruke | Domenekunnskap |
| **Agent Mode** | Copilot jobber autonomt | Store endringer |
| **Hooks** | Scripts som kjører automatisk | Validering, formatering |

---

## Del A: Agents og Skills

### Øvelse 1: Lag en dokumentasjons-agent (10 min)

**Din oppgave:** Lag en agent som skriver dokumentasjon på norsk.

#### Steg 1: Opprett filen

Opprett `.github/agents/docs.agent.md`

#### Steg 2: Legg til innhold

```markdown
---
name: docs
description: Writes documentation in Norwegian
tools: githubRepo
---

# Documentation Agent

Du skriver klar og tydelig dokumentasjon på norsk.

## Regler
1. Forklar hva koden gjør i enkle ord
2. Gi praktiske eksempler
3. List opp parametere og returverdier
4. Bruk norske termer der det passer
```

#### Steg 3: Test agenten

1. Åpne Copilot Chat (`Ctrl+Shift+I`)
2. Skriv: `@docs dokumenter FactService klassen`
3. **Sjekk:** Er dokumentasjonen på norsk? Er den forståelig?

---

### Øvelse 2: Utvid D.D.E.-kunnskapen (5 min)

**Din oppgave:** Legg til mer kunnskap i D.D.E.-skill'en.

#### Steg 1: Åpne skill-filen

Åpne `.github/skills/dde-expert/SKILL.md`

#### Steg 2: Legg til på slutten

```markdown
## Musikalsk stil
- Blanding av rock, trøndersk folkemusikk og danseband
- Kjennetegnes av Bjarne Brøndbos karakteristiske vokal
- Ofte humoristiske tekster om hverdagslige temaer

## Kjente konserter
- Spiller årlig på russetreff over hele landet
- Utsolgte konserter på Rockefeller i Oslo
```

#### Steg 3: Test det

Spør Copilot: `Hva kjennetegner D.D.E. sin musikalske stil?`

---

## Del B: Agent Mode

Agent Mode lar Copilot jobbe **autonomt** - den kan gjøre flere endringer uten at du godkjenner hver enkelt.

### Når bruke Agent Mode?

| Vanlig Chat | Agent Mode |
|-------------|------------|
| Én fil om gangen | Flere filer samtidig |
| Du godkjenner alt | Copilot jobber selvstendig |
| Små endringer | Store refaktoreringer |

### Øvelse 3: Prøv Agent Mode (5 min)

#### Steg 1: Aktiver Agent Mode

I Copilot Chat, klikk på dropdown ved "Ask" og velg **"Agent"**.

#### Steg 2: Gi en større oppgave

```
Add error handling to all API endpoints in the backend.
Each endpoint should return proper HTTP status codes and error messages.
```

#### Steg 3: Observer

Se hvordan Copilot:
- Analyserer flere filer
- Foreslår endringer på tvers av prosjektet
- Jobber mer selvstendig

**Tips:** Du kan fortsatt avvise endringer du ikke liker.

---

## Del C: Hooks

Hooks er scripts som kjører automatisk når Copilot gjør ting.

### Eksempler på hooks

| Hook | Når den kjører | Hva den gjør |
|------|----------------|--------------|
| `pre-commit` | Før commit | Kjører linting, tester |
| `post-save` | Etter fillagring | Formaterer kode |
| `pre-push` | Før push | Validerer endringer |

### Øvelse 4: Lag en enkel hook (10 min)

**Din oppgave:** Lag en hook som kjører linting før commit.

#### Steg 1: Opprett hooks-mappen

```bash
mkdir -p .github/copilot-hooks
```

#### Steg 2: Lag hook-filen

Opprett `.github/copilot-hooks/pre-commit.sh`:

```bash
#!/bin/bash
echo "Running pre-commit checks..."

# Check for console.log in TypeScript files
if grep -r "console.log" frontend/src --include="*.ts" --include="*.tsx"; then
    echo "Warning: Found console.log statements!"
    exit 1
fi

echo "All checks passed!"
exit 0
```

#### Steg 3: Gjør den kjørbar

```bash
chmod +x .github/copilot-hooks/pre-commit.sh
```

#### Steg 4: Test hooken

```bash
./.github/copilot-hooks/pre-commit.sh
```

### Hva kan hooks gjøre?

- Kjøre tester før Copilot committer
- Formatere kode automatisk
- Validere at koden følger regler
- Sende notifikasjoner

---

## Eksperiment: Lag din egen agent (5 min)

Lag en agent for noe **du** vil ha:

```markdown
---
name: ditt-navn
description: Hva agenten gjør
tools: githubRepo
---

# Agentens rolle

[Beskriv oppgaven]

## Regler
1. [Regel 1]
2. [Regel 2]
```

**Idéer:** `@explain`, `@review`, `@test`, `@refactor`

---

## Nøkkelpunkter

- **Agents** = spesialiserte roller med egne instruksjoner
- **Skills** = domenekunnskap som aktiveres automatisk
- **Agent Mode** = Copilot jobber autonomt på større oppgaver
- **Hooks** = automatisering og validering

---

**Neste:** [Nivå 3: Copilot CLI](03-copilot-cli.md)
