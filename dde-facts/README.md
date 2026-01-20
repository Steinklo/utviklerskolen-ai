# GitHub Copilot Workshop

Lær å tilpasse GitHub Copilot med Custom Instructions, Agents, Skills og CLI.

**Prosjekt:** DDE-facts - en app med morsomme fakta om bandet D.D.E.

---

## Læringsmål

Etter denne workshopen kan du:
- ✅ Skrive Custom Instructions for ditt prosjekt
- ✅ Lage egne Agents for spesialiserte oppgaver
- ✅ Definere Skills med domenekunnskap
- ✅ Bruke GitHub Copilot CLI i terminalen

---

## Innhold

### Nivå 1: Grunnleggende
**[Custom Instructions](docs/01-custom-instructions.md)**

Lær å gi Copilot kontekst om prosjektet ditt.

```
.github/copilot-instructions.md
```

### Nivå 2: Avansert
**[Agents og Skills](docs/02-agents-and-skills.md)**

Lag spesialiserte agenter og kunnskapspakker.

```
.github/agents/*.agent.md
.github/skills/*/SKILL.md
```

### Nivå 3: Terminal
**[GitHub Copilot CLI](docs/03-copilot-cli.md)**

Bruk Copilot direkte i terminalen.

```bash
gh copilot chat
```

---

## Prosjektstruktur

```
dde-facts/
├── docs/
│   ├── 01-custom-instructions.md   # Nivå 1
│   ├── 02-agents-and-skills.md     # Nivå 2
│   └── 03-copilot-cli.md           # Nivå 3
├── .github/
│   ├── copilot-instructions.md     # Custom Instructions
│   ├── agents/                     # Custom Agents
│   │   ├── code-reviewer.agent.md
│   │   └── test-runner.agent.md
│   └── skills/                     # Agent Skills
│       ├── dde-expert/SKILL.md
│       └── code-review/SKILL.md
├── backend/                        # C# API (eksempel-app)
└── frontend/                       # React app (eksempel-app)
```

---

## Kom i gang

### 1. Klon prosjektet
```bash
git clone https://github.com/Steinklo/utviklerskolen-ai.git
cd utviklerskolen-ai/dde-facts
```

### 2. Åpne i VS Code
```bash
code .
```

### 3. Start med Nivå 1
Åpne [docs/01-custom-instructions.md](docs/01-custom-instructions.md)

---

## Eksempel-appen (valgfritt)

DDE-facts er en enkel fullstack-app du kan kjøre:

### Backend
```bash
cd backend
dotnet restore
dotnet run --project src/DdeFacts.Api
# http://localhost:5000
```

### Frontend
```bash
cd frontend
npm install
npm run dev
# http://localhost:5173
```

---

## Ressurser

- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Custom Agents Docs](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/coding-agent/create-custom-agents)
- [Agent Skills Docs](https://docs.github.com/en/copilot/concepts/agents/about-agent-skills)
- [Copilot CLI](https://github.blog/changelog/2026-01-14-github-copilot-cli-enhanced-agents-context-management-and-new-ways-to-install/)

---

Made for Utviklerskolen Kristiansand
