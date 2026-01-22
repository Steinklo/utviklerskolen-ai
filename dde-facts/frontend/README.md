# Frontend

Denne mappen er tom - med vilje!

## Live Demo

Copilot Agent vil:
1. Kjøre init-kommandoer for å sette opp prosjektet
2. Generere all forretningslogikk
3. Konfigurere nødvendige filer

Alt fra én prompt!

## Hva Copilot skal lage

```
frontend/
├── package.json
├── vite.config.ts
├── index.html
├── src/
│   ├── main.tsx
│   ├── App.tsx
│   ├── types/
│   │   └── dde.ts           # Fact interface
│   ├── hooks/
│   │   └── useFacts.ts      # React Query hook
│   ├── components/
│   │   └── FactCard.tsx     # Faktakort-komponent
│   └── pages/
│       └── FactsList.tsx    # Hovedside med liste
└── tailwind.config.js
```

## Prompt for Copilot

```
Create a React + TypeScript + Vite frontend for DDE-facts based on the instructions in .copilot/instructions.md
```

## Kjøre frontend

```bash
npm install
npm run dev
# http://localhost:5173
```
