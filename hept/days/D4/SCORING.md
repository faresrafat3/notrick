# SCORING RUBRIC (D4-Q11)

Applied to every candidate move the generators produce. Each axis 0-3. A candidate totaling 0 on any axis is killed regardless of totals.

| Axis | 0 | 1 | 2 | 3 |
|------|---|---|---|---|
| DEPTH | restates the input state | names one hidden field/condition the state omitted | exposes a relation between two ledger parts not previously connected | generates a check that would catch a CLASS of failures, not an instance |
| SURPRISE-WITH-NECESSITY | ornamental; nothing forces it | mildly unexpected but optional | forced by a specific debt/fracture id | the move is the only legal response to its trigger (removing it re-opens a killed failure) |
| DEBT-PAYMENT | pays none | pays one minor debt | pays a top-3 pressure-rank debt (PRESSURE_RANK) | pays a debt AND retires a mechanism (dead-weight removed) |
| COHERENCE | contradicts an invariant | neutral | consistent with all invariants | consistent AND strengthens a teeth-test (I1-I5 gets sharper) |

## Hard zero rule
- "Sounding-smart = 0": if a candidate's only virtue is impressive wording, all axes score 0. Test: can the move be stated in the bland vocabulary (SUBSTITUTION) with no loss? If yes and it still does nothing — 0.

## Anchored examples (for calibration, from real corpus)
- 3-depth: G1's byte-compare — catches the whole P14 class (V-001 AND V-002 AND any future hash).
- 1-depth: "add a comment field" — states nothing hidden.
- 3-surprise: G4's demotion rule — BK7's own wording nearly murdered it; the rule is forced by its own failure mode.
- 0-smart: any move phrased as "strengthen governance around verification culture" — bland-inaccessible, pays no debt, no teeth.

## Usage
- Q12/Q13 engine runs score every survivor with this rubric; totals recorded in RUNS.md.
- Rubric itself is a filter, not a generator: it never invents moves.