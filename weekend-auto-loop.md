# Weekend Bootcamp — Auto-Study Workflow

> BME 12h + PHYS 8.5h = 20.5h on Sat-Sun. iStructE paused (exam 16 Jul), PSY spread across lunch.

## Lifecycle

This is the auto-execution loop for **every weekend** — designed to be triggered automatically by the Saturday BME cron + Sunday PHYS cron.

---

## Saturday Auto-Loop (08:00 - 17:00)

```
08:00 — [AIRI BME init]
       AIRI chat starts with /app/airi-bootcamps/airi-system-prompts.md#BME
       
09:00 — Block 1: Concept Learning (3h)
       Read /app/HKU-BME-Bootcamp-OpenClaw/Master_Tracking.md → current Wk
       Read current Week's HKU BME course material
       Take notes in /app/HKU-BME-Bootcamp-OpenClaw/notes/wk-NN.md
       
12:00 — Lunch break (1h, no cron)
       
13:00 — Block 2: Deep Dive (4h)
       Solve problems from HKU course pack
       Lab work if applicable
       Update Master_Tracking.md with progress
       
17:00 — Block 2 ends. Auto-save notes to repo.
       
19:00 — [Optional] Saturday evening — iStructE light review
       Mock exam outline (30 min) if Friday mock done
       
20:00 — Saturday session ends. Plan Sunday agenda.
```

---

## Sunday Auto-Loop (08:00 - 17:00)

```
08:00 — [AIRI BME/PHYS init]
       AIRI chat: BME system prompt (still ongoing)
       
09:00 — Block 3: BME Quiz + Reflection (2h)
       Quiz from BME course material
       Update Master_Tracking.md with Wk completion %
       Write weekly retrospective
       
11:00 — [Switch] AIRI chat → PHYS system prompt
       
11:00 — Block 4: PHYS Concept Learning (2.5h)
       Read /app/PhysicsSelfStudy/LEARNING_TRACKER.md → current Phase/Course
       Read current BSc core course chapter
       Solve 3-5 practice problems
       
14:00 — Lunch break (1h)
       
14:30 — Block 5: PSY Review (2h)
       /app/psych-self-study/ — write weekly review
       Update progress/streak.md, weekly-review-template.md
       
16:30 — Block 6: BME Integration + Next Week Planning
       Update Master_Tracking.md for next weekend
       Plan next Sat's agenda
       
17:00 — Weekend ends. Auto-commit any changes to repo.
```

---

## Auto-Init Script (for each Sat morning)

When the BME Weekend Kickoff cron fires, the message includes:
"Auto-load /app/airi-bootcamps/01-bme-bootcamp.md as today's focus.
Backup today's outputs to /app/HKU-BME-Bootcamp-OpenClaw/notes/wk-NN-{date}.md.
After 17:00, auto-commit changes to repo (don't push — manual push at end of week)."

---

## Why Weekend Automation

- **Sat deep block** = most productive time for new concepts (BME biology heavy)
- **Sun review block** = consolidate Sat learning + start next thing
- **Sun afternoon** = cap weekly retro before new week starts Mon

This workflow roughly mirrors the 24-weekend plan in `Master_Tracking.md` (12h/weekend mode with Sat 6h + Sun 6h).

---

## Failure Recovery

If any block failed (e.g., repo missing, AIRI unresponsive), the cron auto-falls-back to last-known-good state by reading `memory/weekly-state.md`.
