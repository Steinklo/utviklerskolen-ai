# AI-assistert utvikling Workshop

Lær å bruke AI-verktøy til å bygge en komplett app med **kun instruksjonsfiler** og enkle prompts.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Kom i gang

```bash
git clone https://github.com/Steinklo/utviklerskolen-ai.git
cd utviklerskolen-ai/dde-facts
code .
```

## Forutsetninger

- VS Code med GitHub Copilot
- .NET 10 SDK
- Node.js 20+
- GitHub CLI (`gh extension install github/gh-copilot`)

## Start workshopen

**[Workshop-guide](docs/00-workshop.md)**

---

## Læringsmål

1. Generere en komplett app med én prompt
2. Skrive effektive instruksjoner for Copilot
3. Bruke Agent Mode, Skills og Agents
4. Bruke Copilot CLI i terminalen

---

## Prosjektstruktur

```
dde-facts/
├── docs/
│   └── 00-workshop.md              # Workshop-guide
├── .github/
│   └── copilot-instructions.md     # Prosjekt-instruksjoner
├── backend/
│   └── .copilot/instructions.md    # Backend-instruksjoner
└── frontend/
    └── .copilot/instructions.md    # Frontend-instruksjoner
```

---

Made for Utviklerskolen Kristiansand
