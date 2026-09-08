# NEXT — what the next round opens first

Round 1 (R1 — THE STALE SWEEP) must open, in this exact order:
1. `RUN/STATE.md` — round pointer (should read next_round: R1 after R0 commits).
2. `RUN/QUEUE.json` — confirm R1's `passes` is false; nothing before a write.
3. `RUN/receipts/R000.json` — the previous receipt; must be present and complete, else R1
   is IN DEBT (cap 40 ops, log repairs to RUN/LEDGER.md).
4. `RUN/NEXT.md` — this file.
5. `RUN/WALL.md` — ten walls; W2 (R6) governs every gate in R1.
6. `RUN/FENCE_RUN.md` — re-read the fences; R1's top temptation is F-RUN-01 (silently
   reconciling stale numbers instead of running P8 rows).

Then: `RUN/briefs/` for the 4 R0 briefs (archivist/fencer/lawyer/skeptic) and
`RUN/GROUND_TRUTH.md` — R1's stale-sweep data lives there (file counts, pin counts,
version claims, fence rows).

## R0 hand-off state (written 2026-09-08)
- HEAD 58762edc634247f9cfad9b7385dc7cd4f54526ae (R0 baseline commit = HEAD + RUN/).
- Ground truth: 310 md / 317 files · fence 34 rows · pins 44 vs header 42 vs CONTEXT 43 ·
  version v0.00001 (VERSION.md:1) vs v0.0001 claim (X0002) · hept LOG L1 '270 files'.
- R1 write lane: RUN/STALE.md + proposals only (<= 6 files).

---
obituary: this file dies the moment a round starts without reading it, or when the R0
hand-off facts it records are quoted by a later round whose commands cannot reproduce
them (live-tree drift makes file counts timestamp-bound; the STABLE numbers above are
the ones to trust).