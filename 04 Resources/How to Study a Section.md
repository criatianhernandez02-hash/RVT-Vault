---
type: resource
tags: [rvt, resource]
status: evergreen
created: 2026-11-09
updated: 2026-11-09
summary: The study loop for every Penn Foster section, built on what makes memory stick: retrieval, spacing, and explaining in your own words.
aliases: [study loop, how to study, study method]
---
# How to Study a Section

> [!abstract] The whole method in one line
> **Ask → Read → Dump → Fix → Card → Teach → Test.** Reading is the smallest part. Pulling things *out* of your head is what makes them stay.

Why this order: decades of memory research agree on a few things. You remember what you **retrieve**, not what you re-read. **Spacing** practice out beats cramming. **Explaining in your own words** exposes what you don't actually understand yet. Highlighting and re-reading feel productive and mostly aren't. The loop below is those findings turned into a routine that fits one or two study nights per section.

## The loop

### 1. Ask (5 min) — before you read
Open the section's note. Skim the lesson's headings and objectives in the Penn Foster portal. Under **Before reading**, write three questions you expect the section to answer. Now you read with a purpose instead of drifting.

### 2. Read (30–60 min) — with the note open
Read one lesson heading at a time. Take notes **in your own words**, one idea per bullet. Every new term goes under **Key terms**, defined in plain language. When something is confusing, write it under **Questions I still have** and keep moving. Don't copy sentences from the lesson: if you can't say it yourself yet, that's a question, not a note.

### 3. Dump (5–10 min) — book closed
Close the lesson. Under **Brain dump**, write everything you remember from what you just read. Messy is fine. This is the step most people skip and the step that does the most work.

### 4. Fix (5 min)
Reopen the lesson and compare. Whatever you forgot or got wrong goes into your notes in **bold**. The bold items are your weak spots; they become your first flashcards.

### 5. Card (5–10 min)
Write 5 to 10 flashcards under **Flashcards** (`Question::Answer`). One fact per card, phrased the way an exam would ask it. Start with the bold items. The Spaced Repetition plugin (flashcard icon in the left ribbon) schedules them from here on; reviewing takes about ten minutes a day.

### 6. Teach (5 min)
Write the **three-sentence summary** as if explaining to a classmate who missed the lesson. Or do it out loud with Claude: *"teach-back: IVT L03"*. Claude plays the classmate, asks what's unclear, and points out gaps.

### 7. Test
Take the section's exam only when the note has its summary and at least five cards. Afterwards, every question you missed becomes a flashcard. Then set the note's `status` to `evergreen` and tick it in the [[Semester 1 Pacing Plan]].

## Where things go

| You have | Put it | Then |
| --- | --- | --- |
| Notes from a lesson | the section note (`01 Courses/<Course>/<Code> L<nn> - …`) | link concepts that outlive the course to topic notes |
| A concept you'll need again (a structure, drug, disease, law, procedure) | a **topic note** in `02 Topics/<domain>/`, from the matching template | link it from the section note and from its domain MOC |
| Facts to memorize | flashcards in the note they belong to, or a set in `03 Flashcards/` | review daily with the plugin |
| A course PDF, slide deck or handout | `Attachments/Course Materials/<Code>/` | link it from the section note's *Textbook pages / media* line |
| A paper, article, video or website worth keeping | a **Source Note** (template) in `04 Resources/`; the file in `Attachments/Papers/` if there is one | add it to the [[Reading List]] |
| A question for Claude | [[Questions for Claude]], or the note's *Questions I still have* | say *"answer my questions"* |

**Rule of thumb for splitting notes:** one section note per Penn Foster section, however long it gets. One topic note per *thing you would want to look up by name later*: "VCPR" yes, "paragraph 3 of lesson 5" no. If a topic note grows past a screen or two, split it (for example "Restraint" into "Restraint - Dogs" and "Restraint - Cats").

## Using Claude without letting it do the learning for you

Claude is a tutor, not a substitute for reading. The reading, the brain dump and your own summary are where memory forms; hand those to Claude and you get a nice note you won't remember. Use Claude for what *strengthens* those steps:

- **Before:** *"pre-questions for IVT L03"*: questions to read for.
- **After:** *"check my notes on IVT L03"*, *"teach-back: IVT L03"*, *"quiz me on IVT L03, ten questions"*.
- **Stuck:** write it under *Questions I still have*, then *"answer my questions"*.
- **Materials:** upload a lesson PDF, or paste a video's transcript, and say *"process this for IVT L03"*. Claude files it in Attachments, pulls out the key terms, writes a short summary **in its own words** for you to compare against yours (never a copy of the text), and drafts flashcards for you to edit. You still read it first.

## Weekly
Saturday: clear the flashcards due, ask *"summarize my week"*, re-read your own three-sentence summaries from the week, and check the [[Semester 1 Pacing Plan]] for what's next. Before every capstone or final: *"find gaps in <course>"* and a twenty-question quiz.

## Related
- [[Semester 1 Pacing Plan]] · [[Flashcards MOC]] · [[Questions for Claude]] · [[Reading List]] · [[Home]]
