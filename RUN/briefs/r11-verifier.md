# r11 — verifier brief (2026-09-08, guest: read+propose)

- Task: one-shot R11 verification pass. Read ONLY mill/PRIMITIVES.md (one file).
- Scope wall: no other files read for the analysis; no execution, no runtime, no Owner-by-right fields touched.
- Deliverables (5 lines, quoted from the definitions):
  1. Edge list: which primitives each definition mentions by name.
  2. Verdict vs claimed edges P2→P3, P3→P1, P4→P1,P2,P3,P6, P5→P2,P3,P4, P7→P4, P8→P4,P6 — MATCH or MISMATCH (name differences).
  3. Cycle check: YES/NO + one-clause why.
  4. Byte-compare 3 fragments (P2 "executing a GATE", P5 "receipt does not match its gate", P8 "two entries"): EXACT / APPROX / ABSENT each.
  5. Overall AGREES/DISAGREES, one clause.
- Record: result is quoted from the file; verdict not claimant-owned (R6 discipline).
