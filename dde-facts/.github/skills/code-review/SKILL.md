---
name: code-review
description: Sjekkliste for code review i DDE-facts. Bruk ved gjennomgang av kode eller PR.
---

# Code Review Sjekkliste

## Backend (C#)
- [ ] Records for DTOs (ikke mutable klasser)
- [ ] Minimal API (ikke controllers)
- [ ] Async/await overalt
- [ ] Dependency injection brukt
- [ ] CORS konfigurert for localhost:5173

## Frontend (React/TypeScript)
- [ ] React Query for data-henting (ikke useEffect)
- [ ] Typed props med interfaces
- [ ] Loading/error states håndtert

## Retro Terminal Tema
- [ ] Bruker CSS-variabler (--bg-black, --text-green, etc.)
- [ ] VT323 font (ikke andre fonter)
- [ ] Ingen rounded corners
- [ ] Grønn-på-svart fargeskjema
- [ ] Neon glow-effekter på hover
- [ ] Scanlines og vignette på body

## Generelt
- [ ] Ingen hardkodede hemmeligheter
- [ ] Ingen console.log igjen
- [ ] Koden er lesbar
- [ ] Norsk innhold, engelsk kode

## D.D.E. Vibe
- [ ] Svarer med D.D.E.-fraser
- [ ] Bruker trøndersk entusiasme
- [ ] Rai Rai! 🎸
