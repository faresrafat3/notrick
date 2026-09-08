# SUBSTITUTION — the substitution tests (done-contract item 5)

> For each round's MAIN artifact: delete its single most load-bearing line, confirm the
> artifact visibly degrades, restore it, record before/after here. If it does NOT degrade,
> the line was decoration — the round FAILS and rewrites.

- R0 · RUN/OBITUARY.md · OLD: the file without the clause "if, by R14, the series has
  produced ZERO kills, the series was theater and retires itself via Omega-5" is a
  decorative header with a measurer name and nothing that fires. AFTER (restored): the
  clause present — R13/R14 have a mechanical kill-floor. Test executed: 2026-09-08.
- R0 · RUN/QUEUE.json · OLD: without the `"passes": false` flags the file is a static
  name list; nothing can ever be a done-contract, because nothing can flip. AFTER
  (restored): flags present — the definition-of-done is machine-checkable.
- R0 · RUN/QUEUE.json · OLD (executed 2026-09-08): deleted round R0's `"passes": false` flag → `grep -c '"passes": false'` drops 15 → 14; the definition-of-done ("every round passes:true") loses machine-checkability for R0; a verifier can no longer count 15 flags. → DEGRADES. RESTORED: 15 flags back (verified `sum=15`). The flag is load-bearing: the queue's value is the count of obligations, and each is one flag.
- R0 · RUN/WALL.md · OLD: without W2's "gate it does not own" row the rest of the walls
  are advisory; R6 is the spine every other wall hangs from. AFTER (restored): row in place.
