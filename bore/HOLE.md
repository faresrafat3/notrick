# HOLE — exact copy of the locked site text
> source: proposals/pr-006-receipt-attacks-and-math.md lines 12-18, copied verbatim (Q05)

## 2. Sampler math (honest bounds — single sample is weak vs sparse forgery)

- Forger fakes `k` of `N` lines, verifier samples `s=1`: `P(catch) = k/N`.
- `N=100, k=1, t=5 tasks`: `P(evade) = (1-1/100)^5 ≈ 0.951` — near-useless alone. Stated plainly so nobody oversells it.
- `N=100, k=5, s=3`: `P(catch) = 1 - C(95,3)/C(100,3) ≈ 0.14` per task; over 5 tasks `≈ 0.52`.
- Conclusion recorded against my own proposal: sampling alone only deters WHOLESALE fabrication (`k` large) and lazy lies — never surgical single-line forgery. Strength comes from the组合: cheap hash (binds the whole output against post-hoc edits) + danger escalation + repetition + honor-cost visibility.
- Escalation schedule (candidate): base `s=1`; on danger-signal `s=3`; on any `MISMATCH` next task is `s=full`. Danger = `budget-echo` mismatch (`mics/mic-07-budget-counter.md:8`) OR `collision-count=3` (`mics/mic-31-axis-tagger.md:17`) OR every 3rd claim. Numbers rejectable by Owner.
