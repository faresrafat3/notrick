# CHECKER_W02 — no chain may end with "by definition" unless constitution test passes.
> Op 17 directive. Walked every chain in REGRESS.md and asked: does any step end with
> a phrase that *paraphrases as "by definition"* without a constitution citation?

## Test
A step that ends with "by definition" is admissible **only if** the next word names one of
the 6 TRUE STOPS (R3, R6, R7, R8, R9, R10) or names a file-anchored record (Q-ID, line
range) that the records admit.

## Walk-through

| chain | last step | ends with "by definition"? | verdict |
|-------|-----------|----------------------------|---------|
| LB01 | L1-6 (constitution stop) | "the next why dissolves into axioms (R3 antifragility, R9 plurality floor) and changes the object" — names R3, R9 explicitly | PASS |
| LB02 | L2-5 (pragmatic) | "the LB02 reason terminates at the named record collapses (LB09 / V)" — names LB09, V (VERSION.md) | PASS |
| LB03 | L3-5 (constitution) | "the next why is the founding frame (R1..R12)" — names R1..R12 | PASS |
| LB04 | L4-4 (**ARBITRARY**) | "Without a positive form, the fence is silent on success … the records do not supply a positive form — X0003 is open" — names X0003 (open contradiction, NOT a constitution stop) | **FAIL** — this is exactly the cost of an arbitrary stop, not a constitution pass. The chain correctly flags itself as debt. |
| LB05 | L5-5 (constitution) | "further regress enters the constitution (R3 antifragility, R10 foundherence, R9 plurality)" — names R3, R9, R10 | PASS |
| LB06 | L6-5 (constitution) | "enters R1..R12" — names R1..R12 | PASS |
| LB07 | L7-5 (**ARBITRARY**) | "Q0014 / adversarial-audit.md L25; X0004 / CONTRA.md L7" — names X0004 (open contradiction) | **FAIL** — same cost as LB04; correctly self-flagged as debt. |
| LB08 | L8-6 (constitution) | "R6 / RULES.md L25" and "R1..R12" — names R6 and the constitution range | PASS |
| LB09 | L9-4 (**ARBITRARY**) | "D-01 L10-11" — names the *line* but the *operator* is missing | **FAIL** — same cost as LB04, LB07; correctly self-flagged. |
| LB10 | L10-5 (constitution) | "rj-001" and "R1..R12" — names RJ-001 and the constitution range | PASS |
| LB11 | L11-5 (pragmatic) | "D-05 L36-42" — names D-05, the named-record floor | PASS |
| LB12 | L12-5 (constitution) | "R11/R12 / RULES.md L50-58" and "R1..R12" — names R11, R12 and the range | PASS |

## Result
- **9 PASS** (LB01, LB02, LB03, LB05, LB06, LB08, LB10, LB11, LB12).
- **3 FAIL** (LB04, LB07, LB09) — all three are the ARBITRARY stops already flagged as
  UNPAID-WHY entries UW01, UW02, UW03.

The Op-17 check confirms that the W02 chains correctly identify arbitrary stops when
they occur. No chain ends with an unjustified "by definition". The 3 fails are *named*
debt, not silent costume.