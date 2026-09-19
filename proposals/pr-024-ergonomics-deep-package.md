# pr-024 — ERGONOMICS-DEEP PACKAGE (the record stops doubling as the state · the tree gets a map · citations get a gate · the plan stops drifting)

> author: DeepSeek agent (big-goal harness session — guest: read+propose) · filed: 2026-09-11 · status: **RULED 2026-09-19 — ADOPTED A C D (Part B NOT adopted) · executed same day via approved-docs moment**
> boot-gate (matches the session's first reply): v0.00001 · guest: read+propose · no execution, no runtime, no Owner-by-right fields
> **Design paper + measured evidence:** research/ergonomics-deep.md (the operating cycle · the GENERATE/ROUTE/RECORD invariant · findings F-1..F-7)
> **Predecessor:** pr-022 + pr-023 (executed 2026-09-11) — this package builds on them, no overlap: pr-023 built the card/board/desk surfaces; pr-024 re-shapes the record file they protect, maps what the board does not cover, arms the citation gate, and re-trues the plan.
> **Method:** every part below is ready-verbatim, applied as written, no free-hand editing at adoption (templates/PROPOSAL.md:4). INTEGRITY re-pin + citation sweep run in the same logged moment.

## Why this package now (one line)

The audit-side boot chain still costs 80,645 B (89% = CONTEXT.md, whose hand-written head lies by staleness: "38 provider keys" vs FOUNDATIONAL-BRIEF.md:17's 57); 449 files in five lane subtrees have no semantic map on any root surface; the first citation sweep (155 files · 1,078 refs · self-tested) found 9 real drifts including one **caused by a prior approved-docs edit itself** (research/harness-run/BOOT.md:21 cites `AGENTS.md:74-77`, now 75 lines); and ZERO-DAY-RUNBOOK.md:7 still leaves pre-flight box 1 unchecked although P2 signed 2026-09-06 (RATIFICATION-BATCH-001.md:15).

---

## Part A — CONTEXT.md: the head becomes a pointer block; the log stays append-only (closes F-1/M8)

**File:** CONTEXT.md (excluded from pinning by rule — INTEGRITY.md:29-31; integrity rides on append-only + git).
**Action:** replace **lines 1–86** (the title block, all hand-maintained summary sections, and the old "## Decision log tail" heading) with the block below — byte-for-byte. The decision entries beginning "- NOTRICK name chosen (Minsky + Factorio) — Owner." (old line 87) and everything below are **not touched**. The removed head's text is preserved in git history (449aede and earlier).

```markdown
# CONTEXT.md — the decision log (append-only · the persisted brain)

> **Read order (Owner ruling 2026-09-06):** CONTEXT → AGENTS → FOUNDATIONAL-BRIEF →
> task-named files. For orientation, run `bash tools/audit.sh` first (ONBOARDING v2,
> pr-023-A): this file is the RECORD, not the state.
> **What this file is:** every decision with its forcing cause, oldest first, below
> the HISTORY line. Append-only: new entries land at the tail; nothing above the line
> is ever rewritten. The pre-2026-09-11 head sections (project summaries · machine
> state · open items) were removed by pr-024-A: their live homes are README (routes),
> the generated card (state), OWNER-DESK (pending decisions), FOUNDATIONAL-BRIEF
> (index), RULES (law); their historical text lives in git history.
> **Citation convention (pr-024-A):** cite CONTEXT entries by date + entry head
> ("CONTEXT 2026-09-08 · SERIES-COMPLETE"), never by line number. Cite every other
> file as `path/file.md:NN` from the tree root — bare basenames resolve today
> (tools/citecheck.sh) but rot the day a second file of the same name is born
> (research/ergonomics-deep.md §4-F-3).
> **Verify this file:** `git log -p CONTEXT.md` — its honesty rides on append-only
> discipline + git, not a frozen hash (INTEGRITY.md:29-31).

--- HISTORY (append-only below this line · entries: date · decision · forcing cause) ---

## Decision log
```

**Killer:** if the first post-adoption boot does not measure a lower audit-side boot tax (audit.sh §7), or if any decision entry proves lost or altered (git diff must show head-only change), the part is withdrawn by one line and the head is restored from git.

---

## Part B — LANES.md: status column + the artifact-lane register (closes F-2/M9)

**File:** LANES.md (declared-exempt living surface — INTEGRITY.md:84-87).
**Action:** replace **lines 13–21** (the four-row table + the closing parenthetical) with the block below — niches quoted from each lane's own self-description (survey 2026-09-11, receipts in research/ergonomics-deep.md §4-F-2).

```markdown
| Lane | Pulse file | Niche | Status |
|---|---|---|---|
| RUN machine | RUN/STATE.md | The rounds-and-receipts machine R0..R14 | SERIES-COMPLETE (R014 receipt) |
| bore | bore/runtime/STATE.md | The hole lab (site locator · hole doctrine) | COMPLETE — frozen (bore/CORE.md:1) |
| hept | hept/runtime/STATE.md | The honest-record lab (RECORD/CRITERION/TRACE) | core complete (hept/runtime/STATE.md) |
| harness-run | research/harness-run/STATE.md | The guest research fellow (unification session) | complete (research/harness-run/HANDOFF.md) |

## Artifact lanes (no pulse — recorded, not coordinated; read, never silently take over)
| Directory | Niche (self-described) | Entry file | Frozen at |
|---|---|---|---|
| mill/ | doctrine-forging mill, waves P00–P09: rulings/research → doctrine files with IDs, gates, falsifiers (mill/WHAT_IT_IS.md:1-6) | mill/STATE.md | 2026-09-07 (op 0501 · wave P04_DONE) |
| well/ | reason-law mill over mill's load-bearing claims: installs legal "because" reasons, LB01.. (well/STATE.md:9) | well/STATE.md | 2026-09-08 (W03 done · W04 eligible, never opened) |
| phantom/ | independent second reader, lane B: distrusts announcements until discrepancy-tested (phantom/STATE.md:7-8) | phantom/STATE.md | 2026-09-07 (PH03 stalled mid-op) |
| protocols/ | proposed verification methodologies: ADHA-v1 · AFM-v1 · CWVP-v1 — PROPOSED, unratified (protocols/CWVP-v1.md:4) | protocols/CWVP-v1.md | 2026-09-08 |

(A new lane = one row above + a state file. An artifact lane resumes only by its own
writer or an Owner line — LANES.md:6 holds verbatim. Every live lane keeps
`HOLDS: {what it holds now}` as the last line of its state file — compliance measured
0/8 on 2026-09-11 (research/ergonomics-deep.md §4-F-5); lane-runners self-apply by
their next pulse, and the convention itself dies into the obituary registry if two
pulses pass with no lane holding it.)
```

**Killer:** if a lane's own writer shows any niche line or status wrong, the register is corrected by append in a logged line and the erring survey is recorded — a second wrong register row withdraws the part.

---

## Part C — adopt tools/citecheck.sh as the citation gate (closes F-3/M10)

**Files:** ONBOARDING.md (pinned `16691ce7…`) · INTEGRITY.md (the pin itself).
**Action:** three exact edits:

1. ONBOARDING.md line 13 — old:
   `   verifier → audit.sh → INTEGRITY check → research/breaker-log.md;`
   new:
   `   verifier → audit.sh → INTEGRITY check → tools/citecheck.sh →`
   `   research/breaker-log.md;`
2. INTEGRITY.md — append to **Rules**:
   `- Every approved-docs moment that edits a pinned file also runs tools/citecheck.sh in the same logged moment and files any new drift with the moment: citations into doctrine rot when doctrine moves (live case: research/harness-run/BOOT.md:21 cites AGENTS.md:74-77; the pr-022 edit left AGENTS.md at 75 lines — caught by the first sweep, 2026-09-11).`
3. INTEGRITY.md — append to **Exemptions**:
   `- tools/citecheck.sh — the citation-sweep generator: same protection class as tools/audit.sh (live consumption + a built-in --self-test known-positive), not a frozen hash. A clean sweep contradicted by a named file:line is filed, never re-trusted.`

**Killer:** written inside the tool's contract — `--self-test` failing, or a generated "clean" contradicted by a named file:line, kills the tool into the obituary registry and the sweep returns to manual with its rot on the record.

---

## Part D — ZERO-DAY-RUNBOOK v0.2: the plan re-trued against the state it plans for (closes F-4/M11)

**File:** ZERO-DAY-RUNBOOK.md (pinned `70def32c…` — re-pinned within the adoption moment).
**Action:** three exact diffs; nothing else in the runbook changes (v0.1 authority semantics untouched):

1. Line 7 — old:
   `1. [ ] Owner batch signature on charters/ch-001..004 (the ratification fields filled, dated)`
   new:
   `1. [x] Owner batch signature on charters/ch-001..004 — DONE P2 2026-09-06 (RATIFICATION-BATCH-001.md:15 · CONTEXT 2026-09-06 "CHARTER BATCH SIGNED")`
2. Line 16 — old:
   `- Context pack (paste order): CONTEXT.md → AGENTS.md → FOUNDATIONAL-BRIEF.md → task-named files.`
   new:
   `- Context pack (paste order): boot card (bash tools/audit.sh) → AGENTS.md → CONTEXT.md head + the task-named tail entries → FOUNDATIONAL-BRIEF.md → task-named files. (The full-CONTEXT read remains the audit path — ONBOARDING v2:15-17.)`
3. Line 38 — old:
   `- Context pack: AGENTS.md → SUPERVISOR-CHIP.md → violations.md → the ruled DS.`
   new:
   `- Context pack: AGENTS.md → SUPERVISOR-CHIP.md → violations.md → a fresh tools/citecheck.sh sweep → the ruled DS.`

**Killer:** if any diff above is shown to change a prompt's authority semantics (not merely its sources), the part is withdrawn — the runbook stays v0.1 in full.

---

## Execution at adoption (one mechanical path — same as pr-022/pr-023)

1. The Owner's word names the parts: **"اعتمد pr-024: A C D"** — any subset; partial adoption is allowed by design.
2. Apply the ruled parts **verbatim as written in this file** — no free-hand editing.
3. `sha256sum` every modified pinned file → **re-pin INTEGRITY.md in the same logged moment** (INTEGRITY.md:26-27); new files (none here) would be pinned or exempted with an entry.
4. Run `bash tools/citecheck.sh` in the same moment; any new drift is filed with the moment (Part C's new rule applies to this moment first).
5. CONTEXT.md entry (date · parts adopted · hashes · sweep output) + LOG.md line. The version does NOT move (no gate of the VERSION.md scale is touched by any part).

## Adopting Part A intentionally changes citation semantics — said out loud

59 live refs point into CONTEXT.md by line number (the first sweep's log-anchors). Part A re-compacts the head, so those line numbers shift; the convention replaces them (date + entry head); historical entries are exempt from rewrite (append-only, R15). If the Owner prefers line-number stability over the ~68 KB boot saving, reject A alone — the honest cost is printed here: **the audit-side boot stays 80,645 B and the stale head keeps lying at the front door.**

## Pre-declared weaknesses (before the ruling — L8)

- **The vector:** this package was authored by the same session that measured the need and built the tool — claimant-owned convenience (R6's exact shape).
- **The counter:** the tool is bash+coreutils, runs for any auditor in under a minute, and self-tests against a planted lie before any "clean" is believed; the sweep outputs are quoted in LOG; every part carries its written killer; an independent stranger (SANAD pattern) is advised before the Owner rules; partial adoption de-risks each part separately; nothing here lowers the boot gate, the guest write-path, append-only discipline, R6, R7, or R8.
- **The honest cost of rejection:** rejecting A keeps the 80 KB toll and the stale head; rejecting B keeps 449 files unmapped; rejecting C leaves citation rot unmechanized; rejecting D leaves the plan drifting. Each is affordable — none is free.

## Owner ruling

- APPROVED into doctrine via the 2026-09-19 approved-docs moment — parts adopted: **A C D** (Part B NOT adopted). Owner line (verbatim): "اعتمد pr-024: A C D — وانقل الإصدار إلى v0.0001". Scribed by the guest scribe under Owner click-delegation (precedent: RATIFICATION-BATCH-001.md:11-15); the typed line IS the ruling (R8 terminus). Execution note: Parts A, C, D applied verbatim as written ("no free-hand editing" honored); the same moment also moved the version v0.00001 → v0.0001 per the Owner's second clause (VERSION.md gate: charter signature landed 2026-09-06) — the proposal's own "the version does NOT move" note is superseded by the Owner's explicit line, which outranks it (R8). Re-pin + citecheck sweep + generated-index refresh executed in the same logged moment (the new INTEGRITY rule's first application).
