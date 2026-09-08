# STATE — SERIES 2 run pointer (updated after every round)

- series: NOTRICK SERIES 2 (R0..R14)
- next_round: R4
- current_burrow: well/ (R4 targets the well regress — payable whys; burrow law B3.1 governs)
- outstanding_debt: none (R3 receipt R003 complete)
- status: OPEN
- one_line_note: R3 DONE 2026-09-08 (closed as debt by S2-20260908-01 goal-loop) — pins 44/42 claim, 43 OK, 1 FAILED (violations.md; V-003 filed; V-002 post-pin change unlogged; as-of-pin bytes unrecoverable); register paradox recorded (V-003 filing re-broke the pin c39f54c0→c46f161a); 7 unpinned doctrine-class files; P-013 re-pin demand filed. R4 = THE WELL REGRESS (القانون: B3.1 burrow law — WNN-NN log format; premises re-established by command at boot)
- last_receipt: RUN/receipts/R003.json (complete)
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