# ERGONOMICS 39-DAY AUDIT — what 39 days of silence did to the system, and to its instruments

> **id:** research/ergonomics-39d-audit.md · **filed:** 2026-10-20 · **by:** DeepSeek agent
> (big-goal harness session · guest: read+propose; the Owner's live directive commissions
> this pass; boot-gate quoted verbatim in the session's first reply)
> **boot-gate:** v0.0001 · guest: read+propose · no execution, no runtime, no Owner-by-right fields
> **status:** two falsifier verdicts recorded against the author's own work · three instruments
> repaired or built · the Owner's desk healed · one package staged PENDING OWNER (pr-025)
> **pre-registered falsifier (§7):** this audit dies if (a) the re-run sweep contradicts the
> drift inventory in §3-F-2, (b) the age instrument's numbers are not reproducible from disk,
> or (c) any part of pr-025 lowers a doctrine wall.
> **predecessors:** research/ergonomics-tower.md (2026-09-11, executed) ·
> research/ergonomics-deep.md (2026-09-11, executed in part) ·
> research/owner-ruling-session-2026-09-19.md (the ruling session)

---

## §0 — Thesis

The system did not rot in 39 days; it **grew quiet, and nothing in the system could see
it**. Every surface still reported "fine" — pins 43 OK / 0 FAILED, queue 63☑/0☐, 4 lanes
STALE — because the system measures **counts** (R14) and never **ages**. A 1-day item and
a 45-day item are identical to a count; a proposal that died by its own terms 14 days ago
and an untouched one are identical to a status header. Meanwhile two of the instruments
this project's ergonomics work built had been **falsified by their own adoption**: Part A's
boot-tax killer fired and was not honored, and the citation gate's own quote-convention was
violated by the moment that adopted it — so the gate cried wolf on 4 of 14 findings and the
auditor had to be taught to ignore it. The system's deepest defect is not a file; it is that
**the WAIT phase of the operating cycle has no entrance**. This pass gives it one, repairs
the two instruments, heals the surface that lied, and stages the one structural fix that
actually moves the boot cost.

## §1 — What happened in the 39 days (read from the record, not remembered)

| when | what | record |
|---|---|---|
| 2026-09-19 | **pr-024 ADOPTED A C D** (B withheld) + **version moved v0.00001 → v0.0001** | Owner line verbatim: "اعتمد pr-024: A C D — وانقل الإصدار إلى v0.0001" · CONTEXT.md:706 · commit abdb2ae |
| 2026-09-19 | Part C's new rule applied "to its authors first": the sweep ran and caught 2 fresh drifts in that session's own sheet | CONTEXT.md:706 · INTEGRITY.md:53-56 |
| 2026-09-21 | CONTEXT-slim pass over 3 unpinned navigation surfaces (README 80→64 · research/README 51→41 · tools/dsh/README 104→73) | commit 168052e · CONTEXT.md:707 |
| 2026-09-21 | **V-004 filed**: an unlogged edit of pinned AGENTS.md during that pass, caught and reverted same session | commit 194c32a · CONTEXT.md:707 |
| 2026-09-21 | violations.md **exempted** from the pin set (pr-013 option A): a ledger the law orders every agent to append cannot hold a stable hash | commit b60ae35 · INTEGRITY.md:3-9,115-118 |
| 2026-09-21 → 2026-10-20 | **29 days with no commit.** The tree did not move; four lanes went from "stale" to "pale" (pulse 1004h) | card §6 · `git log` |
| 2026-10-20 | a **parallel writer** (the anatomy-card workstream, under the same Owner delegation) landed research/anatomy-library.md + research/idea-002-card-preset-compiler.md and repaired tools/audit.sh | file mtimes 22:44/22:45/22:48 · `cline-app` process live |

## §2 — VERDICT 1: pr-024-A's pre-registered killer FIRED (against my own work)

**The killer** (proposals/pr-024-ergonomics-deep-package.md:45, written by this session's
author): *"if the first post-adoption boot does not measure a lower audit-side boot tax
(audit.sh §7), the part is withdrawn by one line and the head is restored from git."*

**The measurement** (read-only forensics over every commit, `git show <sha>:<path> | wc -c`):

| commit | date | CONTEXT | AGENTS | BRIEF | tax | Δ |
|---|---|---|---|---|---|---|
| a646ed8 | 09-10 | 58,969 | 4,990 | 3,687 | 67,646 | **+18,019** |
| 449aede | 09-11 | 71,743 | 5,018 | 3,884 | 80,645 | **+11,162** |
| 25fd491 | 09-11 | 78,017 | 5,018 | 3,884 | 86,919 | **+6,274** |
| 782f2bd | 09-19 | 80,494 | 5,018 | 3,884 | 89,396 | +2,477 |
| **abdb2ae** | 09-19 | 78,814 | 5,018 | 3,884 | 87,716 | **−1,680** (Part A) |
| 168052e / 194c32a | 09-21 | 78,814 | 5,018 | 3,884 | 87,716 | 0 (0 B of it in the chain) |
| b60ae35 | 09-21 | 80,077 | 5,018 | 3,884 | **88,979** | +1,263 |
| HEAD | 10-20 | 80,077 | 5,018 | 3,884 | **88,979** | 29d stale |

**The verdict:** the first post-adoption boot of the committed tree measured **87,716 B** —
**797 B higher** than the pre-adoption 86,919 B on record, and **7,071 B higher** than the
80,645 B baseline quoted in pr-024 itself. The tax was not lower. **The killer fired.**

**Why the record looked otherwise (an unreproducible number, found and filed):** the only
post-adoption figure on record is the in-moment **84,767 B** (CONTEXT.md:706 · LOG.md:332
· commit message abdb2ae). It was measured *before* the 2,949-byte adoption entry was
appended — the very entry it documents (75,865 + 2,949 = 78,814 = the committed size). No
boot was ever measured after that entry landed.

**The deeper error, which is mine, not the adopting session's.** Part A shrank the
**head**: 5,954 B → 1,392 B, a maximum possible saving of **4,562 B**. But the decision log
in the same file is **78,685 B = 98.26%** of it (the head is 1.74%), and the log grew
**+46,876 B** over the project's life. Because the log and the head share a file and
audit.sh §7 charges whole files, **every decision logged taxes every boot.** Part A removed
the part that was never the bulk; its own adoption entry added 2,949 B back. The proposal
printed "80,645 B → ≈11 KB" and "≈68 KB boot saving" — that number was reachable **only
on a head-scoped read** (1,392 + 5,018 + 3,884 = 10,294 B), never on the metric my own
killer named. **The claim was overstated by roughly 15×, and the killer — the mechanism I
built to catch exactly this — fired and was not honored.**

**The honest options, with measured byte costs** (the Owner decides; pr-025-A implements
the third):
- **Keep as-is** → 88,979 B.
- **Withdraw + restore the head from git** → 93,541 B (**+4,562** — withdrawal costs
  *more*, because the head grew back on top of a log that never shrank).
- **Replace the mechanism** (move the decision log out of the boot-chain file) →
  **10,294 B (−78,685)** — the ≈11 KB that was promised, actually delivered.

**The meta-lesson, which is bigger than the byte count.** The killer was **written**; it
was never **bound to an instrument that fires it**. The only post-adoption figure ever
written down (84,767 B) was taken mid-moment *before* the adoption entry was appended —
so the kill condition was never evaluated on its own measurement. Two independent
read-only forensics runs (context-isolated subagents) reproduced the same table and the
same verdict from `git show`; between them they also confirmed: no withdrawal line, no
restore, and **no obituary-registry entry** exists for the part that failed. A falsifier
that only a reader can evaluate is a wish. **A killer must be attached to a measurement
that runs without being asked** — which is precisely what the AGE section now is for the
next killer: the card computes the numbers, every boot, so "the metric moved" is visible
without anyone remembering to look.

## §3 — VERDICT 2: the citation gate's own convention was violated by its own adopters

**The gate** (tools/citecheck.sh, created 2026-09-11 by this session's author) has three
rules: a live ref must resolve; a ref inside backticks or a code fence is a **quotation**
(witness text) and is not swept; a broken live ref is a DRIFT (failure). Part C adopted it
as doctrine (INTEGRITY.md:53-56): *every approved-docs moment that edits a pinned file runs
the sweep in the same logged moment*.

**What the 2026-09-19 moment did** (the sweep ran — the mechanism worked), and then wrote
its own worked example into three surfaces **as plain prose, not as a quotation**:

| site | the ref, quoted in live prose | why it is a witness, not a pointer |
|---|---|---|
| ./CONTEXT.md:704 | `AGENTS.md:74-77` | the 2026-09-11 entry *describes* the drift it found |
| ./CONTEXT.md:706 | `VERSION.md:26-27`, `AGENTS.md:74-77` | the 2026-09-19 entry quotes the drift the sweep caught |
| ./INTEGRITY.md:55 | `AGENTS.md:74-77` | the citecheck Rule's own worked example |
| ./LOG.md:324 | `AGENTS.md:74-77` | the LOG entry for that moment, quoting the same example |

**The verdict:** the gate caught 4 of its own adopters' quotations and reported them as
failures — 14 findings, of which 5 were witness text. A gate that cries wolf trains its
reader to ignore it, and R14 says plainly: *a broken generator is a broken gate; its
failure is filed, never silently re-trusted.* The rule was not applied to the rule's own
authors. The surface-level fix (declared witness register, §4-F-3) is live; the deep fix
(a marking convention in doctrine) is staged in pr-025-D.

**The remaining 9 drifts are real and stay filed** (8 historical, cited-as-land; 1 live:
research/harness-run/BOOT.md:21 → `AGENTS.md:74-77` — the ref itself is quoted here, and
marked as a quotation per the convention pr-025-D proposes: a live citation is a pointer
an agent can follow, a quotation of one is marked).

## §4 — What 39 days of silence exposed, and what was done about it

- **F-1 — the WAIT phase has no entrance (the deepest defect).** The card showed counts
  (R14) and never ages; the desk showed decisions without dates; nothing showed dormancy.
  29 days of silence looked exactly like a healthy Tuesday. **Cure (live today):** the
  card's new **§9 AGE** — last-commit / last-LOG / last-CONTEXT ages, the unruled count,
  the oldest waiting item, how many have waited ≥14d, items past their own expiry, and a
  DORMANCY verdict. Today's card line, verbatim: `29d since last commit · 31d since last
  LOG entry · 29d since last CONTEXT entry` … `PAST OWN EXPIRY:
  pr-021-sanad-unification.md (limit 2026-10-06 · 15d past)` … `DORMANCY: 29d without a
  commit — a wait with no age shown is a blind wait (OWNER-DESK.md)`.
- **F-2 — a proposal died by its own terms and nobody filed the death.** pr-021's own
  absolute limit was 2026-10-06 (pr-021:10); the arc's rule (arc-protocol.md:63-64) says a
  proposal unanswered in 2 Owner sessions auto-becomes "HELD — expired", **filed, not
  silently ignored**; three Owner sessions have passed since filing and no ruling was
  scribed. The card now flags it; the desk row now says EXPIRED-BY-TERMS; **the expiry
  filing itself is the Owner's to make** (a ruling field is Owner-by-right — this session
  did not fill it, and the arc's "no silent exits" breach is recorded rather than papered
  over).
- **F-3 — the gate cried wolf (fixed).** `tools/witness.list` declares the 5 witness
  quotations with their reason; the tool classifies LIVE / WITNESS / STALE-DECLARATION and
  **checks the register every run** (an entry whose line no longer carries the ref is
  reported as register rot, never auto-dropped). The sweep is back to 9 real drifts.
- **F-4 — the Owner's desk lied for 35 days (healed).** P4/P5/P6 were ruled 2026-09-06 and
  still showed as pending; the 15-item row pointed at a file that is at
  `research/ruling-sequence.md`, not the repo root; the X0003 row pointed at
  `proposals/pr-010` (the real file is `proposals/pr-010-stale-reentry.md`); pr-024 Part B
  had **no row at all**; pr-021 showed as live. All struck/rewritten with their sources
  (evidence in the desk's own Healing log), plus new rows for the V-001..V-004 ruling
  fields (empty for four violations) and for pr-025.
- **F-5 — the generator had two truth defects, caught by the auditor (fixed).** The card
  said "32 unruled" (it missed pr-024's *unbolded* ruling line) and "19 headers with no
  parseable filed-date" (13 of them do carry dates — a regex artifact that missed
  `**filed:**` bold markdown). Both are fixed and re-verified: **31 unruled · 5 undated**.
  A tool that lies about counts is worse than no tool (R14) — and it was caught by a
  context-isolated auditor, not by its author, which is the whole point of the stranger-test.
- **F-6 — a live writer, recorded not clobbered.** The 2026-10-20 anatomy workstream
  (a parallel agent under the same Owner delegation) landed two research files and
  **repaired tools/audit.sh** (adding the age helpers this session's edit had been denied
  for) while this pass was in flight. Recorded as a live-writer event; its work was not
  touched, and the age section it repaired was kept and corrected forward.

## §5 — The age instrument (the one thing that is live and changes behaviour)

`tools/audit.sh` §9 (read-only, generated; §1-§8 numbering frozen because other documents
cite "audit.sh §7"):

- **ages, not just counts** — last commit / last LOG / last CONTEXT entry, in days;
- **the waiting stack** — unruled count, the oldest waiting item *with its age*, how many
  have waited ≥14d, and how many headers carry no parseable date (reported as UNKNOWN,
  **never zero** — a zero age would read as "fresh" and be false);
- **expiry enforcement** — any item past its own pre-registered expiry limit is listed
  with the days past it (today: pr-021, 15d);
- **a dormancy verdict** — ≥7d without a commit is DORMANCY, and the line says why: *a
  wait with no age shown is a blind wait*.

Its own honesty guards: unknown ages print UNKNOWN; the ruled-detection matches a fate
word **and** a date (so the template's empty-by-right option list and the Arabic
placeholder are not mistaken for rulings); the filed-date extraction falls back to the
first ISO date in the header block and says so.

## §6 — The staged structural fix (pr-025, PENDING OWNER)

- **A — the CONTEXT split (the boot-tax fix).** Move the 78,685 B decision log out of the
  boot-chain file into its own append-only record; CONTEXT.md becomes the 1,392 B
  pointer + history separator. Tax: **88,979 B → 10,294 B (−78,685)**. The log stays
  append-only and git-verified; the ruled chain still names CONTEXT first — the file
  simply stops charging every boot for the history it holds.
- **B — lane register v2** (the reformulation of pr-024's withheld Part B): a status column
  **generated** from disk (mtime · file count · last state-file line) plus one hand-written
  niche line per lane, so the status can never rot.
- **C — R16 candidate, the age law**: counts are generated (R14) and so must be **ages**;
  every surface listing pending items shows their age; an item past its own pre-registered
  expiry shows as expired, not pending; the boot card shows the tree's dormancy.
- **D — the witness convention**: a quotation of a reference is marked (backticks, fence, or
  a declared entry in tools/witness.list); a live citation is a pointer an agent can
  follow. Without it, a gate that reports its own authors' quotations as failures is a
  gate nobody trusts.

## §7 — Metrics, killers, and what would falsify this audit

| metric | before (measured) | after (measured today) | how |
|---|---|---|---|
| boot tax (whole chain) | 88,979 B | 88,979 B — **unchanged; the fix is staged, not applied** | audit.sh §7 |
| decision log share of CONTEXT.md | 98.26% | 98.26% | forensics |
| citation findings that are false | 5 of 14 | **0 of 14** (5 declared witnesses, 9 real drifts) | citecheck |
| card truth defects | 2 (unruled count, dated headers) | **0** (31 unruled · 5 undated) | audit.sh §9 + auditor |
| surfaces that lied | desk (3 stale rows, 3 broken pointers, 2 missing rows) | **healed** (strikes carry their sources) | OWNER-DESK.md healing log |
| expiry filings missing | 1 (pr-021, 15d past) | **1 — the filing is the Owner's to make; the card now names it** | audit.sh §9 |
| dormancy visible at boot | no | **yes** (29d, quoted in this paper) | audit.sh §9 |
| lanes mapped on a root surface | 4 of 8 | 4 of 8 — **pr-025-B staged** | LANES.md:13-18 |

**The collective killer:** if the re-run sweep contradicts §3-F-2's inventory, or the age
numbers are not reproducible from disk, or any pr-025 part lowers a wall (the boot gate ·
the guest write-path · append-only discipline · R6/R7/R8), this audit dies whole into the
obituary registry and its heir starts from a measurement, not from this paper.

## §8 — Honesty limits and self-attack

- **The claimant is also the author of the thing being judged.** Part A was written by this
  session's author and the killer that condemned it was written by the same hand, three
  paragraphs earlier. The byte forensics were run by a context-isolated subagent, but the
  reading of them — "the killer fired" — is mine. The counter: the numbers are in the
  table, any auditor can re-run the one-line `git show` loop, and the conclusion is
  unfavourable to me, which is the direction a self-serving reading would avoid.
- **I did not read all 654 paths.** The lane picture is from a structured survey (2026-09-11)
  plus the 2026-10-20 desk audit; the lane register (pr-025-B) is built on those receipts
  and on spot checks, not on a fresh full sweep — the lane survey subagent did not return
  in this session, so Part B's rows are the older survey's and are marked as such.
- **The age instrument's thresholds are mine.** "≥14d" and "≥7d" are conventions, not
  measurements; they are stated as thresholds in the output so a reader can argue with them.
- **The desk healing is the sharpest risk in this pass.** Striking rows on the Owner's only
  decision surface is an act with real authority. It was done by the file's own designed
  operation, each strike carries the record that justifies it, no ruling was invented, and
  every row is reversible by appending. If the Owner prefers the pre-healing desk, git
  holds it (b60ae35).
- **What I did not do, and why:** the boot-tax fix (pr-025-A) moves a file that the ruled
  boot chain names and that the decision log lives in — a doctrine act, so it is staged
  with byte costs, not self-applied. pr-021's expiry filing writes into an Owner-by-right
  ruling field, so it is named, dated and flagged, not filled. The lanes are foreign
  writers' territory, so the register is staged rather than imposed.

---

## §9 — CORRECTION (2026-10-21, forced by a context-isolated audit of the two approved-docs moments)

A read-only auditor that reconstructed both moments from `git archive` extractions
reproduced the sweeps at every commit — and **corrected my §3-F-2 conclusion**. The
correction is filed here in full because the wrong version was mine, and the project's
habit is to correct fast and in the open.

**What I wrote in §3-F-2:** "the gate caught its own adopters' quotations and reported them
as failures — the gate cried wolf on 4 of 14 findings."

**What the audit establishes (and it is right):**
1. **The gate did NOT cry wolf — every one of the 14 findings was a true positive.** The
   refs really are broken: AGENTS.md has 75 lines (so 74-77 is invalid) and VERSION.md has
   25 (so 26-27 is invalid). The tool was sound; `--self-test` passes; there were **zero
   false positives**.
2. **What cried wolf was the LEDGER.** 5 of the 14 findings (36%) were never filed with
   their moment, and 4 of them are the *same two broken refs* repeated by the rule's own
   authors (INTEGRITY.md's Rule text, CONTEXT.md's own record, LOG.md, and the 2026-09-11
   entry). The rule says *"files any new drift with the moment"* — the moment filed 2.
3. **The ordering settles it:** the M1 sweep ran **before** the text it was policing was
   written (782f2bd sweeps to 13 drifts; abdb2ae to 14 — the 2 sheet drifts were
   backticked away and 3 M1-authored ones appeared). The 2026-09-19 record's claim
   *"the new Rule's first application, applied to its authors first"* is therefore
   **self-claimed and its accounting is falsified**: 13 seen, 2 filed.
4. **M2 (2026-09-21) did run the sweep** — independently corroborated by an external
   incident record and reproduced exactly at all three of its commits (14 / 14 / 14); its
   own writes added **zero** drift, so "no new drift" is literally true. Two caveats worth
   keeping: M2 left **no LOG.md entry at all** (LOG.md ends at M1's ADOPT line), and the
   witness path it cites (`~/local/compliance/…`) **does not resolve** — there is no
   `~/local`.
5. **V-004 was recorded after the revert** (detection → revert → record; not hidden, but
   post-hoc, and the revert was never its own logged moment). The 38 broken citations it
   names **were** checked after the revert (the tree sweeps to 14 with zero AGENTS-range
   drifts; pins 44 OK / 0 FAILED — AGENTS.md restored intact) — but **the number "38" is
   not reproducible**: reproduced in a scratch tree, the tool reports **69** broken refs.
   The filed magnitude understates the tool's own output by 31.

**What this changes in this audit's own claims:**
- §3-F-2's attribution is corrected above: the defect was **filing discipline and record
  hygiene, not detector noise**. The instrument I added (the witness register) addresses
  the *presentation* problem the tool genuinely has — it cannot tell a quotation of a
  broken ref from a claim about a live one — and it does not hide anything: the tool
  prints every declared witness on every run, in its own block. The deeper fix is the
  filing discipline (pr-025-D's convention plus the rule's own "files any new drift with
  the moment", which was not honored by the moment that installed it).
- The **witness register is therefore a presentation fix, not an accuracy fix** — stated
  plainly, because the difference matters: the tool's DRIFT count falling from 14 to 9
  reflects 5 *declared classifications*, not 5 *fixed defects*. The defects (the unfiled
  drifts) remain on the record, and the 9 that remain are still true positives.
- **The "records are not sound" verdict is the session's real finding** — and it lands on
  the same class as everything else in this audit: a rule that was written, adopted, and
  then never *exercised* by the moment that adopted it. A falsifier that only a reader can
  evaluate is a wish; so is a filing rule that only a reader can perform.
