# STATE — SERIES 2 run pointer (updated after every round)

- series: NOTRICK SERIES 2 (R0..R14)
- next_round: R3
- current_burrow: none (R3 targets INTEGRITY.md pins — recompute + trial, RUN/PIN_TRIAL.md)
- outstanding_debt: none (R2 receipt R002 complete)
- status: OPEN
- one_line_note: R2 DONE 2026-09-08 — all four deliverables EXIST (P17 wrote them mid-R1); audited as BUILD 4 / KILL 0; gaps (4 obituaries, verdict-master's missing master table, assault-plan 53-vs-60 under its own freeze law) escalated in proposals/pr-012-four-deliverables-completion.md; master ruling table compiled into LEDGER. R3 = THE PIN TRIAL (<= 50 ops, <= 4 files; zero writes to INTEGRITY.md)
- last_receipt: RUN/receipts/R002.json (complete)
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