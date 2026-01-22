# Frontend-instruksjoner (React + TypeScript + Vite)

## VIKTIG: Kjør disse kommandoene SELV!

**Du MÅ kjøre disse kommandoene i terminalen - ikke bare vis dem!**

### Steg 1: Initialiser Vite + React + TypeScript
```bash
npm create vite@latest . -- --template react-ts
```

### Steg 2: Installer dependencies
```bash
npm install
npm install @tanstack/react-query
```

### Steg 3: Slett template-filer vi ikke trenger
```bash
rm src/App.css src/assets/react.svg
```

**⚠️ ALDRI slett `.copilot/`-mappen eller `instructions.md`-filer!**

**Kjør ALLE kommandoene før du genererer kode!**

## Configuration

- **Dev server:** Port 5173
- **API proxy:** Forward `/api` to `http://localhost:5000`

## Project Structure
```
frontend/
├── index.html
├── package.json
├── vite.config.ts
├── tsconfig.json
└── src/
    ├── main.tsx
    ├── App.tsx
    ├── index.css
    ├── components/
    │   └── FactCard.tsx
    ├── pages/
    │   └── FactsList.tsx
    ├── hooks/
    │   └── useFacts.ts
    └── types/
        └── dde.ts
```

## Required: vite.config.ts
```typescript
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    port: 5173,
    proxy: {
      '/api': {
        target: 'http://localhost:5000',
        changeOrigin: true,
      },
    },
  },
})
```

## Required: index.html
```html
<!DOCTYPE html>
<html lang="no">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://fonts.googleapis.com/css2?family=VT323&display=swap" rel="stylesheet">
    <title>D.D.E. FAKTA</title>
  </head>
  <body>
    <div id="root"></div>
    <script type="module" src="/src/main.tsx"></script>
  </body>
</html>
```

---

## Design System – Retro Terminal / CRT Aesthetic

### Color Palette
```css
:root {
  --bg-black: #000000;
  --bg-dark: #001100;
  --text-green: #00FF41;
  --text-dim: #008800;
  --text-bright: #00FF9F;
  --text-critical: rgba(255, 51, 0, 0.8);
}
```

### Typography
- **Font:** VT323 (Google Fonts) - authentic CRT terminal feel
- **Body text:** 18-22px
- **Titles:** 24-28px
- **Letter-spacing:** 0.5-1px

### Visual Effects
- **Text glow:** `text-shadow: 0 0 4px #00ff41, 0 0 8px #00ff41`
- **Scanlines:** Repeating gradient overlay
- **Vignette:** Radial gradient dark edges

### Design Constraints
- ❌ No light mode (dark only)
- ❌ No rounded corners
- ❌ No gradients (except scanlines/vignette)
- ✅ Green-on-black only
- ✅ Monospace everything

---

## Required: src/index.css
```css
@import url('https://fonts.googleapis.com/css2?family=VT323&display=swap');

:root {
  --bg-black: #000000;
  --bg-dark: #001100;
  --text-green: #00FF41;
  --text-dim: #008800;
  --text-bright: #00FF9F;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'VT323', 'Courier New', monospace;
  font-size: 20px;
  line-height: 1.5;
  letter-spacing: 0.5px;
  background-color: var(--bg-black);
  color: var(--text-green);
  min-height: 100vh;
}

/* Scanline overlay */
body::before {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: repeating-linear-gradient(
    transparent 0px,
    transparent 2px,
    rgba(0, 0, 0, 0.3) 2px,
    rgba(0, 0, 0, 0.3) 4px
  );
  pointer-events: none;
  z-index: 1000;
}

/* Vignette effect */
body::after {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: radial-gradient(
    ellipse at center,
    transparent 0%,
    transparent 60%,
    rgba(0, 0, 0, 0.8) 100%
  );
  pointer-events: none;
  z-index: 999;
}
```

## Required: App.tsx
```tsx
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { FactsList } from './pages/FactsList'
import './index.css'

const queryClient = new QueryClient()

export function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <div className="container">
        <header className="header">
          <h1 className="title">D.D.E. FAKTA</h1>
          <p className="subtitle">[ TRØNDERROCK DATABASE v1.0 ]</p>
        </header>
        <main>
          <FactsList />
        </main>
      </div>
    </QueryClientProvider>
  )
}
```

