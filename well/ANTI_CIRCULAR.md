# ANTI_CIRCULAR — mechanical test for circular reasons.
> Hard Law + the directive's anti-circular move. This file pins the exact substitution
> and the verdict rules.

## Test
1. Take any because-clause B.
2. Substitute B with the string **"because it is what it is"**.
3. If the *meaning* of the sentence does not change — the original B is **CIRCULAR** and
   the move fails T-NONCIRC. Demote or kill.

## Verdict rules
- If the substitution *loses* information (the original said something the substitute did
  not), the original is admissible; record what was lost in `well/LB-NN.md`.
- If the substitution is information-preserving, the original is circular. Illegal kind
  is at minimum **X-CIRCULAR**; if the because was the only support for the claim, the
  claim itself is demoted to UNPAID-WHY (logged in `well/UNPAID_WHY.md`).
- The test is run on every candidate reason in W01+ before it enters the because-ledger.

## Worked example (training)
- Original B (LB01 fake, killed): *"We only admit squares the K-line proves, because the
  grid is the K-line grid, and that is how the grid works."*
- Substitution: *"We only admit squares the K-line proves, because it is what it is."*
- Verdict: information-preserving → CIRCULAR. Killed. ✅ (matches the recorded verdict
  in `well/LB01.md`.)

## Worked example (training, legal)
- Original B (LB01 legal): *"Only WF(K) squares enter the grid, because Q0001 makes the
  rule conjunctive on four independent predicates (A ≠ ∅, D ∈ Axis, W ∈ Wall, G = PASS);
  removing any one changes which squares the grid will store."*
- Substitution: *"Only WF(K) squares enter the grid, because it is what it is."*
- Verdict: substitution loses the conjunction and the four predicates → legal reason. ✅

## Why this test alone is not enough
T-NONCIRC catches circular reasons; T-CONTRAST catches missing rivals; T-COLLAPSE catches
un-named downstream losses; T-ANCHOR catches un-cited moves; T-COST catches moves that
silently permit what they forbid. All five must pass; this file is one of the five.