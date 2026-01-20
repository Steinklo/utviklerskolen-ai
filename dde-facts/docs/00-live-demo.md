# Live Demo: La Copilot bygge appen

I denne demoen viser vi hvordan GitHub Copilot kan generere en hel fullstack-app basert kun på instruksjonene vi har skrevet.

## Før vi starter

Sjekk at du har:
- [x] VS Code med GitHub Copilot
- [x] .NET 9 SDK
- [x] Node.js 20+
- [x] Prosjektet åpent i VS Code

## Del 1: Generer Backend (5 min)

### Steg 1: Åpne Copilot Chat

Trykk `Ctrl+Shift+I` (eller `Cmd+Shift+I` på Mac)

### Steg 2: Gi Copilot instruksjoner

Skriv denne prompten:

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

### Steg 3: La Copilot jobbe

Copilot vil generere alle filene. Godta forslagene.

### Steg 4: Kjør backend

```bash
cd backend
dotnet run
```

### Steg 5: Test API

Åpne http://localhost:5000/api/facts i nettleseren.

---

## Del 2: Generer Frontend (5 min)

### Steg 1: Ny Copilot Chat

### Steg 2: Gi Copilot instruksjoner

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

### Steg 3: La Copilot jobbe

Godta alle filene som genereres.

### Steg 4: Installer og kjør

```bash
cd frontend
npm install
npm run dev
```

### Steg 5: Se resultatet

Åpne http://localhost:5173 - du skal se D.D.E. fakta!

---

## Diskusjon

Etter demoen, diskuter med studentene:

1. **Hva gikk bra?**
   - Copilot fulgte instruksjonene
   - Koden matcher mønstrene vi definerte

2. **Hva måtte justeres?**
   - Kanskje noen imports
   - Muligens CORS-konfigurasjon

3. **Hva lærte vi?**
   - Gode instruksjoner = god kode
   - Copilot er en assistent, ikke en erstatning
   - Vi må fortsatt forstå koden

---

## Troubleshooting

### Backend starter ikke
```bash
dotnet restore
dotnet build
# Se etter feilmeldinger
```

### Frontend viser ikke data
1. Sjekk at backend kjører
2. Sjekk CORS i Program.cs
3. Sjekk vite.config.ts proxy

### Copilot genererer feil struktur
Vær mer spesifikk i prompten, referer til `.copilot/instructions.md` eksplisitt.

---

**Neste:** [Nivå 1: Custom Instructions](01-custom-instructions.md) - forstå hvordan instruksjonene fungerer
