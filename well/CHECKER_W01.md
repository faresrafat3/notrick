# CHECKER_W01 — INSTEAD-OF (Op 22) and IF-FALSE (Op 23) audit pass.
> Both checks applied across all 12 rows of BECAUSE.md. Findings logged; replacements made
> inline in BECAUSE.md where needed.

## Op 22 — INSTEAD-OF cannot be strawman
Walked each INSTEAD-OF and asked: would a smart defender of the rival pick this exact
phrasing?

| LB  | strawman? | action taken |
|-----|-----------|--------------|
| LB01 | YES (was) → fixed in Op 17 (Curator-as-coach-checker rival) | strengthened |
| LB02 | no — post-hoc retirement log is the real rival | keep |
| LB03 | no — "regular retirements" is the real rival | keep |
| LB04 | YES (was) — see KILL_EDIT.md | demoted |
| LB05 | no — "specialization is good" is the real rival | keep |
| LB06 | no — R7-alone is the real rival | keep |
| LB07 | YES (was) — see KILL_EDIT.md | demoted |
| LB08 | no — "verification should be cheap, always" is the real rival | keep |
| LB09 | YES (was) — see KILL_EDIT.md | demoted |
| LB10 | no — "forging when needed" is the real rival | keep |
| LB11 | no — X0001 / F0002 hallucination is the real rival | keep |
| LB12 | no — F0010 / F0019 conflation is the real rival | keep |

**Net**: 4 strawman rivals fixed (LB01 strengthened; LB04 / LB07 / LB09 demoted). The
remaining 8 INSTEAD-OFs are non-strawman.

## Op 23 — IF-FALSE cannot say "the theory would be weaker"
Walked each IF-FALSE and asked: does the collapse name *records / claims / K-lines that fall*,
or is it a generic-strength claim?

| LB  | named-record collapse? | verdict |
|-----|----------------------|---------|
| LB01 | YES — LB05 / LB09 unfalsifiable | keep |
| LB02 | YES — LB09 unfalsifiable; Factorio pattern enabled | keep |
| LB03 | YES — V never advances (VERSION.md / rcvm.md L160) | keep |
| LB04 | YES — X0003 fires (CONTRA.md L6) | keep |
| LB05 | YES — LB09 / R7 / LB10 collapse | keep |
| LB06 | YES — R7 collapses; LB05 / LB09 lose anchor | keep |
| LB07 | YES — R6 structurally violated; Factorio wall | keep |
| LB08 | YES — H3 quorum never fills; swarm rate-limits and dies | keep |
| LB09 | partial — collapsed back to LB05's reason (restated, not added) | reopen fixed in KILL_EDIT.md |
| LB10 | YES — Maker never retires; C0006 decorative | keep |
| LB11 | YES — F0018 fires | keep |
| LB12 | YES — F0019 fires | keep |

**Net**: 1 IF-FALSE was tautological (LB09 first pass, restated LB05's reason). Fixed by
the KILL_EDIT reopen. All 12 IF-FALSEs now name records or named hallucinations that fire.