---
type: moc
tags: [moc, rvt, flashcards]
updated: 2026-11-09
summary: Every flashcard set in the vault, and how the card format works.
---
# Flashcards MOC

Flashcard sets live in this folder (one note per course unit or topic, from the **Flashcard Set** template). Cards can also sit at the bottom of any lecture, drug or condition note under a `#flashcards` tag; they all get picked up the same way.

## Card format
```
Single line:   What does "brady-" mean?::Slow

Multi-line:    Name the four vital signs in TPR plus one.
               ?
               Temperature, pulse, respiration, and weight (or pain as the "fourth vital sign")
```

## Reviewing
- **Without plugins:** open a set and cover the answers; or ask Claude *"quiz me from [[Flashcards MOC]]"*.
- **With the free Spaced Repetition community plugin:** it finds every `#flashcards` card in the vault and schedules reviews for you, like Anki but inside Obsidian.
- **Ask Claude to make them:** *"make flashcards from [[some lecture note]]"* creates a set here and links it below.

## Sets
- 

## All flashcard notes (Dataview, optional)
```dataview
LIST FROM #flashcards AND !"Templates"
SORT file.name ASC
```

## Related maps
- [[Topics MOC]] · [[Courses MOC]] · [[Home]]
