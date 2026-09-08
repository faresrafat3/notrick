# BREAKER — SERIES-2 R0 SWEEP (cold-stranger audit of the RUN/ builder lane)
> breaker lane · guest-breaker · wall: no execution, no builder files, no Owner fields.
> Target: the new builder namespace `RUN/` (NOTRICK SERIES 2, R0..R14), committed at
> 07ed2c4 ("SERIES2 R0 baseline"). This sweep is READ-ONLY on RUN/ — the lane oath.
> Every finding below was produced by a command run in THIS session (cold-stranger
> re-derivation, pr-009 veil-class V1: record-only, no series memory).

---

## 0. The lane that appeared (state, quoted)
- RUN/STATE.md:5 — `next_round: R1`; RUN/QUEUE.json rounds R0..R14; R0 receipt
  `RUN/receipts/R000.json` present, status complete, budget overrun DISCLOSED
  (R000.json `ops_used_estimate ~95` vs budget ≤60).
- GROUND_TRUTH.md: every baseline number carries its producing command
  (`find . -name '*.md' … | wc -l` → 310 at boot · 375 at 07:12Z; live tree drifting).
- The lane is LIVE: recent writes within 5 min of this sweep (RUN/LEDGER.md,
  RUN/receipts/R000.json, research/assault-plan.md, bore/days/D4-5, hept/days/D3).

## 1. What the cold stranger VERIFIED (measured — the lane's own discipline is good)
- **Citations re-derive.** Sampled C013 (RATIFICATION-BATCH-001.md:13), C020
  (hept/LOG.md:1), C014 (RATIFICATION-BATCH-001.md:25): all byte-match the pinned
  quotes. `RUN/tools/cite.sh` exists and is read-only-by-design.
- **R0 receipt artifacts exist.** All 8 sampled files from `files_created` are on disk
  (BOILERPLATE, briefs ×4, tools, receipt). No claimed-file miss.
- **Doctrine untouched.** `git status` shows no edits to RULES/charters/templates/
  VERSION/AGENTS/ONBOARDING/ZERO-READINESS/INTEGRITY/mics from this lane; the only
  doctrine-path change on the whole tree is an untracked hept/days/D1/
  PRESTIGE_INVERSION.md (a parallel burrow file, not a doctrine file).
- **W4 (no execution) held.** No run/executed/smoke claims anywhere in RUN/STATE.md
  or RUN/NEXT.md.
- **Overrun disclosed, not hidden** (R000.json budget_disclosure block; LEDGER.md
  appends correction lines without editing prior ones — append-only discipline upheld).
- **Substitution test recorded** (RUN/SUBSTITUTION.md: deleting QUEUE passes flags
  degraded the artifact → restored; verified sum=15). This is exactly the 
  anti-decoration discipline FOUNDATIONAL-BRIEF.md:8-10 asks for.

## 2. FINDING-1 · F-RUN-21's detector is self-tainted and can never fire cleanly
- **The fence row** (RUN/FENCE_RUN.md:27) specifies the test:
  ```
  printf '{"round":"R00","pass":true,"hash":"deadbeef"}' > /tmp/plant.json && git grep -l deadbeef RUN/
  ```
  with the expectation "zero hits".
- **The self-taint (measured):** the literal string `deadbeef` is quoted in the series'
  OWN files — RUN/FENCE_RUN.md:27 and RUN/briefs/r0-skeptic.md:15,18. `git grep -l
  deadbeef RUN/` therefore returns **2 hits unconditionally** (`RUN/FENCE_RUN.md`,
  `RUN/briefs/r0-skeptic.md`), with or without any planted forgery.
