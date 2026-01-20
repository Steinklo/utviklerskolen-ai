# Nivå 2: Agents og Skills

Agents og Skills gir Copilot spesialiserte evner for spesifikke oppgaver.

## Custom Agents

Agents er spesialiserte versjoner av Copilot med egne instruksjoner og verktøy.

### Filplassering

```
.github/agents/NAVN.agent.md
```

### Format

```markdown
---
name: agent-navn
description: Når denne agenten skal brukes
tools: githubRepo, terminal
---

# Agent Instruksjoner

Du er en spesialist på...
```

### Eksempler i dette prosjektet

| Agent | Fil | Formål |
|-------|-----|--------|
| code-reviewer | `.github/agents/code-reviewer.agent.md` | Kodegjennomgang |
| test-runner | `.github/agents/test-runner.agent.md` | Kjøre tester |

## Øvelse 1: Se på en agent

1. Åpne `.github/agents/code-reviewer.agent.md`
2. Les gjennom:
   - `name` - Agent-ID
   - `description` - Når den aktiveres
   - `tools` - Hva den kan bruke
   - Instruksjonene i body

## Øvelse 2: Bruk en agent

I VS Code med Copilot Chat:
1. Skriv `@code-reviewer` i chatten
2. Be den gjennomgå en fil

I GitHub.com:
1. Gå til en Pull Request
2. Velg `code-reviewer` agenten

---

## Agent Skills

Skills er kunnskapspakker som Copilot kan bruke når det trengs.

### Filplassering

```
.github/skills/SKILL-NAVN/SKILL.md
```

### Format

```markdown
---
name: skill-navn
description: Når denne skill-en aktiveres
---

# Skill Innhold

Kunnskap, sjekklister, eksempler...
```

### Eksempler i dette prosjektet

| Skill | Mappe | Formål |
|-------|-------|--------|
| dde-expert | `.github/skills/dde-expert/` | D.D.E. bandkunnskap |
| code-review | `.github/skills/code-review/` | Kodesjekksliste |

## Øvelse 3: Se på en skill

1. Åpne `.github/skills/dde-expert/SKILL.md`
2. Se hvordan den inneholder:
   - Bandhistorie
   - Medlemmer
   - Fakta

## Øvelse 4: Lag din egen agent

1. Opprett filen `.github/agents/documentation.agent.md`
2. Legg til:
   ```markdown
   ---
   name: documentation
   description: Writes documentation for code
   tools: githubRepo
   ---

   # Documentation Agent

   You write clear, concise documentation.

   ## Rules
   - Use Norwegian for comments
   - Keep explanations simple
   - Include code examples
   ```
3. Test agenten i Copilot Chat

## Øvelse 5: Lag din egen skill

1. Opprett mappen `.github/skills/api-patterns/`
2. Opprett filen `SKILL.md`:
   ```markdown
   ---
   name: api-patterns
   description: REST API design patterns
   ---

   # API Patterns

   ## Endpoints
   - GET /resources - List all
   - GET /resources/{id} - Get one
   - POST /resources - Create
   - PUT /resources/{id} - Update
   - DELETE /resources/{id} - Delete
   ```

---

**Neste:** [Nivå 3: GitHub Copilot CLI](03-copilot-cli.md)
