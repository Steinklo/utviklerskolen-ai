# Frontend

Denne mappen er tom - med vilje!

## Live Demo

Under workshopen vil vi bruke GitHub Copilot til å generere hele frontend-en basert på instruksjonene i `.copilot/instructions.md`.

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
