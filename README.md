# RVT-Vault

My second brain for the Penn Foster Veterinary Technician program: an [Obsidian](https://obsidian.md) vault of class notes, topic notes, flashcards and references, organized around the ten VTNE exam domains, synced through GitHub so it is available on every device, and set up so [Claude Code](https://claude.ai/code) can study with me inside it.

Open **`Home.md`** in Obsidian to start. The rest of this file is the setup guide.

## How it is organized

```
RVT-Vault/
├── Home.md                 ← start here
├── 00 Inbox/               quick captures + "Questions for Claude"
├── 01 Courses/             one folder per Penn Foster course, lecture notes inside
├── 02 Topics/              what I know, filed by VTNE domain (each has a map)
├── 03 Flashcards/          flashcard sets
├── 04 Resources/           normal values, dosage math, terminology
├── 05 Study Log/           one note per study day
├── Templates/              note templates (Lecture, Topic, Drug Card, ...)
├── Attachments/            images and PDFs
├── CLAUDE.md               house rules for Claude sessions in this vault
└── .obsidian/              vault settings (shared), minus per-device files
```

Every note has a small block of properties at the top (type, course, VTNE domain, tags, status, dates, a one-line summary). That is what lets Obsidian, its plugins and Claude find and connect things. The templates fill most of it in for you.

## Set up on a computer

1. **Install Obsidian** from obsidian.md, and **install Git**: on Windows, Git for Windows (gitforwindows.org); on a Mac, run `xcode-select --install` in Terminal.
2. **Clone the vault.** In a terminal, go to the folder where you keep documents and run:
   ```bash
   git clone https://github.com/criatianhernandez02-hash/RVT-Vault.git
   ```
3. **Open it in Obsidian:** *Open folder as vault* → choose the `RVT-Vault` folder. The settings in `.obsidian` (templates folder, daily notes folder, attachments folder) load automatically.
4. **Turn on community plugins:** Settings → Community plugins → *Turn on community plugins*.
5. **Install the Git plugin:** Settings → Community plugins → Browse → search **"Git"** (by Vinzent03) → Install → Enable. This is the plugin that syncs the vault with GitHub.
6. **Set the Git plugin to sync on its own.** In its settings: set *Auto commit-and-sync interval* to something like 10 minutes, turn on *Pull on startup*, and set *Auto pull interval* to 10 minutes. From then on, edits are committed and pushed for you. The first push asks you to sign in to GitHub once (Git Credential Manager handles it).
7. Optional but recommended plugins, installed the same way: **Dataview** (makes the "recently updated" lists on `Home.md` and the flashcard index live) and **Spaced Repetition** (turns every `#flashcards` card into a review schedule, like Anki).

Commands you will use constantly (`Ctrl/Cmd + P` opens the command palette): *Insert template*, *Open today's daily note*, *Git: Commit-and-sync*.

## Set up on a phone or tablet

Obsidian mobile can sync with GitHub too, through the same Git plugin.

1. Create a **GitHub personal access token** at github.com → Settings → Developer settings → Personal access tokens → *Fine-grained tokens*: pick only this repository and give it *Contents: Read and write*. Copy the token; you will not see it again.
2. Install Obsidian from the app store and create a new empty vault called `RVT-Vault`.
3. Settings → Community plugins → turn on → Browse → install and enable **Git**.
4. In the Git plugin settings, under *Authentication / commit author*, enter your GitHub username and paste the token as the password. The token is stored on the device, not in the vault.
5. Command palette → **Git: Clone an existing remote repo** → paste `https://github.com/criatianhernandez02-hash/RVT-Vault.git` → when asked, confirm the vault root as the destination → restart Obsidian when prompted.
6. Turn on the same auto-sync settings as on the computer.

Mobile git is slower than desktop, so keep `Attachments` light (compress photos before dropping them in). In a pinch, you can also read and edit notes straight on github.com, or in the GitHub mobile app.

## Studying with Claude

Open this repository in Claude Code (claude.ai/code → this repository) and talk to it like a study partner:

- *"answer my questions"* — works through `00 Inbox/Questions for Claude.md`: your notes first, then the web with sources, and writes the answers into the vault.
- *"quiz me on anesthesia monitoring, ten questions, one at a time"*
- *"make flashcards from [[AP1 L03 - Cardiovascular System]]"*
- *"I don't get why heart rate drops under dexmedetomidine. Explain it simply, using my notes first."*
- *"summarize what I studied this week and tell me what to review"*
- *"new course: Veterinary Pharmacology"*

`CLAUDE.md` tells Claude the rules of the vault: use the templates, keep links working, never overwrite your words, cite sources, and treat drug doses as study material rather than clinical advice. After Claude pushes, the Git plugin pulls its changes into Obsidian on your next sync.

## Privacy and copyright

- This repository is currently **public**: anyone with the link can read it. If you would rather keep your notes to yourself, make it private: github.com → this repository → Settings → General → *Danger Zone* → *Change visibility*. Everything else keeps working.
- Course materials are copyrighted. Keep notes in your own words; summarize rather than paste textbook or lesson text.
- Never put a token, password, student ID, grades, or any clinic's client or patient names in the vault.
