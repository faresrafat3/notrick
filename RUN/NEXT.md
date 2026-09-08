# NEXT — what the next round opens first

Round 4 (R4 — THE WELL REGRESS) must open, in this exact order:
1. `RUN/STATE.md` — round pointer (reads next_round: R4 after R3 commits).
2. `RUN/QUEUE.json` — confirm R4's `passes` is false.
3. `RUN/receipts/R003.json` — the previous receipt; must be present and complete, else R4
   is IN DEBT (cap 40 ops, log repairs to RUN/LEDGER.md). NOTE: R003 was written as a
   debt-close by the S6 goal-loop, not by the R3 executor — its re-derivation claims were
   spot-verified by the executor at close (LEDGER R3 RECEIVED entry).
4. `RUN/NEXT.md` — this file.
5. `RUN/WALL.md` — ten walls; R4 is a burrow round: well/STATE.md + well/INPUT_BIND.md
   govern operation and the WNN-NN stdout format (B3.1).
6. `RUN/LEDGER.md` — R3 tail carries: V-003 + the register paradox (c39f54c0→c46f161a),
   the pin-provenance gap, the skeptic's adopted baseline practice, S6's P-012
   double-booking finding (next filing takes P-014+).

R4 specifics (from the round text, re-establish each by command at boot — R2 lesson):
well/LOG.md ends at W00-14 while W01-W03 artifacts exist → the honesty repair FIRST (dated
RECONCILIATION block, UNLOGGED-RETRO, forward rule stated); then UW01/UW02/UW03
pay-or-kill (attempt the missing record piece from sources with quotes BEFORE any
UNFILLABLE-BY-DELEGATE; difficulty is not a failed attempt — show commands); kills via
well/KILL_EDIT.md + KILLED_WHYS.md format; REDUCES-TO rows in well/BECAUSE.md.

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
obituary: this file dies the moment a round starts without reading it, or when the R0
hand-off facts it records are quoted by a later round whose commands cannot reproduce
them (live-tree drift makes file counts timestamp-bound; the STABLE numbers above are
the ones to trust).