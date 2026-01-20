# Frontend Instructions (React + TypeScript + Vite)

## Project Structure
```
frontend/src/
├── components/    # FactCard.tsx
├── pages/         # FactsList.tsx
├── hooks/         # useFacts.ts
├── services/      # api.ts
└── types/         # dde.ts
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

### ✅ DO: React Query for Data
```typescript
// src/hooks/useFacts.ts
export function useFacts() {
  return useQuery({
    queryKey: ['facts'],
    queryFn: () => fetch('/api/facts').then(r => r.json()),
    select: (data) => data.facts,
  });
}
```

### ❌ DON'T: useEffect for Fetching
```typescript
// Avoid
useEffect(() => { fetch(...).then(setData) }, []);
```

### ✅ DO: Typed Components
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
    </article>
  );
}
```

### ✅ DO: Handle Loading/Error
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

## Testing (Vitest)

```typescript
import { render, screen } from '@testing-library/react';
import { FactCard } from '../src/components/FactCard';

const mockFact = { id: 1, title: 'Test', description: 'Desc', year: 1992, category: 'History' as const };

test('renders fact title', () => {
  render(<FactCard fact={mockFact} />);
  expect(screen.getByText('Test')).toBeInTheDocument();
});
```

## Naming
- Components: `PascalCase.tsx`
- Hooks: `useCamelCase.ts`
- Types: `PascalCase`
