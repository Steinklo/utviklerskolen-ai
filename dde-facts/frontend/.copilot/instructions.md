# Frontend Instructions (React + TypeScript + Vite)

## Project Setup (run these commands first)

1. Initialize Vite + React + TypeScript:
   ```bash
   npm create vite@latest . -- --template react-ts
   ```

2. Install dependencies:
   ```bash
   npm install
   npm install @tanstack/react-query
   npm install -D tailwindcss postcss autoprefixer
   npx tailwindcss init -p
   ```

3. Clean up template files:
   ```bash
   rm src/App.css src/index.css src/assets/react.svg
   ```

## Configuration

- **Dev server:** Port 5173
- **API proxy:** Forward `/api` to `http://localhost:5000`

## Project Structure
```
frontend/
├── index.html
├── package.json
├── vite.config.ts
├── tailwind.config.js
├── postcss.config.js
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

## Required: tailwind.config.js
```javascript
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        terminal: {
          black: '#0a0a0f',
          dark: '#1a1a2e',
          green: '#39ff14',
          cyan: '#00fff5',
          magenta: '#ff00ff',
          amber: '#ffb000',
        }
      },
      fontFamily: {
        mono: ['JetBrains Mono', 'Fira Code', 'monospace'],
      },
      boxShadow: {
        'neon-green': '0 0 5px #39ff14, 0 0 20px #39ff1450',
        'neon-cyan': '0 0 5px #00fff5, 0 0 20px #00fff550',
      }
    },
  },
  plugins: [],
}
```

## Required: App.tsx with QueryClientProvider
```tsx
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { FactsList } from './pages/FactsList'

const queryClient = new QueryClient()

export function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <div className="min-h-screen bg-terminal-black p-8 font-mono">
        <h1 className="mb-2 text-center text-4xl font-bold text-terminal-green drop-shadow-[0_0_10px_#39ff14]">
          D.D.E. FAKTA
        </h1>
        <p className="mb-8 text-center text-terminal-cyan text-sm tracking-widest">
          [ TRØNDERROCK DATABASE v1.0 ]
        </p>
        <FactsList />
      </div>
    </QueryClientProvider>
  )
}
```

## Required: src/index.css
```css
@import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;700&display=swap');

@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  body {
    @apply bg-terminal-black text-terminal-green;
  }
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

## Key Patterns

### DO: React Query for Data
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

### DON'T: useEffect for Fetching
```typescript
// Avoid
useEffect(() => { fetch(...).then(setData) }, []);
```

### DO: Typed Components (Synthwave Terminal Style)
```typescript
interface FactCardProps {
  fact: Fact;
  onClick?: () => void;
}

export function FactCard({ fact, onClick }: FactCardProps) {
  return (
    <article
      className="cursor-pointer border border-terminal-green/30 bg-terminal-dark p-4
                 hover:border-terminal-green hover:shadow-neon-green transition-all duration-300"
      onClick={onClick}
    >
      <span className="border border-terminal-cyan px-2 py-1 text-xs text-terminal-cyan uppercase tracking-wider">
        {fact.category}
      </span>
      <h3 className="mt-3 text-terminal-green font-bold">{fact.title}</h3>
      <p className="mt-2 text-sm text-terminal-green/70">{fact.description}</p>
      <span className="mt-3 block text-xs text-terminal-amber">
        &gt; {fact.year}
      </span>
    </article>
  );
}
```

### DO: Handle Loading/Error (Terminal Style)
```typescript
export function FactsList() {
  const { data: facts, isLoading, error } = useFacts();

  if (isLoading) return (
    <div className="text-terminal-green animate-pulse text-center">
      &gt; LOADING DATA...
    </div>
  );
  if (error) return (
    <div className="text-terminal-magenta text-center">
      &gt; ERROR: CONNECTION FAILED
    </div>
  );

  return (
    <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
      {facts?.map((fact) => <FactCard key={fact.id} fact={fact} />)}
    </div>
  );
}
```

## Styling: Retro Terminal / 80s Synthwave Theme
- **Theme:** Dark terminal with neon green text, cyan/magenta accents
- **Font:** JetBrains Mono (monospace)
- **Colors:**
  - `terminal-black` (#0a0a0f) - Background
  - `terminal-dark` (#1a1a2e) - Card background
  - `terminal-green` (#39ff14) - Primary text, neon glow
  - `terminal-cyan` (#00fff5) - Accents, categories
  - `terminal-magenta` (#ff00ff) - Errors, highlights
  - `terminal-amber` (#ffb000) - Secondary info (years)
- **Effects:** Neon glow shadows, border transitions
- Use Tailwind utility classes
- Responsive: `sm:`, `md:`, `lg:` prefixes

## Naming
- Components: `PascalCase.tsx`
- Hooks: `useCamelCase.ts`
- Types: `PascalCase`

## Running
```bash
cd frontend
npm install
npm run dev
# App available at http://localhost:5173
```