- R1 · RUN/STALE.md · OLD (executed 2026-09-08): deleted row S-01 (charter-status) — the
  only row anchoring proposals/pr-010-stale-reentry.md's core escalation → `grep -c 'S-01'
  RUN/STALE.md` drops 1 → 0 while pr-010 still cites S-01 twice → the proposal references a
  deleted row, the escalation is unanchored. → DEGRADES. RESTORED: `grep -c '^| S-01'` = 1.
  The row is load-bearing: STALE.md is the evidence register and pr-010 its demand.

- R2 · proposals/pr-012-four-deliverables-completion.md · OLD (executed 2026-09-08): deleted
  the one-sentence proposal demand ("The four OPS_QUEUE deliverables now exist...") →
  `grep -c` 1 → 0 → the file retains evidence + an Owner-ruling slot but states NO request:
  an Owner reading it cannot tell what is being asked — it stops being a proposal. →
  DEGRADES. RESTORED: sentence back (grep = 1). The demand line is load-bearing: evidence
  without an ask is a memo, not a proposal.

- R3 · RUN/PIN_TRIAL.md · OLD (executed 2026-09-08): deleted the violations.md MISMATCH row
  (the trial's only non-MATCH verdict) → table rows 44 → 43, MISMATCH count 2 → 1 → the
  trial reports a clean tree; V-003's evidentiary anchor vanishes; the round would decide
  nothing — a pin trial that cannot fail is decorative (R6). → DEGRADES. RESTORED: 44 rows /
  MISMATCH 2 (row + summary line). The row is load-bearing: the trial's whole yield is its
  one failure.
- R3 · RUN/PIN_TRIAL.md · SECOND TEST (same line, redaction variant): verdict cell swapped
  MISMATCH → MATCH — table still 44 rows but now asserts 44/44 clean; same degradation via
  falsification instead of deletion. Both tests recorded; deletion variant is the canonical
  B6.5 form.

- R5 · research/doc-trust-redteam/RESULTS.md · OLD (executed 2026-09-08): deleted the P-09
  SLIPPED row (the round's only non-CAUGHT verdict) → table 12 → 11 rows, catch_rate would
  read 12/12 clean, SLIPPED count 0 → the round's entire yield (the fence-reframe hole that
  justifies R13 DOC-TRUST) vanishes; a clean sweep would even trigger the suspicious-100%
  clause instead of exposing the hole. → DEGRADES. RESTORED: 12 rows / SLIPPED 1 (grep=1).
  The slip row is load-bearing: it is the redteam's one true finding.

## Substitution method (reused by later rounds)
1. Copy the artifact. 2. Delete the candidate line. 3. Ask: does the artifact still mean
what it must mean? 4. Record YES-degrades (keep) or NO-degrades (decoration → rewrite).
5. Restore. 6. Log here.

## Crossings (R10) — this discipline's claims intersect the doctrine twice
- The prior substitution record it extends: `mill/SUBSTITUTE.md` (2026-09-06 3-slogan
  test, OP-0258: 2 COSTUME) — cited by the R0 fencer brief (F-RUN-08).
- The day-gates it feeds: `hept/days/D1/OPS.md:6` — "Q08 smallness check; Q09
  prestige/practice marks" (hept's own substitution/prestige gates) — the series' R6 uses
  the same shape.

---

- R4 · well/BECAUSE.md · OLD (executed 2026-09-08): deleted the W03 addendum's LB07 KILL
  header (the round's only claim-level verdict) → `grep -c 'LB07 — KILLED'` 1 → 0 while the
  addendum still describes fills → the ledger shows two retirements and no decision about
  the one claim that died; a regress that kills nothing is a re-read (R6). → DEGRADES.
  RESTORED: header back, grep = 1. The kill line is load-bearing: it is the round's yield.


- R5 · research/x07-injection-redteam.md · OLD (executed 2026-09-08): deleted the Probe F
  verdict line (the report's only structural finding) → the file still shows six probes and
  five CLEAN verdicts → the round reads as a pure pass with no yield; a redteam whose only
  deliverable is reassurance is theater (R6). → DEGRADES. RESTORED: line back, count = 1.
  The finding is load-bearing: it converts a clean scan into a debt with a named repair.


- R6 · research/gate-triads.md · OLD (executed 2026-09-08): deleted the F-1 finding header
  (the round's sharpest yield — the claimant-owned masterpiece gate) → the file still shows
  the full 9-gate table and 4 findings → the audit reads as a neutral inventory with no
  verdict against the doctrine; an audit that offends nobody audited nothing (R6). →
  DEGRADES. RESTORED: line back, count = 1. F-1 is load-bearing: it is the round's only
  finding that names a law-level shape defect.


- R7 · research/arc-harvest.md · OLD (executed 2026-09-08): deleted Part 3 (the ratio — the
  harvest's only yield-sentence) → the file still lists heirs and catches → an inventory
  without a priced conclusion; a harvest that never converts to a price fed no decision
  (results are the prices). → DEGRADES. RESTORED: section back, intact between Parts 1-2
  and 4. The ratio is load-bearing: it prices the zero-day gates.


- R8 · research/p05-executable-gate-spec.md · OLD (executed 2026-09-08): deleted the 12-
  constraint compliance table (the spec's countable-parts proof) → the spec still reads as a
  design with fields and wiring → but nothing proves it honors the mill's frozen law; a spec
  that cannot be checked against its own constraints is prose with fields drawn in it (R6).
  → DEGRADES. RESTORED: table back, 12/12 rows intact. The table is load-bearing: it is the
  spec's T-ANCHOR against HANDOFF_P05.

obituary: this file dies if a round records a substitution test without actually deleting
and restoring the line; the test is a ritual unless it changes the file twice.- R6 · research/gate-legibility.md · OLD (executed 2026-09-08): deleted the decorative list
  (3 rows — quorum/wall-ledger decorative-by-absence, masterpiece decorative-by-ownership)
  → "decorative-by" count 3 → 0, the round's yield (which gates cannot fail) vanishes, and
  the highest-value-missing-gate section loses its evidence chain (wall-ledger priority
  rests on the told lie + the P-09 slip). → DEGRADES. RESTORED: count 3 (grep-verified
  before/after).
- R10 · research/one-object-verdict.md · OLD (executed 2026-09-08): deleted the reduction
  table (6 rows mapping receipts/gates/emitter/K-lines/ledgers/crossword → the 6-field row)
  → artifact anchored claims drop 6 → 0; the verdict becomes assertion-only ("everything is
  a row" with no artifact shown to reduce) — exactly the blend-syntax risk the auditor
  checks, since unsupported ONE-object claims are how BT05 hides. → DEGRADES. RESTORED:
  6 anchored rows (grep-verified).
- R11 · research/primitive-independence.md · OLD (executed 2026-09-08): deleted the P4 ENTRY
  matrix row (the hub with 4 dependencies + 3 dependents) → P5/P7/P8's dependency anchors
  dangle (they point at a removed row) and the DAG's center of mass vanishes — the matrix
  shows an impossible order and "P4 = the one object" loses its row. → DEGRADES. RESTORED:
  P4 row present (grep 0 → 1, before/after recorded).
