# GRAFT DECISION (D5-Q15)

Question: does the theory need ONE recode to absorb an external distinction as legal/illegal operations? (At most one. Vocabulary-only additions are killed.)

## Candidate grafts examined
| Candidate | Source (local) | What it would add | Decision |
|-----------|----------------|-------------------|----------|
| Environment-class declarations (B1) | D5 BREAKS B1 | rule: PASS names its environment class; cross-environment re-run mismatch = fabrication | **GRAFTED** — it converts an attack surface into a legal/illegal operation (legal: same-class run; illegal: class-switched mismatch acceptance). This is the one recode. |
| Stall accounting (EX2) | G8 invoices | a cost-of-stall field per record | KILLED — vocabulary-only; adds a field but no new legal/illegal operation; the stall stays out of scope (MUST_NOT 8) |
| Multi-writer flags | S2 fork | writer-identity fields | KILLED — the multi-writer question is an EXPERIMENT (NC5), not a schema extension; adding writer fields now would be faith, not mechanism |
| "Check-first" as a named principle | SUBSTITUTION5 | a branded term | KILLED — pure vocabulary |
| Rubric-as-generator | D4 SCORING | rubric scores promoted to move legality | KILLED — rubrics score tools, never claims; promoting it would widen scope illegally |

## The recode (executed, exactly one)
**RULE 7 (environment clause):** a PASS record must name the environment class in which its check ran (shell, tool versions, working tree state). A verifier may re-run in a different class; if outputs mismatch across classes, the original PASS is marked UNVERIFIED(gap=environment mismatch).
- Converts: "trusted shell" (an assumption) → "environment declaration + cross-class re-run right" (an operation).
- Illegal now: banking a PASS with no environment class; treating a cross-class mismatch as noise.
- Cost: one field (E) joins the record header. MVT's rule 2 (pastes) gains the cross-class re-run clause.
- This recode is legal under the graft budget: it turns a distinction found in B1 into an operation, not a word.

## Budget spent
1 of 1 recodes used. No further grafts this week — any later addition must be a repair of an existing rule with a forcing run, not a new concept.