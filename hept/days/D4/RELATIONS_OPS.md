# RELATIONS AND OPERATIONS (D4-Q04)

Relations between primitives/derived objects; operations on them. Each with fails-when (the condition that breaks it).

## Relations
| ID | Relation | Definition | Fails-when |
|----|----------|------------|------------|
| R1 | RECORD **judges** CLAIM | a TEST-TEXT run against a CLAIM produces PASS or MARK | fails-when the criterion was edited after seeing the attempt (self-owned — X1) |
| R2 | TRACE **proves** RECORD-value | every value in a RECORD traces to pasted in-turn output | fails-when any value has no trace line (P14 class) |
| R3 | MARK **inherits-down** DESCENDANT | an UNVERIFIED ancestor marks all citing descendants | fails-when the descendant's gap is closed WITHOUT citing the ancestor (laundering) |
| R4 | COST **bounds** check | a check may not run without its pre-committed COST being payable | fails-when COST is set after the check runs (post-hoc pricing) |
| R5 | COUNT **grounds** judgment | demotion/scoring uses only COUNT (exposures) and CATCHES | fails-when age/elegance/design-intent is used as denominator (L9 illegal reasons) |
| R6 | ANCESTOR **constrains** AMENDMENT | a correcting RECORD must cite what it corrects | fails-when a silent rewrite appears without citation (V-002 class) |

## Operations
| ID | Operation | Definition | Fails-when |
|----|-----------|------------|------------|
| O1 | FREEZE | write TEST-TEXT + would-fail-if into the RECORD header before running | fails-when a conceivable output set has no FAIL member (broad criterion — BK3 kill attempt) |
| O2 | RUN | execute the criterion's command once, in-turn | fails-when run twice with different outputs and only the favorable one pasted (cherry-picking) |
| O3 | PASTE | append raw command+output to TRACE | fails-when any value in the RECORD lacks a trace line |
| O4 | MARK | set UNVERIFIED + name the gap + propagate to descendants | fails-when the gap is unnamed (a flag with no closure path is a shame record, banned by BK5's contrast) |
| O5 | PRICE | commit COST before the check; record spent COST after | fails-when COST=∞ or COST=0 (unbounded or free — both observed; BK4) |
| O6 | DEMOTE | when COUNT≥3 and CATCHES=0, move the mechanism to GRAVEYARD with its forcing RECORD | fails-when demotion happens on COUNT<3 (murders seeds — BK7 original wording) |

## Note
- R/O set is closed against the D3 constraint list: A1-A5 are constructible from O1-O6; X1-X5 are exactly the fails-when conditions.