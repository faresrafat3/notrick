# QUOTES — Q01-Q12 from bore/HOLE.md only, no gloss (D1-Q07)

Source for all: bore/HOLE.md (= proposals/pr-006-receipt-attacks-and-math.md lines 12-18). Locators are HOLE-line + pr-006 line.

- Q01 | L1 (p:12) | `## 2. Sampler math (honest bounds — single sample is weak vs sparse forgery)`
- Q02 | L3 (p:14) | `- Forger fakes `k` of `N` lines, verifier samples `s=1`: `P(catch) = k/N`.`
- Q03 | L4 (p:15) | `- `N=100, k=1, t=5 tasks`: `P(evade) = (1-1/100)^5 ≈ 0.951` — near-useless alone.`
- Q04 | L4 (p:15) | `Stated plainly so nobody oversells it.`
- Q05 | L5 (p:16) | `- `N=100, k=5, s=3`: `P(catch) = 1 - C(95,3)/C(100,3) ≈ 0.14` per task; over 5 tasks `≈ 0.52`.`
- Q06 | L6 (p:17) | `- Conclusion recorded against my own proposal: sampling alone only deters WHOLESALE fabrication (`k` large) and lazy lies — never surgical single-line forgery.`
- Q07 | L6 (p:17) | `Strength comes from the组合: cheap hash (binds the whole output against post-hoc edits) + danger escalation + repetition + honor-cost visibility.`
- Q08 | L7 (p:18) | `- Escalation schedule (candidate): base `s=1`; on danger-signal `s=3`; on any `MISMATCH` next task is `s=full`.`
- Q09 | L7 (p:18) | `Danger = `budget-echo` mismatch (`mics/mic-07-budget-counter.md:8`) OR `collision-count=3` (`mics/mic-31-axis-tagger.md:17`) OR every 3rd claim.`
- Q10 | L7 (p:18) | `Numbers rejectable by Owner.`
- Q11 | L1 (p:12) | `honest bounds — single sample is weak vs sparse forgery` (heading tail; restates Q03's confession in title position)
- Q12 | L6 (p:17) | `lazy lies` (the only named enemy class besides WHOLESALE fabrication; pairs with Q06)

Notes: L2 (p:13) is an empty line, not quoted. Q11/Q12 are clause-level re-cuts to reach 12 without adding text. No gloss added; labels only.
