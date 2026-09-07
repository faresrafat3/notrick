# SKELETON — one-line purpose: index of the formal skeleton: primitives, derived, relations, ops, invariants, forbidden, schema (op 0467).
| component | file | contents |
|---|---|---|
| primitives | mill/PRIMITIVES.md | P1-P8 (frozen); probe + break-tests in PRIMITIVES_PROBE.md |
| derived objects | mill/DERIVED.md | D1 K-LINE · D2 TRIAL_BALANCE · D3 PERIOD · D4 ACCOUNT (view) · D5 PINNED |
| relations | mill/RELATIONS.md | R1-R6 |
| operations | mill/OPS.md | O1-O6 with input/output/fails-when |
| invariants | mill/INVARIANTS.md | I1-I7 |
| forbidden | mill/FORBIDDEN.md | X1-X10 |
| state schema | mill/STATE_SCHEMA.md | 6 fields per row |
| examples | mill/EX1.md (fits), mill/EX2.md (honest snag → D0052) | real fragments |
| claim map | mill/CLAIM_MAP.md | 9 canonical claims mapped; none unmapped |
This is a machine: state = set of 6-field rows; ops O1-O6 = lawful state transitions; invariants = admitted states; forbidden = rejected transitions.