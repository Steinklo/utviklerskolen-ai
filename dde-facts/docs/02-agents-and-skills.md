# Nivå 2: Agents og Skills

Lag spesialiserte AI-agenter for spesifikke oppgaver.

---

## Custom Agents

Agenter er spesialiserte versjoner av Copilot med egne instruksjoner.

**Filplassering:** `.github/agents/NAVN.agent.md`

---

## Øvelse 1: Bruk code-reviewer agenten (5 min)

### Steg 1: Se på agenten

Åpne `.github/agents/code-reviewer.agent.md`

Legg merke til:
- `name` - Agent-ID
- `description` - Når agenten brukes
- `tools` - Hva den har tilgang til

### Steg 2: Test agenten

Hvis du har generert backend fra demoen:

1. Åpne Copilot Chat
2. Skriv: `@code-reviewer review the FactService`
3. Se hva agenten finner

---

## Øvelse 2: Lag din egen agent (10 min)

### Steg 1: Opprett agentfil

Opprett `.github/agents/documentation.agent.md`:

```markdown
---
name: documentation
description: Writes clear documentation for code
tools: githubRepo
---

# Documentation Agent

You write clear, helpful documentation in Norwegian.

## When documenting code:
1. Explain what the code does
2. Give usage examples
3. List parameters and return values
4. Keep it simple and beginner-friendly
```

### Steg 2: Test agenten

1. Åpne Copilot Chat
2. Skriv: `@documentation document the Fact data model`
3. Vurder resultatet - er dokumentasjonen god?

### Steg 3: Forbedre agenten

Basert på resultatet, juster instruksjonene og test igjen.

---

## Agent Skills

Skills er kunnskapspakker som Copilot kan bruke.

**Filplassering:** `.github/skills/NAVN/SKILL.md`

---

## Øvelse 3: Utforsk dde-expert skill (5 min)

### Steg 1: Åpne skill-filen

Åpne `.github/skills/dde-expert/SKILL.md`

### Steg 2: Test kunnskapen

1. Åpne Copilot Chat
2. Spør: `What year was D.D.E. formed?`
3. Spør: `Who was the main songwriter?`

Copilot bruker skill-en automatisk fordi den matcher konteksten.

---

## Øvelse 4: Utvid dde-expert skill (10 min)

### Steg 1: Legg til mer kunnskap

Åpne `.github/skills/dde-expert/SKILL.md` og legg til:

```markdown
## Konserter i Kristiansand
- Spilt på Kilden flere ganger
- Kjent for å åpne med Ten Sharp-introen
- Alltid fullsatt når de kommer til Sørlandet
```

### Steg 2: Test den nye kunnskapen

1. Åpne Copilot Chat
2. Spør: `Has D.D.E. played in Kristiansand?`
3. Sjekk om Copilot bruker den nye informasjonen

---

## Øvelse 5: Lag en ny skill (bonus)

Opprett `.github/skills/api-testing/SKILL.md`:

```markdown
---
name: api-testing
description: Knowledge about testing REST APIs
---

# API Testing Guide

## Tools
- Use curl or httpie for quick tests
- Use Postman for complex scenarios

## Test checklist
- [ ] Happy path (200 OK)
- [ ] Not found (404)
- [ ] Invalid input (400)
- [ ] Server error handling (500)
```

---

## Nøkkelpunkter

✅ Agents = spesialiserte roller (code-reviewer, test-runner)
✅ Skills = domenekunnskap (dde-expert, api-testing)
✅ Begge aktiveres automatisk basert på `description`
✅ Test og iterer for best resultat

---

**Neste:** [Nivå 3: Copilot CLI](03-copilot-cli.md)
