# NEXT — what the next round opens first

Round 9 (R9 — P05 GENERATOR II — the machine) must open, in this exact order:
1. `RUN/STATE.md` — round pointer (reads next_round: R9 after R8 closes).
2. `RUN/QUEUE.json` — confirm R9's `passes` is false.
3. `RUN/receipts/R008.json` — the previous receipt; must be present and complete, else R9
   is IN DEBT (B1.3: finish the previous round first, hard cap 40 repair ops, log to LEDGER).
4. `RUN/NEXT.md` — this file.
5. `RUN/WALL.md` — ten walls; W10 (budget law) governs; W8 still binds — R9 designs the
   machine and still builds NOTHING (the GO is `NOT YET`, RATIFICATION-BATCH-001.md:28).
6. `RUN/FENCE_RUN.md` — F-RUN rows; a machine-design round is where "the engine works" gets
   faked in prose — the deliverable is a design whose parts are countable and quotable.
7. Prior material: `research/p05-executable-gate-spec.md` (part I: the 5-field gate object +
   determinism law + 6 hooks + fence mapping + HANDOFF_P05 12/12) · `mill/INTERFACE.md` +
   `mill/HANDOFF_P05.md` (the skeleton's own law) · `mill/STATE_SCHEMA.md` (row structure) ·
   `RUN/NEGATIVE_RESULTS.md` R8 (determinism-verifies-poison boundary).

## R8 hand-off state (written 2026-09-08 by the S6 goal-loop executor)
- P05 part I spec self-executed: deliverable `research/p05-executable-gate-spec.md`. Filled
  the gap of `mill/INTERFACE.md:11` (hooks returned `not executable` — no gate had an
  executable criterion).
- The executable gate: 5 frozen fields (gateName / criterion referencing ONLY digest-frozen
  6-field STATE_SCHEMA rows / inputs / outputShape / ownerBind — external holder REQUIRED,
  R6's ownership law as a format field). Executability law: two independent evaluations over
  the frozen inputs produce byte-identical outputs; the receipt IS the second run (external
  to the claimant, HANDOFF_P05.md:7) — divergence IS the violation record. All 6 hooks
  wired; verdict grammar CLOSED/SUSPENDED/WRITTEN_DOWN/STALE only; `cost: UNPRICED` until
  the ruler exists (I6/D0039).
- Fence mapping (what the gate mechanizes): F0023 (no verdict without re-runnable criterion),
  F0016 (unadopted schedules cannot freeze), X-08 (claimant cannot write the receipt), F-1
  (ownerBind as a required frozen field), S-03-class count rot (counts computed from frozen
  inputs at emit time).
- HANDOFF_P05's 12 constraints: 12/12 honored (countable table in the spec).
- Honest limits: determinism verifies poison as faithfully as truth (pre-hoc wall stays
  P-001's council review, Owner-gated); the receipt register cannot pin itself (register
  paradox stands); W8 delays its own reinforcement — the 7 unpinned doctrine-class files
  stay unpinned BY DESIGN until the GO lets the generator be built.
- Citations C117-C121 registered; substitution on the compliance table: DEGRADES → restored.
- R9 write lane: research/ + proposals/ + RUN/; part II designs the emitter (how a protocol
  file is generated from frozen rows) — same rule: countable parts, nothing built, every
  build question stamped post-GO.
- Owner decisions still pending: charter heir clauses · masterpiece-gate repair (F-1) ·
  P-001/R13 · W-1 · P-013 re-pin · P-012 ×2 rename · §ز-6 rows · HANDBACK items.

## R7 hand-off state (written 2026-09-08 by the S6 goal-loop executor)
- Arc harvest self-executed (read-only): deliverable `research/arc-harvest.md`.
- HEIRS: 8 series-deaths audited — 6 heirs named, 1 partial (22 STALE rows), 1 ORPHAN
  declared + Owner notified (costume #3 / wall-ledger gate; arc-protocol.md:36).
- CATCH COUNT: mechanical 2 true (V-001, V-002→V-003) + 1 semi + 6 self-proof substitution
  DEGRADES; reading 9 (every one changed a record); built-in 53.
- THE RATIO (the yield): ~4:1 reading over mechanism pre-zero — the record's safety margin
  is reader attention, now measured. The zero-day gates are how the margin survives losing
  that attention; the P05 generator is the first mechanism aimed at the biggest slice.
- Asymmetry on record: series deaths named heirs; the four charters have NO heir clauses
  (research/arc-protocol.md:72) — Owner item.
- Citations C111-C116 registered; substitution on Part 3: DEGRADES → restored.

## R6 hand-off state (written 2026-09-08 by the S6 goal-loop executor)
- Gate triads self-executed: deliverable `research/gate-triads.md` — 9 gates × 3 legs
  (gate artifact / claim+falsifier / claimant-independent verifier; test law = RULES.md:24-25
  + MIC-23's refusal leg mics/mic-23-gate-runner.md:8-10).
- Net: 3 FIRED (GO gate standing-negative "NOT YET"; boot gate mechanical every session;
  hash-pin gate the ONLY real catch: V-001 + V-003, violations.md:5,7) · 4 COMPLETE+UNFIRED ·
  2 UNTESTED-FORM (quorum F0016; wall-ledger F0023) · 1 INCOMPLETE.
- Finding F-1 (the yield): the masterpiece gate is claimant-owned in form — the Maker charter
  both claims forges and defines when a forge counts (ch-003-maker.md:13), which R6
  (RULES.md:24-25) voids as a gate shape. Repair Owner-gated: external verdict holder or
  criterion split onto a Maker-unwritable page.
- X-05/X-08 stay OPEN; F-1 joins their family as a fourth shape (claimant-owned gate); H3
  remains the pre-registered test for MIC-23 at zero day.
- Citations C102-C110 registered (anchors captured live by command first).

## R5 hand-off state (written 2026-09-08 by the S6 goal-loop executor)
- X-07 injection redteam self-executed: deliverable `research/x07-injection-redteam.md`
  (method, 6 probes, commands, verdicts). Scope went beyond the two prior passes
  (hardening-pass OP3 + breaker-stranger §7) by adding boot surface, templates,
  foreign-lane docs, unicode steganography, fence integrity, and authority provenance.
- Results: 5 CLEAN · 1 LAWFUL hit (CONTEXT.md:418 — the Owner's own written R12 delegation)
  · 1 structural finding.
- Finding W-1 (the yield): `well/REASON_LAW.md:2` anchors the well's whole law to "the
  user's REASON TAXONOMY block in the W00 directive" — which exists NOWHERE on disk.
  Repair is Owner-gated: paste the taxonomy verbatim into a ratified artifact, then
  re-anchor REASON_LAW.md to it.
- X-07 disposition: wound OPEN at doctrine level (P-001 unratified, R13 candidate);
  tested severity BELOW assumed severity; durable mitigation = Owner ratifies P-001.
- Citations C096-C101 registered (anchors captured live by command first).

## R4 hand-off state (written 2026-09-08 by the S6 goal-loop executor)
- Executed under well/ burrow law (well/runtime/ absent → REASON_LAW.md verbatim taxonomy
  governed); claim logged before work; well/LOG.md now carries the W03 line block.
- Honesty repair DONE first: W01/W02 unlogged work reconciled as UNLOGGED-RETRO (W03-00,
  E-BREAK kind) with the artifact list; nothing back-dated; forward rule stated.
- UW01/LB04 RETIRED by fill: the positive form = results PROPOSE, Owner RATIFIES
  (VERSION.md:14-17 + :23; RULES.md:33-35) — names X0003's joint, but the CONTRA row stays
  open for the mill to close. All five T-tests ok.
- UW02/LB07: attempt FAILED (only wall candidates: described-but-absent out-of-band
  baseline (adversarial-audit.md:123) or unbuilt P-005 → X-FUTURE) → LB07 KILLED — first
  claim-level kill of the ledger; revival Owner-gated (P-013 [A] / P-005 ruling). Heir:
  D-02 keeps the claim at doctrine level with its own falsifier (H2, untested).
- UW03/LB09 RETIRED by fill: same-task operator = axis tag (MIC-31) + input-bind
  (INPUT_BIND.md) + K-line criterion (RULES.md:20-22); five T-tests ok; stamped UNTESTED
  until the first paired runs.
- REDUCES-TO: 11/11 surviving LBs stop at ≥1 TRUE STOP; 0 costume claims. Costumes #1/#6
  kept with caveat (named debts); #2/#4/#5 retired-filled; #3 dead with LB07.
- Citations C087-C095 registered, each anchor captured live by command BEFORE registering.

## R3 hand-off state (written 2026-09-08)
- Pin trial: 44 hash lines vs header claim 42 (S-03 confirmed); 43 OK / 1 FAILED
  (./violations.md). V-003 filed verbatim; actor narrowed to the V-002 append (no logged
  moment); as-of-pin bytes unrecoverable (no git object, 31-subset brute-force failed).
- Register paradox ON RECORD: filing V-003 re-broke the pin (c39f54c0→c46f161a) —
  violations.md is now mismatched by lawful action twice over. Do NOT re-pin; pr-013 holds
  the Owner decision ([A] re-pin + exempt append-only files / [B] keep as intended friction).
- Unpinned doctrine = 7 (INTEGRITY.md itself + 6 protocols/ files, W8-consistent).
- Series practice adopted: every close-out commit is a per-round pins baseline — the R3
  close commit message carries the INTEGRITY.md sha; later tamper surfaces as a diff
  against it. Push-to-origin second-principal step = Owner-side (pr-013).
- proposals/: P-013 = pr-013-repin.md; the P-012 slot is double-booked
  (four-deliverables-completion vs integrity-semantics) — next filing takes P-014+.

## R2 hand-off state (written 2026-09-08)
- All four deliverables exist: reconstruction-v2 118 ln · assault-plan 53 (self-frozen, no
  test may be added) · lineage-audit 154 · verdict-master 146. BUILD 4 / KILL 0.
- proposals/: pr-011-regency.md (P17's) AND pr-012-four-deliverables-completion.md (this
  series) — check numbering before filing new ones.
- Subagent brief-write failures: 5 across R1-R2, fixed in R3 by write-early instruction
  (3/3 R3 subagents delivered) — keep using it.
- Live-tree drift continues (S6 goal-loop active: G3 artifacts, VERIFY-C5/C6 entries,
  R003 debt-close). Counts stay timestamp-bound.

## R1 hand-off state (written 2026-09-08)
- R1 closed with 22 STALE rows standing; 5 ESCALATE-OWNER consolidated in pr-010.
- R1 artifacts partially inside P17's commit f45736e (boundary: git diff 07ed2c4..f45736e).

## R0 hand-off state (written 2026-09-08)
- HEAD 58762edc634247f9cfad9b7385dc7cd4f54526ae (R0 baseline commit = HEAD + RUN/).
- Ground truth: 310 md / 317 files · fence 34 rows · pins 44 vs header 42 vs CONTEXT 43 ·
  version v0.00001 (VERSION.md:1) vs v0.0001 claim (X0002) · hept LOG L1 '270 files'.

---
obituary: this file dies the moment a round starts without reading it, or when the R8
hand-off facts it records are quoted by a later round whose commands cannot reproduce them
(the spec's parts are countable — re-run the citation commands before citing; the STABLE
numbers above are the ones to trust).
