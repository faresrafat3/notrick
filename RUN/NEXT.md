# NEXT — what the next round opens first

Round 2 (R2 — THE MISSING FOUR) must open, in this exact order:
1. `RUN/STATE.md` — round pointer (reads next_round: R2 after R1 commits).
2. `RUN/QUEUE.json` — confirm R2's `passes` is false.
3. `RUN/receipts/R001.json` — the previous receipt; must be present and complete, else R2
   is IN DEBT (cap 40 ops, log repairs to RUN/LEDGER.md).
4. `RUN/NEXT.md` — this file.
5. `RUN/WALL.md` — ten walls; W10 (budget law) governs R2's 90-op cap.
6. `RUN/STALE.md` — R1's output. Two of R2's four deliverables (reconstruction-v2.md,
   assault-plan.md) EXIST as of R1 (S-09a) — R2 must `test -f` all four FIRST and treat
   existing files as INPUTS to audit, not build targets; the R1 finding on this is the
   round's opening fact.

Then: `RUN/briefs/r1-verifier.md` (R1's verifier result) and `RUN/briefs/r1-*.md` for the
reader finds; `OPS_QUEUE.md:62-67` for the OP-035..040 deliverable spec lines.

## R1 hand-off state (written 2026-09-08)
- R1 closed with 23 STALE rows; 5 ESCALATE-OWNER consolidated in proposals/pr-010-stale-reentry.md.
- Live-tree drift during R1: CONTEXT.md 419→434 lines; file tree 422→455 (P17 active).
  Count-type STALE rows (S-07/S-25) are timestamp-bound — re-sed before citing.
- R2 write lane: research/ + proposals/ + RUN/ only (<= 8 files, <= 90 ops).

## R0 hand-off state (written 2026-09-08)
- HEAD 58762edc634247f9cfad9b7385dc7cd4f54526ae (R0 baseline commit = HEAD + RUN/).
- Ground truth: 310 md / 317 files · fence 34 rows · pins 44 vs header 42 vs CONTEXT 43 ·
  version v0.00001 (VERSION.md:1) vs v0.0001 claim (X0002) · hept LOG L1 '270 files'.

---
obituary: this file dies the moment a round starts without reading it, or when the R0
hand-off facts it records are quoted by a later round whose commands cannot reproduce
them (live-tree drift makes file counts timestamp-bound; the STABLE numbers above are
the ones to trust).