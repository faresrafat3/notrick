# GENERATORS (D4-Q10)

Each generator: input = a state S=(C,R,K,M,F) or a ledger fragment; output = candidate legal moves; filters = I1-I5, X1-X8, D3 constraint set.

| ID | Generator | Input | Candidate moves produced | Filters applied |
|----|-----------|-------|--------------------------|-----------------|
| G1 | AUDIT-ONE | any RECORD with M≠UNSET | re-run its check in-turn; byte-compare paste (I1); on mismatch → O4 mark UNVERIFIED(gap=fabrication suspected) | X1 (criterion must predate), X2 |
| G2 | CRITERION-CRITIC | any RECORD header with C | check the fail condition exists and is reachable; if broad → O1 re-freeze with named FAIL output (BK3) | X6 |
| G3 | CHAIN-WALK | any UNVERIFIED RECORD | walk descendant edges; list clean descendants with unclean ancestors → flag laundering (I3) | X5 (no in-place edits; flag via new RECORD) |
| G4 | CATCH-BANKER | any mechanism m with tries≥3 | if stops=0 → O6 demote with forcing RECORD; if stops>0 → cite the catch RECORDs | X8 (no elegance arguments) |
| G5 | PRICE-AUDIT | any run RECORD | verify fee was committed pre-run (K.committed ≤ timestamp); if missing → UNVERIFIED(gap=unpriced check) | X7 |
| G6 | ANCESTOR-HOLE | any RECORD without ancestor citation that contradicts a judged RECORD | demand citation or mark the contradiction into the ledger (R6, R10 spirit) | X4, X5 |
| G7 | FORK-TRIGGER | any verification failure whose cause is an attribution hole | if pre-write one-liner would have blocked it → invoke F: R2 re-enters as co-object (VERDICT fork condition) | L12 (fork re-entry ≠ blend; co-object only) |
| G8 | STALL-ACCOUNTANT | the ledger as a whole (EX2's blind spot) | list UNSET states aging past threshold; output a COST-OF-STALL note per item — NOT a fix, an invoice (the doctrine's honest limit) | X4 (invoices are not verdicts) |

## Closed against the constraint set
- A1-A5 constructible: A1=O1 (G2 enforces), A2=O4 (G1/G5 produce), A3=O3 (G1 checks), A4=O5 (G5), A5=O6 (G4).
- X1-X8 all appear as filters above or as the fails-when set (RELATIONS_OPS).
- G7 is the only generator that can change the doctrine's scope — gated by the VERDICT fork condition, not by free choice.