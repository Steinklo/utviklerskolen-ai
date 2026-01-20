# Nivå 2: Agents og Skills

Lag spesialiserte AI-agenter med egen kunnskap.

---

## Hva er forskjellen?

| Type | Hva det er | Filplassering |
|------|------------|---------------|
| **Agent** | En Copilot med spesifikke instruksjoner | `.github/agents/NAVN.agent.md` |
| **Skill** | Kunnskap agenten kan bruke | `.github/skills/NAVN/SKILL.md` |

---

## Øvelse 1: Lag en dokumentasjons-agent (10 min)

**Din oppgave:** Lag en agent som skriver dokumentasjon på norsk.

### Steg 1: Opprett filen

Opprett `.github/agents/docs.agent.md`

### Steg 2: Legg til innhold

```markdown
---
name: docs
description: Writes documentation in Norwegian
tools: githubRepo
---

# Documentation Agent

Du skriver klar og tydelig dokumentasjon på norsk.

## Regler
1. Forklar hva koden gjør i enkle ord
2. Gi praktiske eksempler
3. List opp parametere og returverdier
4. Bruk norske termer der det passer
```

### Steg 3: Test agenten

1. Åpne Copilot Chat (`Ctrl+Shift+I`)
2. Skriv: `@docs dokumenter FactService klassen`
3. **Sjekk:** Er dokumentasjonen på norsk? Er den forståelig?

---

## Øvelse 2: Utvid D.D.E.-kunnskapen (10 min)

Prosjektet har en skill med D.D.E.-fakta. Du skal utvide den.

**Din oppgave:** Legg til konserter og musikalsk stil.

### Steg 1: Åpne skill-filen

Åpne `.github/skills/dde-expert/SKILL.md`

### Steg 2: Legg til ny kunnskap på slutten

```markdown
## Musikalsk stil
- Blanding av rock, trøndersk folkemusikk og danseband
- Kjennetegnes av Bjarne Brøndbos karakteristiske vokal
- Ofte humoristiske tekster om hverdagslige temaer
- Bruker trekkspill og gitar som hovedinstrumenter

## Kjente konserter
- Spiller årlig på russetreff over hele landet
- Utsolgte konserter på Rockefeller i Oslo
- Legendariske opptredener på Namsos byfest
```

### Steg 3: Test kunnskapen

1. Åpne Copilot Chat
2. Spør: `Hva kjennetegner D.D.E. sin musikalske stil?`
3. Spør: `Hvor har D.D.E. spilt konserter?`
4. **Sjekk:** Bruker Copilot informasjonen du la til?

---

## Eksperiment: Lag din egen agent (5 min)

Nå skal du lage en agent fra scratch for noe **du** vil ha.

### Idéer

- **`@explain`** - Forklarer kode for nybegynnere
- **`@review`** - Gir feedback på kode
- **`@test`** - Foreslår tester for kode

### Mal

```markdown
---
name: ditt-navn
description: Hva agenten gjør (viktig for når den aktiveres!)
tools: githubRepo
---

# Agentens rolle

[Beskriv hva agenten skal gjøre]

## Regler
1. [Regel 1]
2. [Regel 2]
3. [Regel 3]
```

### Test den

Opprett filen og test med `@ditt-navn [kommando]`

---

## Nøkkelpunkter

- Agents = spesialiserte roller med egne regler
- Skills = domenekunnskap som aktiveres automatisk
- `description` feltet bestemmer når de brukes
- Start enkelt, utvid basert på behov

---

**Neste:** [Nivå 3: Copilot CLI](03-copilot-cli.md)
