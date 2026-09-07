# STATE_SCHEMA — one-line purpose: how a theoretical situation is described; fields only (ops 0452-0453).
A state is a set of rows; every row has exactly these 6 fields:
1. ENTRY.id — unique row identifier.
2. QUOTE — (path · line · digest), the frozen debit (P1).
3. GATE — the named re-runnable criterion bound at OPEN (P3).
4. RECEIPT — (raw output · honoring-cost), the credit (P2); empty until VERIFY.
5. SLOTS — (axis, wall) values, each drawn from a CHART (P6).
6. VERDICT — one of OPEN / SUSPENDED / CLOSED / WRITTEN_DOWN / STALE (P5, P7, P8); never "true", never "false".
Fields satisfy I1-I7; any set of rows violating an invariant is not a state of this machine.