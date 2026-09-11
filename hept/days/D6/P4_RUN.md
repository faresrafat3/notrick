# P4 RUN — BREAK/FALSIFY (D6-Q05)

**Target commitment:** NC3 — "Counted retirement (BK7: tries≥3, catches=0 → retire) converges on the right mechanisms" (NERVOUS.md). Defeat-observation: a retired mechanism whose catch class later appears via another route at rate >0 across ≥5 occurrences.

**Rule under test:** RULE 6 (counted mechanism retirement) + X10 (pre-declared exposure class).

## Step 1 — Smallest real instance
The corpus contains one mechanism with real exposure: the P14 wall ("no value without paste"). Its exposure record:
- V-001 (fabricated hash): exposed, caught (violations.md, QUOTES Q0001; EX1).
- V-002 (fabricated hash): exposed, caught (same anchor set).
- COUNT=2, CATCHES=2. Under X10: its exposure class was never pre-declared in a header (the mechanism predates the class rule) — this is the real instance: **the corpus's only proven mechanism is itself non-compliant with the retirement rule's bookkeeping.**

## Step 2 — Teeth-test run
Apply RULE 6's counterfactual: had BK7's ORIGINAL wording (any 3 exposures, no class, catches=0) governed a mechanism with 3 exposures outside its class, it would be retired despite being the doctrine's only proven catcher. Then apply the amended rule (BK7 + X10 + B4 hatch): the same gaming requires mis-declaring the class, which is I1-family fabrication.
- Test result: **RULE SURVIVES** — the amendment closes the gaming route; the original wording was correctly killed (D3 REOPEN BK7).
- Side finding: the P14 wall's exposure class must be retro-declared ("fabricated values in recorded artifacts") before its next exposure counts — a legal repair within Rule 6 (declaration, not retroactive counting).

## Step 3 — Outcome
1. NC3 survives this instance (1 real instance run; 5-occurrence defeat-observation remains untested — no retired mechanisms exist yet, so NC3 is unfalsifiable-so-far, recorded as such).
2. New repair obligation: retro-declare exposure class for the P14 wall; recorded in the class ledger row below.
3. The instance is real (anchors: violations.md, D2 DEBTS D0009/D0019, REOPEN BK7, EXPERT X10) — not hypothetical; Q06's delete-and-redo condition does not fire.

| Mechanism | Exposure class (declared) | COUNT | CATCHES | Status |
|-----------|---------------------------|-------|---------|--------|
| P14 wall (no value without paste) | fabricated values in recorded artifacts | 2 | 2 | ACTIVE, class retro-declared this run |
| BK3 fail-condition rule | criteria lacking output-property fail conditions | 1 (DS-P-001 class) | 1 | ACTIVE |
| BK7 retirement rule | mechanisms gaming exposure counts | 1 (this run) | 1 | ACTIVE |

## Honest limit
The teeth-test exercised the rule's gaming route only. The convergence claim (retirement lands on the right mechanisms) has zero testable instances until a mechanism actually retires. NC3 stays nervous.