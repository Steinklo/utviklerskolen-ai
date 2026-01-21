# Del 0: Generer appen selv

I denne delen skal **du** la Copilot generere en hel fullstack-app. Jobb gjerne i par!

---

## Grunnleggende KI & AI-verktøy (5 min)

### Hvordan fungerer det?
- **LLM** (Large Language Model) = trent på enorme mengder kode og tekst
- Predikerer "mest sannsynlig neste ord/linje"
- Forstår ikke koden - gjenkjenner mønstre

### AI-verktøy i 2025

| Verktøy | Best til | Pris |
|---------|----------|------|
| GitHub Copilot | Inline-koding i IDE | $10-19/mnd |
| Claude Code / Cursor | Store endringer, refaktorering | $20/mnd |
| ChatGPT / Claude | Design, forklaring, planlegging | Gratis-$20/mnd |

**I dag:** Vi bruker Copilot, men prinsippene gjelder alle verktøy.

---

## Før du starter

Sjekk at du har:
- [x] VS Code med GitHub Copilot
- [x] .NET 9 SDK
- [x] Node.js 20+
- [x] Prosjektet åpent i VS Code

---

## Steg 1: Generer Backend (5 min)

### 1.1 Åpne Copilot Chat

Trykk `Ctrl+Shift+I` (eller `Cmd+Shift+I` på Mac)

### 1.2 Lim inn denne prompten

```
@workspace Create a complete .NET 9 Minimal API in the backend folder for a DDE-facts app.

Follow the patterns in backend/.copilot/instructions.md exactly.

Include:
1. Project file (DdeFacts.Api.csproj)
2. Program.cs with Minimal API endpoints for GET /api/facts and GET /api/facts/{id}
3. A FactDto record
4. A FactService with 5 hardcoded D.D.E. facts in Norwegian

Use the data contract from .github/copilot-instructions.md
```

### 1.3 Godta filene

Copilot genererer flere filer. Godta alle forslagene.

### 1.4 Kjør backend

```bash
cd backend
dotnet run
```

### 1.5 Test at det fungerer

Åpne http://localhost:5000/api/facts i nettleseren. Du skal se JSON med D.D.E. fakta!

---

## Steg 2: Generer Frontend (5 min)

### 2.1 Ny Copilot Chat

### 2.2 Lim inn denne prompten

```
@workspace Create a complete React + TypeScript + Vite frontend in the frontend folder for a DDE-facts app.

Follow the patterns in frontend/.copilot/instructions.md exactly.

Include:
1. Vite project setup with React and TypeScript
2. Tailwind CSS configuration
3. TanStack Query setup
4. Types matching the backend API
5. useFacts hook using React Query
6. FactCard component with Tailwind styling
7. FactsList page showing all facts

Configure vite to proxy /api to http://localhost:5000
```

### 2.3 Godta filene

### 2.4 Installer og kjør

```bash
cd frontend
npm install
npm run dev
```

### 2.5 Se resultatet

Åpne http://localhost:5173 - du skal se D.D.E. fakta med styling!

---

## Refleksjon (2 min)

Diskuter med partneren din:

1. **Hva skjedde?** Copilot leste instruksjonene og genererte kode som matcher.
2. **Hva måtte du justere?** Kanskje noen imports eller CORS?
3. **Hva betyr dette?** Gode instruksjoner = forutsigbar kode.

---

## Tidsmåling

Noter ned:
- Faktisk tid brukt: ___ min
- Estimert tid uten AI: ___ min
- Linjer kode generert: ___

Del med gruppen!

---

## Troubleshooting

### Backend starter ikke
```bash
dotnet restore
dotnet build
```

### Frontend viser ikke data
1. Sjekk at backend kjører på port 5000
2. Sjekk CORS i Program.cs
3. Sjekk vite.config.ts proxy

---

**Neste:** [Nivå 1: Custom Instructions](01-custom-instructions.md)
