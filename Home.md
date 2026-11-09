---
type: moc
tags: [moc, rvt]
updated: 2026-11-09
summary: Front door of the vault. Start here.
---
# 🏠 Home

Your RVT study vault. Everything is one or two clicks from here.

> [!todo]- First night checklist (click to expand)
> 1. Install Obsidian and Git, clone this repository, and open the folder as a vault: steps 1–3 in `README.md`.
> 2. Settings → Community plugins → *Turn on* → Browse → install **Git** → in its settings set *Auto commit-and-sync interval* to 10 minutes. From now on your notes back themselves up.
> 3. Tell Claude your Semester 1 course titles (*"new course: …"*) so it builds the course folders. Until then, new notes land in `00 Inbox`, which is fine.
> 4. For each lesson: `Ctrl/Cmd + N` for a new note, then `Ctrl/Cmd + P` → *Insert template* → **Lecture Note**. Rename the note `<Code> L01 - <Title>`, for example `IVT L01 - What a Vet Tech Does`.
> 5. Anything confusing goes under *Questions I still have* in the lecture note, or straight into [[Questions for Claude]].
> 6. End the night with `Ctrl/Cmd + P` → *Open today's daily note* and write two lines about what you covered and what's next.

## Start here
- 🎓 **Now:** [[Introduction to Veterinary Technology MOC]] — Semester 1, your current course; every section has a note waiting
- 📅 [[Semester 1 Pacing Plan]] — two sections a week, 1–2 hours a day, finish Semester 1 by March 24, 2027
- 📚 [[Courses MOC]] — your Penn Foster courses, one folder each, lecture notes inside
- 🧠 [[Topics MOC]] — everything you learn, organized by the 10 VTNE exam domains
- ❓ [[Questions for Claude]] — drop questions while you study; Claude answers them inside the vault
- 🃏 [[Flashcards MOC]] — every flashcard set, ready for review

## Quick references
- [[Normal Values]] · [[Drug Dosage Calculations]] · [[Medical Terminology Glossary]]

## Daily habits
- **Open today's study log:** `Ctrl/Cmd + P` → *Open today's daily note* (it lands in `05 Study Log` using the Study Session Log template)
- **New note from a template:** `Ctrl/Cmd + P` → *Insert template*, then pick Lecture Note, Topic Note, Drug Card, Condition Card, Procedure Note or Flashcard Set
- **Capture fast:** new notes land in `00 Inbox` by default; file them later (or ask Claude to)

## Working with Claude
Open this repository in Claude Code at claude.ai/code, then try:
- *"answer my questions"*
- *"quiz me on anesthesia monitoring, ten questions, one at a time"*
- *"make flashcards from [[IVT L01 - Working in the Veterinary Field]]"*
- *"I don't get why heart rate drops under dexmedetomidine. Explain it simply, using my notes first."*
- *"summarize what I studied this week and tell me what to review"*
- *"new course: Veterinary Pharmacology"* (creates the folder and map)

Claude reads `CLAUDE.md` for the house rules: your notes first, then the web with sources, always written back into the vault.

## Recently updated
Live list from the **Dataview** plugin, which ships with the vault.

```dataview
TABLE type, updated
FROM "" AND !"Templates"
WHERE updated
SORT updated DESC
LIMIT 15
```
