# RELATIONS — one-line purpose: legal relations over primitives, with arity and meaning (ops 0424-0429).
| ID | relation | arity | meaning |
|---|---|---|---|
| R1 | cites(ENTRY, QUOTE) | 1:1 | every entry cites exactly one quote; no orphan rows (I1). |
| R2 | pairs(ENTRY, RECEIPT) | 1:1 | every entry is paired with one receipt born of its gate (I2). |
| R3 | runs(ENTRY, GATE) | 1:1 | every entry runs one gate; the gate is not owned by the claimer (I7). |
| R4 | slots(ENTRY, CHART) | 1:n | each entry has slot values drawn from named charts (I4). |
| R5 | conflicts(ENTRY, ENTRY) | 2 | two entries differ on one settled slot; marks both P8 STALE. |
| R6 | writes(WRITE_DOWN, ENTRY) | 1:1 | a write-down removes exactly one entry, with reason + violation line (I3). |