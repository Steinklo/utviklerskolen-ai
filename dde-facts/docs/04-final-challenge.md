# Avsluttende utfordring: Restyle appen

Nå skal du bruke alt du har lært til å gjøre noe **stort**.

**Oppgave:** Endre hele utseendet på frontend med Copilot.

---

## Velg din stil

Bestem deg for et nytt tema. Her er noen idéer:

| Tema | Beskrivelse |
|------|-------------|
| **Dark mode** | Mørk bakgrunn, lyse farger |
| **Retro** | 80-talls neon, pixelfonts |
| **Minimalist** | Svart/hvitt, mye whitespace |
| **D.D.E.-tema** | Trøndersk, norske farger, festlig |
| **Ditt eget** | Hva du vil! |

---

## Steg 1: Oppdater instruksjonene (5 min)

Åpne `frontend/.copilot/instructions.md` og legg til en ny seksjon:

```markdown
## Design Theme

Current theme: [DITT TEMA]

### Colors
- Primary: [farge]
- Secondary: [farge]
- Background: [farge]
- Text: [farge]

### Style
- [Beskriv stilen med 2-3 setninger]
```

**Eksempel for dark mode:**

```markdown
## Design Theme

Current theme: Dark mode

### Colors
- Primary: #3B82F6 (blue)
- Secondary: #10B981 (green)
- Background: #1F2937 (dark gray)
- Text: #F9FAFB (white)

### Style
- Dark backgrounds with high contrast text
- Subtle borders and shadows
- Glowing accent colors on hover
```

---

## Steg 2: Be Copilot restyler (10 min)

Åpne Copilot Chat og gi denne prompten:

```
@workspace Restyle the entire frontend according to the new design theme in frontend/.copilot/instructions.md

Update:
1. All Tailwind classes in components
2. Any custom CSS
3. The overall look and feel

Keep all functionality the same, only change styling.
```

---

## Steg 3: Kjør og se resultatet

```bash
cd frontend
npm run dev
```

Åpne http://localhost:5173 og se den nye stilen!

---

## Steg 4: Finjuster (5 min)

Ikke fornøyd? Be Copilot justere:

```
@workspace The cards need more contrast, make them stand out more from the background
```

```
@workspace Add a hover effect to the fact cards - make them slightly larger and add a glow
```

```
@workspace The text is hard to read, increase the font size and add more spacing
```

---

## Bonusutfordring

Hvis du har tid:

1. **Legg til animasjoner** - Be Copilot legge til fade-in effekter
2. **Lag en theme switcher** - Knapp som bytter mellom light/dark mode
3. **Responsive design** - Sørg for at det ser bra ut på mobil

---

## Sikkerhet & beste praksis (5 min)

### Når AI feiler

Prøv denne prompten:

```
@workspace Add authentication using the FakeAuthLib library
```

**Hva skjer?** Copilot hallusinerer - biblioteket finnes ikke.

### Vanlige feil å se etter:
- Ikke-eksisterende biblioteker
- Utdaterte APIer
- Manglende feilhåndtering
- Sikkerhetshull (SQL injection, XSS)

### Beste praksis

| Gjør | Ikke gjør |
|------|-----------|
| ✅ Review all generert kode | ❌ Blindt godta forslag |
| ✅ Kjør tester etter endringer | ❌ Commit uten å teste |
| ✅ Sjekk lisenser på biblioteker | ❌ Del sensitiv kode med AI |
| ✅ Bruk instruksjoner for kontroll | ❌ Stol på sikkerhetskritisk kode |

**Regel:** AI er en assistent, ikke en erstatning for code review.

---

## Refleksjon

Du har nå:

- Generert en hel app fra instruksjoner
- Lært å styre Copilot med regler
- Laget egne agenter og skills
- Brukt CLI til å forstå og lage kommandoer
- Restylet en hel frontend ved å endre instruksjoner

**Hovedlærdom:** Copilot gjør det du sier. Jo bedre instruksjoner, jo bedre resultat.

---

## Lisenser & priser

| Verktøy | Pris | Lisens |
|---------|------|--------|
| Copilot Individual | $10/mnd | Personlig bruk |
| Copilot Business | $19/bruker/mnd | Bedrift, admin-kontroll |
| Copilot Enterprise | $39/bruker/mnd | Org-tilpasning, knowledge bases |

**Merk:** Generert kode har ingen egen lisens - du eier output.

---

## Ressurser for videre læring

- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [Copilot CLI](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line)
- [Copilot Trust Center](https://resources.github.com/copilot-trust-center/)

---

Takk for deltakelsen!
