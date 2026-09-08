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
obituary: this file dies if a round records a substitution test without actually deleting
and restoring the line; the test is a ritual unless it changes the file twice.