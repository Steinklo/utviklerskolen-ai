# AI-assistert utvikling Workshop

Lær å bruke AI-verktøy til å bygge en komplett app med **kun instruksjonsfiler** og enkle prompts.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Workshop-oversikt (1t 50min)

| Fase | Tid | Aktivitet |
|------|-----|-----------|
| 1 | 20 min | **Feature-demo**: Ask, Agent, Instructions, CLI |
| 2 | 40 min | **Hands-on**: Generer backend + frontend |
| 3 | 40 min | **Oppgaver**: Modifiser koden |
| 4 | 10 min | **Oppsummering** |

---

## Kom i gang

### 1. Klon prosjektet

```bash
git clone https://github.com/Steinklo/utviklerskolen-ai.git
cd utviklerskolen-ai/dde-facts
code .
```

### 2. Sjekk forutsetninger

- [ ] VS Code med GitHub Copilot
- [ ] .NET 9 SDK
- [ ] Node.js 20+
- [ ] Git (med Git Bash på Windows)

### 3. Start workshopen

**[Workshop-guide](docs/00-workshop.md)**

---

## Læringsmål

Etter workshopen kan du:

1. Generere en komplett app med én prompt
2. Skrive effektive instruksjoner for Copilot
3. Bruke Ask mode for å forstå kode
4. Bruke Agent mode for større endringer
5. Bruke Copilot CLI i terminalen

---

## Prosjektstruktur

```
dde-facts/
├── docs/
│   └── 00-workshop.md              # Workshop-guide
├── .github/
│   ├── copilot-instructions.md     # Prosjekt-instruksjoner
│   ├── agents/                     # Custom Agents
│   └── skills/                     # Agent Skills
├── backend/                        # Genereres i workshop
│   └── .copilot/instructions.md    # Backend-instruksjoner
└── frontend/                       # Genereres i workshop
    └── .copilot/instructions.md    # Frontend-instruksjoner
```

---

## One-Command Generation

Workshopen bruker "magic prompts" for å generere hele appen:

**Backend:**
```
@workspace /new Generate the complete backend following the instructions
```

**Frontend:**
```
@workspace /new Generate the complete frontend following the instructions
```

---

## Ressurser

- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [Copilot CLI](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line)

---

Made for Utviklerskolen Kristiansand
