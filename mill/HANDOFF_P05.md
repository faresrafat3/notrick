# HANDOFF_P05 — one-line purpose: what a generator could take as state; 12 lines (op 0478).
1. Read: SKELETON.md (index), PRIMITIVES.md (frozen), OPS.md, INVARIANTS.md, FORBIDDEN.md, STATE_SCHEMA.md, INTERFACE.md.
2. The generator builds gates, not meaning: a GATE (P3) is a procedure with frozen criterion text and a byte-for-byte output.
3. State to consume: sets of 6-field rows (STATE_SCHEMA); no other structure is legal.
4. Verdicts: CLOSED / SUSPENDED / WRITTEN_DOWN / STALE; never "true", never "false" (P5, X1/X2).
5. Receipts are raw bytes with honoring-cost; cost ruler must exist before any cost is reported (I6, D0039).
6. O1's written-go precondition stays — no entry opens without it (C0039).
7. Receipt must be external to the claimer (I2, X10); a self-written receipt is a violation, not a feature.
8. Gate ownership: claimers never own their gates (I7, C0025).
9. D0052: human signatures stay SUSPENDED-with-anchor; no fake gate invented (EX2).
10. Stale pairs resolve only via O6 with a logged decision (P8, O6).
11. Illegal blends carried forward: no prices-as-mechanism, no stigmergy, no VM (F0027, ILLEGAL_BLENDS).
12. No protocols before the generator exists (STATE op 0498); primitives froze at P1-P8 (0484).