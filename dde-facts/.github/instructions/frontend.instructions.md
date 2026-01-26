---
applyTo: "frontend/**"
---
# Frontend-instruksjoner (React + TypeScript + Vite)

## Setup-kommandoer (kjør SELV!)

**Steg 1:** Initialiser Vite
```bash
npm create vite@latest . -- --template react-ts
```

**Steg 2:** Installer dependencies
```bash
npm install && npm install @tanstack/react-query
```

**Steg 3:** Slett template-filer (src/App.css, src/assets/react.svg)

## Konfigurasjon

- **Dev server:** Port 5173
- **API proxy:** `/api` → `http://localhost:5000`

## Mappestruktur

```
frontend/src/
├── App.tsx
├── index.css
├── components/FactCard.tsx
├── pages/FactsList.tsx
├── hooks/useFacts.ts
└── types/dde.ts
```

## Design System: Retro Terminal / CRT

### Fargepalett
```css
--bg-black: #000000;
--bg-dark: #001100;
--text-green: #00FF41;
--text-dim: #008800;
--text-bright: #00FF9F;
```

### Typografi
- **Font:** VT323 (Google Fonts)
- **Størrelse:** 18-22px body, 24-28px titles

### Visuelle effekter
- Text glow: `text-shadow: 0 0 4px #00ff41`
- Scanlines: Repeating gradient overlay
- Vignette: Radial gradient mørke kanter

### Constraints
- ❌ Ingen light mode
- ❌ Ingen rounded corners
- ❌ Ingen farger utenom grønn/svart
- ✅ Monospace everywhere

## Regler

### DO ✅
- Bruk **React Query** for data fetching
- Bruk **TypeScript interfaces** for props
- Bruk **CSS modules** eller separate `.css` filer
- Bruk **named exports**: `export function Component()`

### DON'T ❌
- Ingen `useEffect` for fetching
- Ingen `any` types
- Ingen inline styles (bruk CSS variabler)
- Ingen default exports

## Navngivning

- Components: `PascalCase.tsx`
- Hooks: `useCamelCase.ts`
- CSS: `ComponentName.css`
- Types: `PascalCase`
