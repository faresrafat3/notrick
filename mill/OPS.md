# OPS — one-line purpose: theoretical operations over the skeleton, with input/output/fails-when (ops 0430-0436).
| ID | operation | input | output | fails-when |
|---|---|---|---|---|
| O1 | OPEN | quote (P1), gate (P3), slot-values (P6) | entry (P4) in SUSPENSE (P5) | fails-when quote lacks digest, gate text unrecorded, any slot value off-chart, or no written-go precondition (C0039) |
| O2 | VERIFY | entry (P4) | receipt (P2) + honoring-cost | fails-when gate not executable against frozen inputs |
| O3 | CLOSE | entry (P4) with receipt | verdict ∈ {CLOSED, SUSPENDED} | fails-when no receipt exists; CLOSED requires receipt == gate output, quoted not summarized |
| O4 | WRITE_OFF | entry (P4), reason, violation-line | write-down (P7) | fails-when reason empty or violation-line absent |
| O5 | PERIOD_CLOSE | named entry set | period summary (D3) | fails-when any entry is neither CLOSED nor WRITTEN_DOWN |
| O6 | RE_ENTER | stale pair (P8) | one new entry (P4) | fails-when both old entries still suspended; requires a logged decision (Owner or verdict) |