# D4-TURN-1 — silence-drill: S1 probed by the machine's own arithmetic

Source: bore/HOLE.md + D4 machine (Q05). D2-Q05-S1 asked: "what does a clean draw prove about the other N−s lines?" The hole never says. Probe with the hole's OWN formulas.

## The probe (hole-only arithmetic)

- Hole's model: forger fakes `k` of `N` lines (L3); verifier samples s lines; miss-probability is the complement of the hole's own prices: P(clean draw) = (N−k)/N (from P(catch)=k/N, L3).
- Given a clean draw, ALL k faked lines (k≥1) are necessarily among the N−s un-sampled lines — the draw that missed has partitioned the fraud: zero fakes in the checked s, ALL fakes in the unchecked N−s.
- Per-line fake probability in the unchecked region: k/(N−s). At s=1: k/(N−1). Compare to the unconditional per-line rate k/N (which is what the hole's one-draw price assumes the verifier faces): k/(N−1) > k/N for every N>1. **[REVERTED to expectation by D5-Q04 audit: this rate assumes UNIFORM fake placement; HOLE never states placement (forger is adversarial). Kept: the placement-free localization — a miss proves all k fakes are in the N−s unchecked lines. The "suspicion rises" consequence is an expectation under an assumed placement, not a model fact.]**
- Therefore: a clean single draw RAISES the per-line suspicion of every remaining line (k/(N−1) vs k/N) — the check does not clear the remainder; it concentrates all fraud there.

## What the machine forces (the silence was not neutral)

1. The hole's verification, when it misses (the common case: ~95% at k=1, L4), converts "output has k fakes somewhere in N" into "output has k fakes entirely in the un-checked N−1". The only thing a clean draw PROVES about the rest is that the rest contains the fraud — every faked line is provably in the part you did not look at.
2. So the "verification" the fragment prices is not weak-with-unknown-consequence (the polite reading of "near-useless alone", L4) — it is POSITIVELY anti-clearance: a miss localizes the enemy entirely to the blind spot and hands the verifier zero exculpatory information. The hole never states this; S1 was a real silence, hiding a worse truth than "we don't know".
3. This makes the boundary claim (L6 "never surgical single-line forgery") not merely true but trivially forced: a one-line fake, when missed, is PROVABLY in the N−1 unchecked lines; the sampler can never touch it without increasing s. The negative boundary is a theorem of the machine, not a designed limit — the hole presented its most honest sentence as a discovered bound when it is a property of the draw it defined.
4. Escalation (L7 s=1→s=3) now has a sharp reading: at s=3 the miss localizes fraud to N−3 lines with per-line rate k/(N−3); every escalation shrinks the blind spot but also (by the same math) densifies suspicion in the new blind spot. Escalation is race-to-blind-spot, not recovery — matching D4-Q08 kills (escalation inert), now with a mechanism, not just a run.

## Cost carried to CORE

This turn adds one load-bearing sentence the hole never wrote: any use of this fragment to claim "a cheap pass-check gives confidence in the output" is false BY THE FRAGMENT'S OWN PRICES — a miss gives negative clearance. Citable with locators (L3 formula → k/(N−s) derivation → L4/L6 consequences). still_in_hole=YES.