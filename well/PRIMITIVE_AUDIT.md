# PRIMITIVE_AUDIT — which mill "primitives" are arbitrary stops renamed as atoms?
> Op 12 directive: attack the project's claim to primitive status. mill/TERMS.md lists 20
> terms as the project's local primitives. Audit each against the W02 regress test:
> does its "why" terminate NECESSARILY, or does it stop ARBITRARILY?

## Terms audited
The 20 terms from `mill/TERMS.md` (T0001..T0020) carry `stable` / `slippery` annotations
already. W02's job is to test whether `stable` is a primitive-stop in disguise, and whether
the `slippery` tags are honest admissions of arbitrary stops.

| T    | term | stability claim | regress test | verdict |
|------|------|-----------------|--------------|---------|
| T0001 | K-line | stable | The 4-tuple is defined by L1-1..L1-3 (LB01 chain); its conjunction is necessary. | **TRUE STOP** (matches S-N2 / R6) |
| T0002 | grid (G) | stable | Sparse matrix; its invariants (write-once, immutable, indexable) are derived from R5/R6/R10. Same stops as LB01. | **TRUE STOP** |
| T0003 | burrow | stable | Defined by LB05/LB06 chains. Hits constitution (S-N1). | **TRUE STOP** |
| T0004 | gate | stable | Hits R6 (S-N2). | **TRUE STOP** |
| T0005 | axis tag | stable | MIC-31 emits it; 3× promote to theme (rcvm.md L43, L124). The "3" is a literal constant in the file. Regress: "why 3?" → ARBITRARY. The number is *chosen*, not derived. | **PRIMITIVE-COSTUME #1**: 3× is an arbitrary stop with a numeric costume. |
| T0006 | obituary | stable | Hits S-N1 (constitution) and Q0005 leg (b). | **TRUE STOP** |
| T0007 | receipts | stable | Hits LB08 chain; same stops. | **TRUE STOP** |
| T0008 | results-as-prices | slippery | Slippery *as labeled*, but UW01 already names the positive form as debt. | **PRIMITIVE-COSTUME #2**: "slippery" is honesty; the underlying stop is arbitrary (LB04 L4-4). |
| T0009 | paper mode | stable | Hits S-N2 / R6 / R10. | **TRUE STOP** |
| T0010 | wall | slippery | Slippery *as labeled*, and adversarial-audit + cross-exam both note the wall ledger format is never instantiated (F0023 — referenced in rcvm.md L55 but no file). | **PRIMITIVE-COSTUME #3**: "slippery" is a confession that the ledger format is the missing wall (matches UW02). |
| T0011 | falsification criterion | stable | Defined in D-NN format (decision-review.md L2-3). Hits LB09's same-task operator debt (UW03). | **PRIMITIVE-COSTUME #4**: stable in form, but its instance for niche law (D-01 L10-11) has the same-task operator gap. |
| T0012 | masterpiece gate | stable | A forge counts only after a real task exercised the charter (ch-003-maker.md L13). Reaches R7. | **TRUE STOP** |
| T0013 | NO NICHE call | stable | Named trigger; reaches LB10 chain → R7 (S-N1). | **TRUE STOP** |
| T0014 | burrow map | stable | Same stops as T0003. | **TRUE STOP** |
| T0015 | Owner-by-right fields | stable | Reaches R8 (S-N1). | **TRUE STOP** |
| T0016 | hash pin | stable | Adversarial-audit.md L122-123 (C0015): hash pins stop accidents, not determined writers. The chain hits R6. | **TRUE STOP** (with caveat — adversarial-audit already names the limit) |
| T0017 | re-pin | stable | T0016 + INTEGRITY.md L14-15 + R8. | **TRUE STOP** |
| T0018 | boot gate | stable | AGENTS.md BOOT GATE / SUPERVISOR-CHIP.md L9. Reaches R9 (plurality floor). | **TRUE STOP** |
| T0019 | quorum | slippery | Slippery *as labeled*; PR-002's tier schedule is unadopted (F0016). Reaches LB09's same-task operator debt. | **PRIMITIVE-COSTUME #5**: "slippery" is honesty; the underlying stop is the same-task operator (UW03). |
| T0020 | honoring-cost | slippery | Slippery *as labeled*; PR-005 candidate, never measured (F0017). Reaches LB08 chain (the cost-of-verification claim is true; the *measurement* is costume). | **PRIMITIVE-COSTUME #6**: stable in concept, costume in measurement. |

## PRIMITIVE-COSTUME list (final)
- **#1 — 3× for theme promotion (T0005)**: a numeric choice named as if it were a constant of nature.
- **#2 — T0008 / results-as-prices**: honest "slippery" tag, but the fence has no positive form (UW01).
- **#3 — T0010 / wall ledger**: "slippery" is a confession that the ledger format is the missing wall (UW02).
- **#4 — T0011 / falsification criterion, niche-law instance**: stable in form, gap in instance (UW03).
- **#5 — T0019 / quorum**: "slippery" is honesty; gap is the same-task operator (UW03 again).
- **#6 — T0020 / honoring-cost**: stable in concept, costume in measurement (LB08's measurement leg is missing).

## Implication
- 14 of 20 terms are TRUE STOPS (S-N1 or S-N2 chain hits).
- 6 of 20 terms are PRIMITIVE-COSTUME: arbitrary stops renamed as atoms. They are debts.
- All 6 PRIMITIVE-COSTUME entries reduce to the 3 UNPAID-WHY entries from W02 — the
  same three gaps show up at the term level, the falsifier level, and the chain level.