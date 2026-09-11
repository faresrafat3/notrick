# PROTOCOLS (D6-Q02)

Six protocols the theory ships. Each: steps, illegal shortcuts, binary pass/fail, failure mode.

## P1 — HIDDEN-ASSUMPTION SURFACING
**Steps:** (1) pick one load-bearing sentence in an artifact; (2) list every condition that must hold for it to be true (environment, criterion scope, exposure class); (3) for each condition, name the file/line that records it — or write UNRECORDED; (4) UNRECORDED conditions become gap-strings on the sentence's claim (UNVERIFIED(gap=...)) or get bound on the spot.
**Illegal shortcuts:** assuming the condition is "obvious"; binding a condition to a paraphrase instead of a path+fragment; surfacing assumptions only for rivals' claims.
**Pass/fail:** PASS = every condition recorded or converted to a gap-string. FAIL = any condition left implicit.
**Failure mode:** assumption inflation — surfacing trivialities to look thorough; kill by scoring each surfaced condition against "would a verifier re-run trip on this?" (SCORING depth axis).

## P2 — SWOLLEN-CONCEPT COMPRESSION
**Steps:** (1) pick a concept carrying >1 job (e.g., "gate" meant criterion+authority+ceremony); (2) split it into per-job parts in the seven-rule vocabulary; (3) re-derive each part's behavior from rules alone; (4) the original word survives only if exactly one part needs it.
**Illegal shortcuts:** renaming instead of splitting; keeping the original word for "historical continuity"; splitting without re-derivation.
**Pass/fail:** PASS = each job assigned to a rule-grounded part, no orphan word. FAIL = any job with only a name.
**Failure mode:** vocabulary churn — splits that rename everything; kill by SUBSTITUTION test (bland rename must preserve behavior).

## P3 — LEGAL-MOVE GENERATION
**Steps:** (1) take a state (record/ledger/mechanism status); (2) run G1-G8 applicable generators; (3) filter candidates through X1-X12 and the seven rules; (4) score survivors (depth/surprise/debt/coherence); (5) execute or record the best-scoring legal move with its anchors.
**Illegal shortcuts:** generating moves for states no rule cares about; keeping a candidate that violates any X; scoring before filtering.
**Pass/fail:** PASS = ≥1 legal move executed/recorded with anchors, or a recorded zero-legal-moves finding (that is a real result). FAIL = illegal move shipped or empty output.
**Failure mode:** generator theater — invoking generators on material already covered; kill by TRIP-LOOP (near-duplicate output = FAIL).

## P4 — BREAK/FALSIFY
**Steps:** (1) pick one rule or commitment (NC1-NC5, B1-B4); (2) construct the smallest real workspace instance that exercises its defeat-observation; (3) run the instance against the rule's teeth-test; (4) if the rule survives, record the instance as a passed break attempt; if it breaks, open a debt + hatch repair.
**Illegal shortcuts:** testing the rule on invented data (violates L6); testing a softened version of the rule; declaring survival without running the teeth-test.
**Pass/fail:** PASS = instance built AND teeth-test run with recorded outcome. FAIL = no instance or no outcome.
**Failure mode:** break-theater — choosing instances known to pass; kill by requiring the instance to be drawn from real files (paths recorded).

## P5 — GRAFT-TEST
**Steps:** (1) on encountering an external/foreign distinction, state it in local vocabulary; (2) ask: does it convert a distinction into a legal/illegal operation, or only add a word? (3) only operation-converting grafts may apply — and the graft budget (1 per era, spent in D5) must be open; (4) if only vocabulary: record as banned diction candidate.
**Illegal shortcuts:** importing the foreign term untranslated; applying a graft without checking the budget; converting a word and calling it an operation.
**Pass/fail:** PASS = decision recorded with the operation or the ban. FAIL = silent adoption.
**Failure mode:** silent adoption of fashionable vocabulary (TRIP-CITE family); kill by SUBSTITUTION.

## P6 — ASSEMBLE-INCREMENT
**Steps:** (1) take the current canon candidate; (2) add exactly one increment (rule amendment, protocol run result, break case); (3) re-run the density check: is the canon shorter-or-equal and stricter-or-equal? (4) if longer and not stricter, revert the increment; if stricter, commit with its anchor.
**Illegal shortcuts:** adding modules without increments; reverting silently without recording the revert; committing an increment whose anchor is a paraphrase.
**Pass/fail:** PASS = increment committed or reverted, both recorded. FAIL = untested growth.
**Failure mode:** canon bloat (L19); kill by the density check itself.