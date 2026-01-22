# Frontend Instructions (React + TypeScript + Vite)

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
    extend: {},
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
      <div className="min-h-screen bg-gray-100 p-8">
        <h1 className="mb-8 text-center text-3xl font-bold text-gray-800">
          D.D.E. Fakta
        </h1>
        <FactsList />
      </div>
    </QueryClientProvider>
  )
}
```

## Required: src/index.css
```css
@tailwind base;
@tailwind components;
@tailwind utilities;
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

### DO: Typed Components
```typescript
interface FactCardProps {
  fact: Fact;
  onClick?: () => void;
}

export function FactCard({ fact, onClick }: FactCardProps) {
  return (
    <article
      className="cursor-pointer rounded-lg bg-white p-4 shadow-md hover:shadow-lg"
      onClick={onClick}
    >
      <span className="rounded-full bg-blue-100 px-2 py-1 text-xs text-blue-800">
        {fact.category}
      </span>
      <h3 className="mt-2 font-semibold">{fact.title}</h3>
      <p className="mt-1 text-sm text-gray-600">{fact.description}</p>
      <span className="mt-2 block text-xs text-gray-400">{fact.year}</span>
    </article>
  );
}
```

### DO: Handle Loading/Error
```typescript
export function FactsList() {
  const { data: facts, isLoading, error } = useFacts();

  if (isLoading) return <div>Laster...</div>;
  if (error) return <div>Feil ved lasting</div>;

  return (
    <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
      {facts?.map((fact) => <FactCard key={fact.id} fact={fact} />)}
    </div>
  );
}
```

## Styling
- Use Tailwind utility classes
- Responsive: `sm:`, `md:`, `lg:` prefixes
- No inline styles or CSS modules

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
