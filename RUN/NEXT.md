# NEXT — what the next round opens first

Round 3 (R3 — THE PIN TRIAL) must open, in this exact order:
1. `RUN/STATE.md` — round pointer (reads next_round: R3 after R2 commits).
2. `RUN/QUEUE.json` — confirm R3's `passes` is false.
3. `RUN/receipts/R002.json` — the previous receipt; must be present and complete, else R3
   is IN DEBT (cap 40 ops, log repairs to RUN/LEDGER.md).
4. `RUN/NEXT.md` — this file.
5. `RUN/WALL.md` — ten walls; R3's rule: ZERO writes to INTEGRITY.md (F-RUN-03 temptation).
6. `RUN/LEDGER.md` — the R2 RULINGS entry contains the compiled MASTER RULING TABLE (RJ-001,
   R4, TRUE STOPS, D-01..07, V-001/2, X0001..4, CF01..12) that pr-012 wants moved into
   verdict-master.md by an Owner moment — R3's repin proposal (pr-0NN-repin) can reference it.

R3 specifics: recompute sha256 of every pinned file by command; settle 42/44/43 by command;
every MISMATCH -> ledger entry + proposal if covered / violations.md if not; proposals use
templates/PROPOSAL.md exactly. The R1 findings feed R3 directly: S-03 (42/44/43), S-04
(violations.md pin mismatch — live hash c39f54c0 vs pinned 868d35aa), INTEGRITY.md:24.

## R2 hand-off state (written 2026-09-08)
- All four deliverables exist: reconstruction-v2 118 ln · assault-plan 53 (self-frozen, no
  test may be added) · lineage-audit 154 · verdict-master 146. BUILD 4 / KILL 0.
- proposals/: pr-011-regency.md (P17's) AND pr-012-four-deliverables-completion.md (this
  series; renamed from a colliding pr-011, logged) — check numbering before filing new ones.
- Subagent brief-write failures: 5 across R1-R2 — write briefs incrementally during reads.
- Live-tree drift continues: P17 wrote regency-doctrine.md + harness-run/OWNER-QUEUE-DRAFT.md
  at 08:34-08:35. Counts stay timestamp-bound.

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