Add to index.css:
```css
.container {
  max-width: 1000px;
  margin: 0 auto;
  padding: 40px 20px;
}

.header {
  text-align: center;
  margin-bottom: 48px;
}

.title {
  font-size: 48px;
  text-shadow: 0 0 10px #00ff41, 0 0 20px #00ff41;
  margin-bottom: 8px;
}

.subtitle {
  font-size: 18px;
  color: var(--text-dim);
  letter-spacing: 2px;
}
```

## Types

```typescript
// src/types/dde.ts
export interface Fact {
  id: number;
  title: string;
  description: string;
  year: number;
  category: 'History' | 'Hits' | 'Live' | 'Trivia';
}

export interface FactsResponse {
  facts: Fact[];
}
```

## Required: useFacts hook
```typescript
// src/hooks/useFacts.ts
import { useQuery } from '@tanstack/react-query'
import type { FactsResponse } from '../types/dde'

export function useFacts() {
  return useQuery({
    queryKey: ['facts'],
    queryFn: () => fetch('/api/facts').then(r => r.json()) as Promise<FactsResponse>,
    select: (data) => data.facts,
  });
}
```

## Required: FactCard component
```tsx
// src/components/FactCard.tsx
import type { Fact } from '../types/dde'
import './FactCard.css'

interface FactCardProps {
  fact: Fact;
}

export function FactCard({ fact }: FactCardProps) {
  return (
    <article className="fact-card">
      <div className="fact-header">
        <span className="fact-category">{fact.category.toUpperCase()}</span>
        <span className="fact-year">{fact.year}</span>
      </div>
      <h3 className="fact-title">&gt; {fact.title.toUpperCase()}</h3>
      <p className="fact-description">{fact.description}</p>
    </article>
  );
}
```

```css
/* src/components/FactCard.css */
.fact-card {
  background-color: var(--bg-dark);
  border: 1px solid var(--text-dim);
  padding: 20px;
  margin-bottom: 16px;
  transition: border-color 0.2s, box-shadow 0.2s;
}

.fact-card:hover {
  border-color: var(--text-green);
  box-shadow: 0 0 10px rgba(0, 255, 65, 0.3);
}

.fact-header {
  display: flex;
  justify-content: space-between;
  margin-bottom: 12px;
  font-size: 14px;
}

.fact-category {
  color: var(--text-bright);
}

.fact-year {
  color: var(--text-dim);
}

.fact-title {
  font-size: 24px;
  margin-bottom: 12px;
  text-shadow: 0 0 4px #00ff41;
}

.fact-description {
  color: var(--text-dim);
  font-size: 18px;
}
```

## Required: FactsList page
```tsx
// src/pages/FactsList.tsx
import { useFacts } from '../hooks/useFacts'
import { FactCard } from '../components/FactCard'
import './FactsList.css'

export function FactsList() {
  const { data: facts, isLoading, error } = useFacts();

  if (isLoading) {
    return <div className="status">&gt; LOADING DATA...</div>
  }

  if (error) {
    return <div className="status error">&gt; ERROR: CONNECTION FAILED</div>
  }

  return (
    <div className="facts-grid">
      {facts?.map((fact) => <FactCard key={fact.id} fact={fact} />)}
    </div>
  );
}
```

```css
/* src/pages/FactsList.css */
.facts-grid {
  display: grid;
  gap: 16px;
}

@media (min-width: 768px) {
  .facts-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

.status {
  text-align: center;
  font-size: 24px;
  animation: blink 1s step-end infinite;
}

.status.error {
  color: rgba(255, 51, 0, 0.8);
}

@keyframes blink {
  50% { opacity: 0.5; }
}
```

---

## Key Patterns

### DO: React Query for Data
```typescript
const { data, isLoading, error } = useQuery({...})
```

### DON'T: useEffect for Fetching
```typescript
// Avoid
useEffect(() => { fetch(...).then(setData) }, []);
```

### DO: Typed Props
```typescript
interface Props {
  fact: Fact;
}
```

---

## Naming
- Components: `PascalCase.tsx`
- Hooks: `useCamelCase.ts`
- CSS: `ComponentName.css`
- Types: `PascalCase`

## Running
```bash
cd frontend
npm run dev
# App available at http://localhost:5173
```