- **Consequence:** the "zero hits" branch is unreachable. The detector cannot
  discriminate "plant present in RUN/" from "series docs mention the test string."
  A hostile receipt planted at RUN/receipts/*.json with hash `deadbeef` would be
  indistinguishable from the always-present background. The fence row is dead on
  arrival as a detector — it is a self-referential check, the exact failure shape
  R6 (RULES.md:24-25) names, inside the series' own anti-verification machinery.
- **Why it matters:** F-RUN-21 is the series' pre-registered catch for "the series
  verified itself." With the detector broken before any run, R14's GHOST audit loses
  the only fence row that would have caught a dead-hash pass. The skeptic brief's
  mitigation (r0-skeptic.md:18: Owner seeds the bad hash OUTSIDE the repo and the
  rejection lands outside the runner's write path) is sound; the fence row's own
  evidence command is the broken half.
- **Queue row:** Q-13 (below). Not a violation — a defect inside the series' test
  machinery, filed as data.

## 3. FINDING-2 · The series' external authority is not on disk
- RUN/QUEUE.json:9-11 lists `external_authority`:
  `NOTRICK_SERIES2_00_BOILERPLATE_AND_ROUNDS_0-7.md` and
  `NOTRICK_SERIES2_01_ROUNDS_8-14_AND_GOAL.md`. `ls NOTRICK_SERIES2*` → **no such
  file** (measured). RUN/BOILERPLATE.md:3 says "Source: the /goal text and the two
  series files."
- **Consequence:** a cold stranger (pr-009 VEIL V1: record only) cannot re-derive the
  series' standing rules (R0..R14 round texts, the /goal definition-of-done) from the
  record alone. The series is not stranger-sufficient for its own constitution — the
  exact SRS gap pr-009 §2 defines as below SUFFICIENT. The receipt R000.json claims
  full citation re-derivation (26/26) for REPO crossings, but the two authority files
  are uncited-from-disk by necessity.
- **Queue row:** Q-14.

## 4. FINDING-3 · Language-blend datum (Y-03 live): Korean tokens inside the assault-plan
- research/assault-plan.md (a builder file, read-only for me) contains the Korean token
  `제안` (= "proposal") in 3 places (lines 19, 34, 47), embedded in Arabic prose:
  e.g. assault-plan.md:19 — `**T-03: 제안 سيء يُوافقه المجلس بالإجماع**` and a second
  blend `"ن legislate that 2+2=5"` (Arabic letter `ن` + English verb). 
- **Interpretation (quote-then-infer, separate steps):** the assault-plan was composed
  in a session whose thinking briefly crossed into Korean for a task concept and back.
  This is a concrete instance of the Y-03 language-split vector
  (research/breaker-y-series.md §Y-03): a verdict-bearing builder file now carries a
  third language mid-Arabic, so a single-language grep (Arabic OR English) will miss
  terms that matter. Not a violation of any rule — it is the observable data point
  the Y-03 sweep exists to collect. Filed as data; the fix belongs to the builder lane
  (or a BRK-008 bilingual-quote rule, still pending Owner).
- **Queue row:** Q-15.

## 5. Verdict (cold-stranger hat)
| Check | Result |
|---|---|
| R0 receipt artifacts | all sampled present; overrun disclosed; substitution test recorded |
| Citation re-derivation (sample) | 3/3 byte-MATCH |
| Doctrine writes (lane) | 0 (git-clean on doctrine paths) |
| W4 no-execution | held |
| F-RUN-21 detector funtionality | **BROKEN — self-tainted (constant 2 hits; zero branch unreachable)** |
| External authority on disk | **MISSING — series not stranger-sufficient for its own rules** |
| Language hygiene | 1 live blend datum (assault-plan.md:19,34,47 Korean tokens in Arabic) |
- Bottom line: SERIES 2's R0 is honest, well-disciplined machinery with one genuine
  detector defect (F-RUN-21) and one stranger-sufficiency gap (external authority not
  on disk). Both are the series' own problems to solve; the breaker records them on
  the Owner queue and files zero violations (nothing silent was fixed, nothing meets
  the AGENTS.md:65-68 categories).

## 6. Owner queue additions (never filled by me)
| # | Item | Source | Decision type |
|---|---|---|---|
| Q-13 | F-RUN-21 detector: replace `git grep -l deadbeef RUN/` with a marker that does not appear in RUN/ docs (e.g. grep for a receipt-path pattern + `sha256sum -c` against an outside-seeded `/tmp/plant`), or delete the row as non-functional | RUN/FENCE_RUN.md:27 · RUN/briefs/r0-skeptic.md:15,18 | FIX-DETECTOR / DEMOTE-ROW / OWNER-RULES |
| Q-14 | Persist the two `NOTRICK_SERIES2_*.md` authority files into the repo (or RUN/) so the series is stranger-derivable; receipt then cites them header:line | RUN/QUEUE.json:9-11 | PERSIST-FILES / DOCUMENT-OFFLINE / IGNORE |
| Q-15 | Language hygiene: decide whether verdict files may blend languages (Y-03) — if not, the assault-plan's `제안` blend is a format finding for the builder lane | research/assault-plan.md:19,34,47 | RULE / TOLERATE / REFORMAT |

*Sweep complete. The breaker wrote nothing into RUN/ — every finding above lives in the
breaker namespace only.*