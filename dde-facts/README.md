# GitHub Copilot Workshop

Lær å bruke GitHub Copilot til å bygge en hel app - fra instruksjoner til kjørende kode.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Workshop-agenda

| Del | Tema | Tid |
|-----|------|-----|
| 0 | **Live Demo** - Se Copilot bygge appen | 15 min |
| 1 | Custom Instructions | 20 min |
| 2 | Agents og Skills | 20 min |
| 3 | Copilot CLI | 15 min |

---

## Del 0: Live Demo

**Mål:** Se hvordan Copilot genererer en hel fullstack-app fra instruksjoner.

👉 **[Start her: Live Demo](docs/00-live-demo.md)**

Etter demoen har du:
- En kjørende C# backend på http://localhost:5000
- En kjørende React frontend på http://localhost:5173
- Forståelse for hva gode instruksjoner kan oppnå

---

## Del 1-3: Lær hvordan det fungerer

Etter demoen går vi gjennom hvordan instruksjonene er bygget opp:

| Nivå | Dokument | Hva du lærer |
|------|----------|--------------|
| 1 | [Custom Instructions](docs/01-custom-instructions.md) | Grunnleggende instruksjonsfil |
| 2 | [Agents og Skills](docs/02-agents-and-skills.md) | Spesialiserte AI-agenter |
| 3 | [Copilot CLI](docs/03-copilot-cli.md) | Copilot i terminalen |

---

## Prosjektstruktur

```
dde-facts/
├── docs/                           # Tutorial-dokumenter
│   ├── 00-live-demo.md             # 👈 Start her!
│   ├── 01-custom-instructions.md
│   ├── 02-agents-and-skills.md
│   └── 03-copilot-cli.md
├── .github/
│   ├── copilot-instructions.md     # Prosjekt-instruksjoner
│   ├── agents/                     # Custom Agents
│   └── skills/                     # Agent Skills
├── backend/                        # Tom - genereres i demo
│   └── .copilot/instructions.md    # Backend-mønstre
└── frontend/                       # Tom - genereres i demo
    └── .copilot/instructions.md    # Frontend-mønstre
```

---

## Forutsetninger

Før workshopen, installer:

- [ ] [VS Code](https://code.visualstudio.com/)
- [ ] [GitHub Copilot extension](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
- [ ] [.NET 9 SDK](https://dotnet.microsoft.com/download)
- [ ] [Node.js 20+](https://nodejs.org/)

---

## Kom i gang

```bash
# 1. Klon prosjektet
git clone https://github.com/Steinklo/utviklerskolen-ai.git
cd utviklerskolen-ai/dde-facts

# 2. Åpne i VS Code
code .

# 3. Start med Live Demo
# Åpne docs/00-live-demo.md
```

---

## Ressurser

- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Custom Agents](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/coding-agent/create-custom-agents)
- [Agent Skills](https://docs.github.com/en/copilot/concepts/agents/about-agent-skills)

---

Made for Utviklerskolen Kristiansand
