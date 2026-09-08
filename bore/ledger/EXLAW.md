# EXLAW — example-law: what the worked example teaches if the surrounding thesis is ignored (D2-Q03)

Source: bore/HOLE.md. Two worked examples inside the hole:

## EX-1 (HOLE L4): `N=100, k=1, t=5 tasks`: `P(evade) = (1-1/100)^5 ≈ 0.951`

Surrounding thesis to ignore: "sampling is honest bounds; strength comes from combination".

Law the example alone teaches: when the fraud is one line among a hundred, five rounds of single-draw checking let the fraud escape ~95% of the time — the check mostly checks what is already honest, and a fisherman with a leaky net is told the net is near-useless, not that he needs better bait. The example is a self-demonstration of the check's ignorability for small lies.

## EX-2 (HOLE L5): `N=100, k=5, s=3`: `P(catch) = 1 - C(95,3)/C(100,3) ≈ 0.14` per task; over 5 tasks `≈ 0.52`

Surrounding thesis to ignore: the escalation schedule is candidate-only.

Law the example alone teaches: raising the draw from 1 to 3 lines against a 5-line fraud still fails 86% of the time per task; only repetition across 5 tasks lifts detection past half. The example's lesson is that NOTHING inside one task catches a modest fraud, and that the "≈0.52" is the only number in the hole that reaches coin-flip strength — and it requires 5 tasks of repetition, not escalation. s=3 alone is ~the same failure as s=1; the improvement comes from t, not from s.

## Contrast worth keeping (split fuel)

Derived per-task bounds using only the hole's own formulas (L3 `P(catch)=k/N`; L5 style), k=5, N=100:
- s=1 per task: P(catch)=5/100=0.05 → evade 0.95 (derived from L3 formula)
- s=3 per task: P(catch)=0.14 (L5 verbatim) → evade 0.86
- over 5 tasks, s=1: evade (0.95)^5 ≈ 0.77 → catch ≈ 0.23 (L4-equation style, derived)
- over 5 tasks, s=3: catch ≈ 0.52 (L5 verbatim)

Reading: s-tripling lifts per-task catch ~3x (0.05→0.14) but a failure remains the common case (86% miss in a single task). Only repetition (t=5) crosses coin-flip — and it crosses with BOTH s=1 (0.23) and s=3 (0.52), so the compounding agent is t, not s. The official reading sells "combination + escalation"; the examples separately cash neither — escalation alone stays weak, repetition is the only number in the hole that reaches ~half.