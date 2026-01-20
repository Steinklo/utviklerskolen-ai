# Nivå 2: Agents og Skills

Lag spesialiserte AI-agenter og kunnskapspakker.

---

## Custom Agents

Agenter er spesialiserte versjoner av Copilot med egne instruksjoner.

**Filplassering:** `.github/agents/NAVN.agent.md`

---

## Øvelse 1: Lag en documentation-agent (10 min)

**Din oppgave:** Lag en agent som skriver god dokumentasjon på norsk.

### Steg 1: Opprett agentfilen

Opprett filen `.github/agents/documentation.agent.md`

### Steg 2: Legg til innhold

```markdown
---
name: documentation
description: Writes clear documentation for code in Norwegian
tools: githubRepo
---

# Documentation Agent

Du skriver klar og tydelig dokumentasjon på norsk.

## Regler
1. Forklar hva koden gjør i enkle ord
2. Gi praktiske eksempler
3. List opp parametere og returverdier
4. Hold det kort og begynner-vennlig
```

### Steg 3: Test agenten

1. Åpne Copilot Chat (`Ctrl+Shift+I`)
2. Skriv: `@documentation dokumenter Fact-modellen`
3. Vurder: Er dokumentasjonen god? På norsk?

### Steg 4: Forbedre agenten

Legg til flere regler basert på hva som manglet. Test igjen.

---

## Øvelse 2: Lag en test-generator agent (10 min)

**Din oppgave:** Lag en agent som genererer enhetstester.

### Steg 1: Opprett agentfilen

Opprett filen `.github/agents/test-generator.agent.md`

### Steg 2: Legg til innhold

```markdown
---
name: test-generator
description: Generates unit tests for code
tools: githubRepo, terminal
---

# Test Generator Agent

Du genererer grundige enhetstester.

## For C# (xUnit)
- Bruk Arrange-Act-Assert mønsteret
- Bruk FluentAssertions
- Test både happy path og edge cases
- Navngi tester: MethodName_Scenario_ExpectedResult

## For TypeScript (Vitest)
- Bruk describe/it blokker
- Mock eksterne avhengigheter
- Test komponent-rendering og interaksjoner
```

### Steg 3: Test agenten

1. Åpne Copilot Chat
2. Skriv: `@test-generator lag tester for en FactService som returnerer fakta`
3. Sjekk at testene følger mønstrene du definerte

---

## Øvelse 3: Legg til ny kunnskap i dde-expert skill (10 min)

**Din oppgave:** Utvid D.D.E.-kunnskapen med konserter.

### Steg 1: Åpne skill-filen

Åpne `.github/skills/dde-expert/SKILL.md`

### Steg 2: Legg til ny seksjon på slutten

```markdown
## Kjente konserter
- **Russetreff**: Spiller årlig for russen over hele landet
- **Kilden Kristiansand**: Flere utsolgte konserter
- **Namsos**: Hjembyen, alltid spesielle konserter
- **Røros**: Kjent for vinterkonserter

## Konsert-fakta
- Åpner ofte med intro-musikk før de kommer på scenen
- Bjarne snakker alltid med publikum mellom låtene
- "Vinsjan på kaia" er alltid siste låt før ekstranummer
```

### Steg 3: Test kunnskapen

1. Åpne Copilot Chat
2. Spør: `Hvor har D.D.E. spilt konserter?`
3. Spør: `Hvilken låt avslutter de alltid med?`
4. Sjekk at Copilot bruker den nye informasjonen

---

## Øvelse 4: Lag en security-review skill (10 min)

**Din oppgave:** Lag en skill med sikkerhetssjekkliste.

### Steg 1: Opprett skill-mappen

Opprett mappen `.github/skills/security-review/`

### Steg 2: Opprett SKILL.md

Opprett filen `.github/skills/security-review/SKILL.md`:

```markdown
---
name: security-review
description: Security checklist for code review
---

# Security Review Checklist

## API Security
- [ ] Input validation on all endpoints
- [ ] No sensitive data in URLs
- [ ] Rate limiting configured
- [ ] CORS properly restricted

## Data Security
- [ ] No secrets in code
- [ ] Passwords hashed (never plain text)
- [ ] SQL injection prevented
- [ ] XSS prevented

## Authentication
- [ ] Tokens have expiry
- [ ] Secure token storage
- [ ] Logout invalidates session
```

### Steg 3: Test skill-en

1. Åpne Copilot Chat
2. Skriv: `Check this code for security issues` og lim inn litt kode
3. Sjekk at Copilot bruker sjekklisten din

---

## Øvelse 5: Lag en refactoring-agent (10 min)

**Din oppgave:** Lag en agent som foreslår forbedringer i kode.

### Steg 1: Opprett agentfilen

Opprett filen `.github/agents/refactoring.agent.md`

### Steg 2: Legg til innhold

```markdown
---
name: refactoring
description: Suggests code improvements and refactoring
tools: githubRepo
---

# Refactoring Agent

Du analyserer kode og foreslår forbedringer.

## Når bør kode refaktoreres?
- Funksjoner over 20 linjer
- Duplisert kode (DRY-prinsippet)
- Dyp nesting (mer enn 3 nivåer)
- Uklare variabelnavn

## Clean Code prinsipper
- En funksjon gjør én ting
- Beskrivende navn
- Små, fokuserte klasser
- Kommentarer forklarer "hvorfor", ikke "hva"

## Output format
For hver forbedring, vis:
1. Problem: Hva er galt
2. Løsning: Hvordan fikse det
3. Før/etter kodeeksempel
```

### Steg 3: Test agenten

1. Åpne Copilot Chat
2. Skriv: `@refactoring analyser denne koden` og lim inn noe kode
3. Sjekk at agenten gir konkrete forbedringsforslag

---

## Nøkkelpunkter

✅ Agents = spesialiserte roller med egne regler
✅ Skills = domenekunnskap som aktiveres automatisk
✅ `description` feltet bestemmer når de brukes
✅ Test og iterer for bedre resultater

---

**Neste:** [Nivå 3: Copilot CLI](03-copilot-cli.md)
