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

Opprett `.github/agents/documentation.agent.md`:

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

### Steg 2: Test agenten

1. Åpne Copilot Chat (`Ctrl+Shift+I`)
2. Skriv: `@documentation dokumenter Fact-modellen`
3. Vurder: Er dokumentasjonen god? På norsk?

### Steg 3: Forbedre agenten

Legg til flere regler basert på hva som manglet. Test igjen.

---

## Øvelse 2: Lag en test-generator agent (10 min)

**Din oppgave:** Lag en agent som genererer enhetstester.

### Steg 1: Opprett agentfilen

Opprett `.github/agents/test-generator.agent.md`:

```markdown
---
name: test-generator
description: Generates unit tests for code
tools: githubRepo, terminal
---

# Test Generator Agent

You generate comprehensive unit tests.

## For C# (xUnit)
- Use Arrange-Act-Assert pattern
- Use FluentAssertions
- Test happy path and edge cases
- Name tests: MethodName_Scenario_ExpectedResult

## For TypeScript (Vitest)
- Use describe/it blocks
- Mock external dependencies
- Test component rendering and interactions
```

### Steg 2: Test agenten

1. Åpne Copilot Chat
2. Skriv: `@test-generator create tests for a FactService that returns facts`
3. Sjekk at testene følger mønstrene du definerte

---

## Øvelse 3: Legg til ny kunnskap i dde-expert skill (10 min)

**Din oppgave:** Utvid D.D.E.-kunnskapen med konserter.

### Steg 1: Åpne skill-filen

Åpne `.github/skills/dde-expert/SKILL.md`

### Steg 2: Legg til ny seksjon

```markdown
## Kjente konserter
- **Russetreff**: Spiller årlig for russen over hele landet
- **Kilden Kristiansand**: Flere utsolgte konserter
- **Namsos**: Hjembyen, alltid spesielle konserter
- **Røros**: Kjent for vinterkonserter

## Konsert-fakta
- Åpner ofte med "Ansen teansen" som intro
- Bjarne snakker alltid med publikum mellom låtene
- "Vinsjan på kaia" er alltid siste låt før ekstranummer
```

### Steg 3: Test kunnskapen

1. Åpne Copilot Chat
2. Spør: `Where has D.D.E. played concerts?`
3. Spør: `What song do they always end with?`
4. Sjekk at Copilot bruker den nye informasjonen

---

## Øvelse 4: Lag en security-review skill (10 min)

**Din oppgave:** Lag en skill med sikkerhetssjekkliste.

### Steg 1: Opprett skill-mappen

Opprett `.github/skills/security-review/SKILL.md`:

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
- [ ] SQL injection prevented (parameterized queries)
- [ ] XSS prevented (output encoding)

## Authentication
- [ ] Tokens have expiry
- [ ] Secure token storage
- [ ] Logout invalidates session
```

### Steg 2: Test skill-en

1. Åpne Copilot Chat
2. Skriv: `Review this code for security issues: [paste some code]`
3. Sjekk at Copilot bruker sjekklisten din

---

## Øvelse 5: Lag en refactoring-agent (bonus)

**Din oppgave:** Lag en agent som foreslår refaktorering.

Opprett `.github/agents/refactoring.agent.md` med:
- Regler for når kode bør refaktoreres
- Clean Code prinsipper
- Eksempler på før/etter

Test med: `@refactoring review this code for improvements`

---

## Nøkkelpunkter

✅ Agents = spesialiserte roller med egne regler
✅ Skills = domenekunnskap som aktiveres automatisk
✅ `description` feltet bestemmer når de brukes
✅ Test og iterer for bedre resultater

---

**Neste:** [Nivå 3: Copilot CLI](03-copilot-cli.md)
