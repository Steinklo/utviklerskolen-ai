---
name: pre-commit
description: Kjør code review før commit
---

# Pre-commit Hook

Bruk @code-review skill til å gjennomgå staged endringer.

## Instruksjoner

Gjør en code review av alle staged filer ved å bruke code-review sjekklisten. Fokuser på:

1. Sjekk at backend følger C#-konvensjonene
2. Sjekk at frontend følger React/TypeScript-konvensjonene
3. Verifiser at retro terminal-temaet er konsistent
4. Se etter hardkodede hemmeligheter eller console.log

Hvis det er problemer, list dem opp og foreslå fikser.
