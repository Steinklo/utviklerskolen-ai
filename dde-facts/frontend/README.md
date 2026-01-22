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
└── index.css                # Retro terminal CSS
```

## Prompt for Copilot

```
@workspace Sett opp og generer komplett frontend basert på instruksjonene.
Kjør ALLE setup-kommandoene i terminalen SELV først, deretter lag applikasjonskoden.
```

## Kjøre frontend

```bash
npm install
npm run dev
# http://localhost:5173
```
