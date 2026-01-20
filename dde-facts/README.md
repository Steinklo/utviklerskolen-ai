# GitHub Copilot Workshop

Lær å bruke GitHub Copilot til å bygge en hel app - fra instruksjoner til kjørende kode.

**Prosjekt:** DDE-facts - morsomme fakta om bandet D.D.E.

---

## Workshop-oversikt

| Del | Tema | Tid | Hva du gjør |
|-----|------|-----|-------------|
| 0 | **Generer appen** | 15 min | Du genererer backend + frontend med Copilot |
| 1 | **Custom Instructions** | 20 min | Legg til regler, se effekten |
| 2 | **Agents, Skills, Agent Mode, Hooks** | 30 min | Lag agenter, prøv agent mode, sett opp hooks |
| 3 | **Copilot CLI** | 15 min | Bruk Copilot i terminalen |
| 4 | **Utfordring** | 15 min | Restyle hele appen |

**Total tid:** ca. 1 time 45 min

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

**[Del 0: Generer appen](docs/00-live-demo.md)**

---

## Læringsmål

Etter workshopen kan du:

1. Skrive instruksjoner som styrer Copilot
2. Lage egne agenter for spesialiserte oppgaver
3. Bruke Agent Mode for større endringer
4. Sette opp hooks for automatisering
5. Bruke Copilot CLI i terminalen
6. Restyler en hel app ved å endre instruksjoner

---

## Prosjektstruktur

```
dde-facts/
├── docs/                           # Workshop-dokumenter
│   ├── 00-live-demo.md             # Del 0: Generer appen
│   ├── 01-custom-instructions.md   # Del 1: Instruksjoner
│   ├── 02-agents-and-skills.md     # Del 2: Agents, Skills, Mode, Hooks
│   ├── 03-copilot-cli.md           # Del 3: CLI
│   └── 04-final-challenge.md       # Del 4: Utfordring
├── .github/
│   ├── copilot-instructions.md     # Prosjekt-instruksjoner
│   ├── agents/                     # Custom Agents
│   ├── skills/                     # Agent Skills
│   └── hooks/                      # Git hooks (lages i øvelse)
├── backend/                        # Genereres i Del 0
└── frontend/                       # Genereres i Del 0
```

---

## Ressurser

- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [Copilot CLI](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line)

---

Made for Utviklerskolen Kristiansand
