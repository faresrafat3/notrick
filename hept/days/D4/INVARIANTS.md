# INVARIANTS AND FORBIDDEN MOVES (D4-Q05)

Invariants: each has a teeth-test — a concrete check that would FIRE if violated. No tautologies.

## Invariants
| ID | Invariant | Teeth-test (how it can be caught violating) |
|----|-----------|---------------------------------------------|
| I1 | Every PASS in the ledger has a complete TRACE with zero retyped values. | Pick any PASS at random; re-run its TRACE command; output must match the paste byte-for-byte. Mismatch = fabrication. |
| I2 | Every criterion in the ledger predates the attempt it judged. | Header timestamp of TEST-TEXT must be ≤ first attempt timestamp; an edited-after file carries two timestamps — caught by diff. |
| I3 | MARK=UNVERIFIED is absent from no descendant of an UNVERIFIED ancestor unless the ancestor's named gap is closed in the descendant's own TRACE. | Walk citation edges from any UNVERIFIED node; a clean descendant with an unclean ancestor = laundering, caught by edge walk. |
| I4 | No RECORD is edited after judgment; corrections are new RECORDs citing ancestors. | Hash the file; a judged RECORD whose hash changes after its MARK was set = silent rewrite (V-002 class). |
| I5 | Every mechanism's GRAVEYARD/active status is a function of (COUNT, CATCHES) only. | Inspect any demotion entry: if the stated reason is not a COUNT/CATCHES pair, the demotion is illegal (L9). |

## Forbidden moves X1-X8
| ID | Forbidden move | Anchored failure it prevents |
|----|----------------|------------------------------|
| X1 | Running a criterion you selected after seeing the attempt | self-owned gate (F12, RULES.md:25) |
| X2 | Typing a plausible value where only command output is lawful | V-001/V-002 (P14) |
| X3 | Retro-legalizing a write with a logged approval after the fact | DS8, HATCH 2 |
| X4 | Citing a plan/queue entry as if it were a result | D0005/FR02 class |
| X5 | Editing a judged RECORD in place | V-002 (silent header overwrite) |
| X6 | Passing a claim whose criterion has no fail condition | BK3 broad-criterion hole |
| X7 | Charging zero cost for a check (unpriced verification) | BK4 both failure modes |
| X8 | Demoting or promoting a mechanism on any ground except COUNT/CATCHES | BK7, L9 illegal reasons |

## Note
- I1-I5 are checkable by a stranger with only the ledger (supports D4-Q14 rerun instructions). X1-X8 are the machine's illegal-move list for the generator (D4-Q10).