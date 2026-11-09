---
type: moc
tags: [moc, rvt]
updated: 2026-11-09
summary: Front door of the vault. Start here.
---
# 🏠 Home

Your RVT study vault. Everything is one or two clicks from here.

## Start here
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
- *"make flashcards from [[AP1 L03 - Cardiovascular System]]"*
- *"I don't get why heart rate drops under dexmedetomidine. Explain it simply, using my notes first."*
- *"summarize what I studied this week and tell me what to review"*
- *"new course: Veterinary Pharmacology"* (creates the folder and map)

Claude reads `CLAUDE.md` for the house rules: your notes first, then the web with sources, always written back into the vault.

## Recently updated
Needs the free **Dataview** community plugin; harmless without it.

```dataview
TABLE type, updated
FROM "" AND !"Templates"
WHERE updated
SORT updated DESC
LIMIT 15
```
