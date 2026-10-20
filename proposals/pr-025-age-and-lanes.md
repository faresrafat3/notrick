# pr-025 — AGE TRUTH + THE BOOT SPLIT + THE LANE REGISTER (what 39 days of silence proved)

> author: DeepSeek agent (big-goal harness session — guest: read+propose) · filed: 2026-10-20 · status: **PENDING OWNER — four parts (A–D), one word each; partial adoption allowed by design; Part A has two variants and the Owner picks**
> boot-gate (matches the session's first reply): v0.0001 · guest: read+propose · no execution, no runtime, no Owner-by-right fields
> **Evidence paper (read this first):** research/ergonomics-39d-audit.md — two falsifier verdicts (pr-024-A's boot-tax killer FIRED against the author's own work; the citation gate's quote-convention violated by its own adopters), the dormancy finding, and the live-writer event.
> **Predecessor:** pr-024 (A C D adopted 2026-09-19; **B withheld** — Part B is re-proposed here as v2, generated status, per "corrections = a new proposal citing the old one", templates/PROPOSAL.md:3).
> **Method:** each part is ready-verbatim or a one-line law with a stated killer. At adoption: apply → re-pin → run `bash tools/citecheck.sh` in the SAME moment (INTEGRITY.md:53-56) → CONTEXT entry → LOG line.

## Why this package now (one line, measured)

The system counted things but never aged them: 29 days passed with no commit, pr-021 died by its own terms 15 days ago with the expiry never filed, the Owner's desk showed three settled gates as pending for 35 days, and the boot tax grew to **88,979 B** because the decision log (**78,685 B = 98%** of CONTEXT.md) shares a file with the head the boot chain reads first. The card's new AGE section now measures all of it every boot (live today: `29d since last commit … PAST OWN EXPIRY: pr-021 (15d past) … DORMANCY: 29d`).

---

## Part A — the boot split: the decision log leaves the boot-chain file (THE fix for the fired killer)

**The problem, measured** (research/ergonomics-39d-audit.md §2): audit.sh §7 charges whole files; the decision log grows on every append (+46,876 B over the project's life); Part A slimmed the head (5,954 → 1,392 B) and left the 78,685 B log in place, so pr-024-A's own killer fired. Head-scoped chain tax = **10,294 B**; whole-file chain tax = **88,979 B**.

**Two variants. The Owner picks one (or both).**

### A1 — STRUCTURAL (the real fix): the log moves to its own file
- **New file:** `DECISIONS.md` — the decision log, append-only, verbatim as it stands today.
- **CONTEXT.md becomes:** its 1,392 B head + the HISTORY separator + one pointer line to DECISIONS.md ("the decision log lives in DECISIONS.md — cite entries by date + head; the log is append-only and git-verified").
- **Line numbers are preserved** by construction: DECISIONS.md repeats CONTEXT.md's current 21-line head verbatim before the log, so every existing `CONTEXT.md:NN` ref (NN ≥ 22) becomes `DECISIONS.md:NN` with the **same** line number — a one-token rewrite per ref, not a re-anchoring.
- **Mechanical execution in the adoption moment:** (1) create DECISIONS.md = CONTEXT.md's head + log; (2) rewrite CONTEXT.md to the head + pointer; (3) sweep the tree for refs to CONTEXT.md with line ≥ 22 and rewrite the filename only (script, one pass, verified by the sweep); (4) re-pin; (5) run citecheck in the same moment; (6) CONTEXT entry with the byte before/after.
- **Result:** chain tax **88,979 B → 10,294 B (−78,685)**. The log stays append-only, git-verified, and date-anchored; the ruled chain still names CONTEXT first — the file simply stops charging every boot for the history it holds.
- **Killer:** if the sweep after the move shows any ref still pointing at CONTEXT.md beyond line 21, or the chain tax does not measure ≤ 11 KB, the part is withdrawn by one line and `git checkout b60ae35 -- CONTEXT.md` restores it (DECISIONS.md is then removed; nothing else is touched).

### A2 — CONTRACTUAL (the cheap variant): the boot reads a bounded window, and the card says what that costs
- **Law line (one sentence):** *the boot reads CONTEXT.md's head plus the task-named tail entries; the decision log is consulted by date-anchor, never linearly.*
- **The card already measures both numbers** (live today): §7 prints the whole-file tax, the head/log split, and the head-scoped chain tax — so a drifting agent can see what the unbounded read costs.
- **Result:** the *contracted* boot costs 10,294 B; the *measured whole-file* tax stays 88,979 B until A1 lands.
- **Honest limit:** A2 is behavioural, not structural — an agent that ignores the contract still pays the whole file, and the card's headline number will still read 88,979 B. A2 is the cheap first step; A1 is the one that ends the tax.
- **Killer:** if the next three sessions' cards show the whole-file tax unchanged *and* no session reports a bounded read, the contract is decorative and dies into the obituary registry.

**Both are reversible by one line. A1 does not touch the log's content, only its file.**

---

## Part B — the lane register v2 (pr-024 Part B, re-proposed: generated status, one niche line)

**Files:** `LANES.md` (declared-exempt living surface) · `tools/audit.sh` (adds a `--lanes` mode).
**The two-column rule:** the **status** column is GENERATED from disk (mtime age · file count · the lane's own last state-file line) and can never rot; the **niche** column is the one hand-written line per lane, quoted from the lane's own self-description (a lane that does not describe itself gets "SELF-DESCRIPTION ABSENT", never a guess).

> **STATUS: EXECUTED in the free lane on 2026-10-20** — the board is an exempt living
> surface, and the register's status column is GENERATED (`tools/audit.sh --lanes`), so the
> mechanism needs no ruling. `LANES.md` is now the MAP (8 subtrees, every niche quoted
> from the lane's own self-description with file:line) and the card's §6 pulses all 7
> state files with the HOLDS-compliance number. **The one decision this leaves the Owner:
> the HOLDS convention — enforce it on the lane-runners, or retire it** (0 of 7 lanes have
> held it for 41+ days; the board now reports the number on every boot instead of
> assuming it). The two mis-classified rows (bore/hept listed live while their own state
> files said COMPLETE/frozen) are gone by construction: the status is generated, not
> asserted.

**The proposed LANES.md table — the niche column quoted VERBATIM from each lane's own
self-description (read-only survey, 2026-10-20 23:10; every quote carries file:line), the
status column generated from disk:**

| Lane | Pulse file | Niche (self-quoted) | Status (generated) |
|---|---|---|---|
| RUN machine | RUN/STATE.md | "SERIES 2 run pointer (updated after every round)" (RUN/STATE.md:1) | SERIES-COMPLETE · 1006h since pulse |
| bore | bore/runtime/STATE.md | "Site locator: proposals/pr-006 §2 'Sampler math' lines 12-18" (bore/CORE.md:3) | day 7 "COMPLETE — frozen" · core_complete: YES · 1006h |
| hept | hept/runtime/STATE.md | "Refuse every success claim that cannot re-run its own test in front of you" (hept/CANON.md:7) | core_complete: yes · 996h |
| harness-run | research/harness-run/STATE.md | "GUEST RESEARCH FELLOW (Owner-appointed via this goal)" (research/harness-run/STATE.md:3) | "ALL THREE PHASES COMPLETE — DONE 5/5" · 1006h |
| mill/ | mill/STATE.md | "It converts Owner rulings and research notes into doctrine files with IDs, gates, and falsifiers" (mill/WHAT_IT_IS.md:2) | current_op 0501 · wave P04_DONE · 1049h · 139 files |
| well/ | well/STATE.md | "current position of the WELL reason-mill" (well/STATE.md:1) | wave W03 complete · W04 eligible · 1021h · 30 files |
| phantom/ | phantom/STATE.md | **SELF-DESCRIPTION ABSENT** — "role=second agent, independent; not helper/reviewer/summarizer of the official theory" (phantom/STATE.md:7); its object is banned on purpose (phantom/OBJECT_BAN.md:3) | current_op PH03 · 1049h · 30 files |
| protocols/ | (no state file) | "Anti-Demo / Anti-Hallucination Prompt Architecture (ADHA) — Four-Role Prompt Fortress" (protocols/ADHA-v1.md:2) | PROPOSED, unratified · no measurable pulse · 6 files |

**Three facts the register makes visible that no root surface currently shows:**
1. **HOLDS-line compliance is 0 of 7.** `grep -rn '^HOLDS:' --include='*.md'` → 0 matches in 0
   files. The convention LANES.md:10-11 mandates is held by no lane — the board's own rule
   has never been exercised. (pr-024-B proposed the register; the convention needs either
   lane-runners to adopt it or the board to stop asking for it.)
2. **Four stale pointers inside the lanes** (cited-as-land, not repaired — the lanes are
   their writers' territory): RUN/NEXT.md:3-4 still opens R9 after SERIES-COMPLETE ·
   mill/STATE.md:3 says "wave: P04_DONE" while mill/HANDOFF_P05.md + NEXT_READ.md carry P05 ·
   phantom/STATE.md:4 says current_op PH03 while phantom/HANDOFF_PH03.md is already on disk ·
   hept/runtime/STATE.md:3 says D7-R30 while hept/runtime/NEXT.md:1 says D7-R31.
3. **False file counts on live surfaces** (the R14 rot class, inside a foreign lane):
   phantom/SEALED.md:2-3 claims mill 68 / well 24 files (live 139 / 30) ·
   phantom/CORPUS.md:31-34 claims proposals 10 / research 14 (live 35 / 94) ·
   research/README.md:3 claimed 76 (live 86 — **repaired today**: the count was replaced by
   the live command).

**The two rows that vanish today:** `bore` and `hept` are listed as **live lanes** on the current board while their own state files say COMPLETE/frozen — the board currently mis-classifies two artifacts as partners. The register fixes that by generating the status instead of asserting it.
**The 449 files that get named:** mill · hept · bore · well · phantom · protocols + RUN + harness-run — every subtree with a niche line, an entry file, and a status that cannot rot.
**Killer:** if a lane's own writer shows any niche line wrong, the register is corrected by append in a logged line and the survey that erred is recorded; a second wrong row withdraws the part.

---

## Part C — R16 candidate: the age law (a count is not a wait)

**File:** `RULES.md` (pinned — re-pinned within the adoption moment). **Verbatim text:**

```markdown
## R16 — Age truth (the staleness law) [adopted 2026-10-20 via pr-025-C]
Counts are generated (R14); so must be ages. Any surface that shows a pending item
shows how long it has waited, generated from disk at read time — never hand-counted,
never reported as zero when unknown. An item past its own pre-registered expiry shows
as EXPIRED (filed, not silently ignored — arc Omega-5), not as pending. The boot card
shows the tree's dormancy (last commit age) so a silent stretch is a visible state, not
an absence. A surface that shows only counts is half a surface.
Falsifier: if an item's age or expiry is shown and the system still misses a 30-day
dormancy or a dead proposal, this law dies into the obituary registry and the surfaces
return to counts alone.
```

**Why it is a law and not a tool change:** the tool can measure an age, but only the law makes *every* surface owe one — the desk, the proposals index, the lane register. The card's AGE section is its first application (live today).
**Killer:** written inside the law (the 30-day-dormancy falsifier).

---

## Part D — the witness convention: a quotation of a citation must be marked

**File:** `AGENTS.md` (pinned) + `tools/witness.list` (live) + `templates/PROPOSAL.md` (pinned, if the Owner wants the field there).

**The one-line law (verbatim):** *A live citation is a pointer an agent can follow. A quotation OF a citation is marked — backticks, a code fence, or a declared entry in tools/witness.list. An unmarked quotation is read as a pointer, and a gate that reports its own authors' quotations as failures is a gate nobody trusts.*

**What already landed (live today, no ruling needed):** `tools/witness.list` declares the 5 witness quotations with their reasons, and citecheck classifies LIVE / WITNESS / STALE-DECLARATION and checks the register every run (a stale entry is reported, never auto-dropped). The sweep went from 14 findings (5 false) to 9 real drifts + 5 declared witnesses.
**The remaining half (needs this part):** the convention stated in doctrine, so the *next* writer marks the quotation instead of needing a register entry after the fact. A register entry is a repair; a convention is a prevention.
**Killer:** if the next three approved-docs moments produce unmarked quotations that need register entries, the convention is decorative and the register is the only answer — the part dies, the register stays.

---

## Execution at adoption (one mechanical path)

1. The Owner's word names the parts: **"اعتمد pr-025: A1 C"** / **"A2 C"** / **"B C D"** / any subset.
2. Apply the ruled parts verbatim (A1's script is in the paper's appendix; B and C are ready text; D is one line).
3. `sha256sum` every modified pinned file → **re-pin INTEGRITY.md in the same logged moment** (INTEGRITY.md:44-45).
4. **Declare `tools/witness.list` in INTEGRITY.md's Exemptions section** in the same moment (it is a new data file read by citecheck, not doctrine): its integrity rides on citecheck's own staleness check — a declared entry whose line no longer carries the ref is reported as register rot on every run, so the register cannot rot silently. (This is the same protection class as tools/audit.sh and tools/citecheck.sh.)
5. Run `bash tools/citecheck.sh` **in the same moment** (INTEGRITY.md:53-56) — its first application was its own authors' moment; this is the second.
6. CONTEXT.md entry (date · parts · hashes · before/after boot tax · sweep output) + LOG line. The version does NOT move (no VERSION.md gate is touched).
7. The Owner's desk is updated in the same moment (append-and-strike): the pr-025 row is struck, A1/A2 get their rows.

## Pre-declared weaknesses (before the ruling — L8)

- **The vector:** this package is authored by the session that also authored the work it audits, and Part A1 is a big mechanical migration of 59 citations. The counter: the byte costs are measured, the migration preserves line numbers by construction, the sweep verifies every ref afterwards, the killer is a one-line `git checkout`, and the Owner may pick A2 (no migration at all) instead.
- **The honest cost of refusal:** refusing A keeps a boot tax that grows ~2 KB per decision logged; refusing B keeps 449 files unmapped and two artifacts mis-classified as live partners; refusing C keeps every surface counting without aging; refusing D keeps the gate crying wolf on its own authors.
- **What this package does NOT do:** it does not fill any Owner-by-right field, does not rule pr-021 (it names the expiry and leaves the ruling to the Owner), does not touch the foreign lanes, and does not move the version.

## Owner ruling

- {APPROVED into doctrine via {date} approved-docs moment — parts adopted: {letters} | REJECTED, reason | HELD}
- *(empty-by-right — the guest NEVER fills this)*
