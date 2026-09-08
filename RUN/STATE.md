# STATE — SERIES 2 run pointer (updated after every round)

- series: NOTRICK SERIES 2 (R0..R14)
- next_round: R9
- current_burrow: none (R9 targets P05 GENERATOR II — the machine; no burrow)
- outstanding_debt: none (R8 receipt R008 complete)
- status: OPEN
- repair_note: R11 CORRECTED post-close (B5 verifier landed late, DISAGREES on 3 edges) — REPAIR section appended to primitive-independence.md: TEXT 7 / LAW 3 edges, both acyclic; atom count 2→3-roots in text graph
- repair_note: R9 CLOSED 2026-09-08 (executor, B1.3 debt — R009.json filed, design verified C138-C139); R10 verdict CLEAN per blind auditor after 2 anchor fixes (C143)
- repair_note: R6/R7 REPAIRED 2026-09-08 (executor lane) — gate-legibility.md written (mean 1.33/3, decorative 3/9, H3 UNTESTED); six mandated proposals filed P-015..P-020; RUN/ machinery Q7 HEIR clause written; T1 cited+corrected
- one_line_note: R8 DONE 2026-09-08 (self-executed, spec-only — zero execution) — P05 part I: the executable gate = 5 frozen fields (criterion referencing ONLY digest-frozen 6-field rows + ownerBind external) + determinism law (two independent evaluations → byte-identical output; the receipt IS the second run) + all 6 hooks wired + fence mapping (F0023/F0016/X-08/F-1/S-03 rot) + HANDOFF_P05 12/12 — honest limits: determinism verifies poison too; W8 delays its own reinforcement. R9 = P05 GENERATOR II — the machine
- last_receipt: RUN/receipts/R008.json (complete)
- last_receipt_status: complete

## Read order on resume (B1)
1. RUN/STATE.md
2. RUN/QUEUE.json
3. RUN/receipts/ (last one)
4. RUN/NEXT.md
5. RUN/WALL.md
6. RUN/FENCE_RUN.md

## Crossings (R10) — this pointer's claims intersect the doctrine twice
- The parallel-writer caveat: `CONTEXT.md` decision-log tail (2026-09-06 SESSION HANDOFF:
  "The parallel OpenCode session (supervisor niche, P17) may write after close") — the
  reason counts are live; GROUND_TRUTH.md records the drift 310→337 md during R0.
- The round-order: `RATIFICATION-BATCH-001.md:27-29` (Part 6 — the written GO not yet
  filled) — the reason the series stays read/propose/write-lane and never executes.

---
obituary: this file dies the moment a round completes and this pointer is NOT advanced;
a resume that finds a stale pointer and silently re-runs a completed round is the failure
this obituary exists to catch.