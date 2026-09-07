# INVARIANTS — one-line purpose: properties that must remain true over the whole state (ops 0437-0442, +2 at 0482).
| ID | invariant |
|---|---|
| I1 | Every ENTRY cites exactly one QUOTE (R1). |
| I2 | No ENTRY is CLOSED without a RECEIPT matching its GATE (R2). |
| I3 | Every WRITE_DOWN cites a reason and a violation line (R6). |
| I4 | No slot value lies outside its CHART (R4). |
| I5 | No silent mutation: state changes make new entries; prior entries stay (append-only). |
| I6 | Every CLOSE records honoring-cost of its VERIFY (D0039 teeth). |
| I7 | No ENTRY closes under a GATE owned by its own claimer (C0025 teeth). |