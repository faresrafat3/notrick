# D4-TURN-2 — silence S5 drill: the cost of s=full

Source: bore/HOLE.md only. L7 schedules "on any MISMATCH next task is s=full" but never prices full verification (D2-Q05-S5). Compute what s=full costs and does at the hole's own numbers.

## What s=full means in the machine

- The cheap schedule runs s=1 normally (L7 base s=1): 1 line checked per task.
- s=full = check every line: s=N. The hole's own formula P(catch) at s=N: 1 − C(N−k,N)/C(N,N) = 1 − 0 = 1 — full verification catches with certainty (trivially, since it re-runs all N lines). It is the only s at which the hole's probability becomes 1.
- Cost ratio at the hole's numbers: full = N× the cheap draw. The hole's worked N is 100 (L4/L5), so s=full ≈ 100× the s=1 cost per task. The fragment's own claimed cheapness (L6 "cheap hash") is erased the moment MISMATCH fires — the schedule's trigger converts the near-zero-cost scheme into a 100× re-run.

## What the silence hid

1. UNPRICED NUKE: the only s at which the hole's own math gives certainty is also the only unpriced level (D2-Q04: s=full has no formula meaning in L3's k/N). The fragment schedules the thing it cannot price as its nuclear option — the "ultimate deterrent" (GRAVEYARD G6) is a 100× cost with no arithmetic.
2. DANGER-AS-BOOBY-TRAP: the trigger order is "on danger-signal s=3; on any MISMATCH next task is s=full" (L7). A MISMATCH only occurs when a check FAILS — but with the D4-T1 negative-clearance theorem, a clean miss is the COMMON case at small k (0.95 evade, L4). So the sequence's nuclear option fires precisely when checking is most likely to produce noise, not when fraud is proven. The danger-signal ladder escalates toward a 100× spend on the evidence-class the fragment itself proved weak (small k, L6 never-surgical).
3. NO FALSIFIER: the schedule never says what s=full DOES on a next clean task — by the negative-clearance theorem, a full check that comes back clean DOES clear the output (all N lines re-runed, P(catch)=1 for any k>0... only if k>0; a full check is the one s at which the miss-concentration argument dies). So the fragment contains the ONE move that would actually work (s=N clears everything) and it is only legal AFTER a MISMATCH — i.e. after the cheap regime has already failed, at 100× cost, as punishment rather than as the primary protocol.

## Carried to CORE

The hole's own arithmetic forces: (a) certainty only exists at s=N; (b) the schedule reserves the only working s as a punishment trigger; (c) the "cheap" claim (L6) is regime-scoped to the failing s=1 — the moment proof matters, the fragment's own prices make the scheme 100× and post-hoc. This is the third silence now drilled (S1 → TURN-1, S5 → TURN-2); remaining unpriced silences (S2 order-enforcement, S3 danger-fake, S4 volume-blind, S6 visibility-object) are logged as unpaid for D6. still_in_hole=YES.