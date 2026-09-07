# DEBT_PAYMENT — one-line purpose: what paying top-7 debts looks like; specifications, no payments (ops 0220-0226).

## D0001 (rank 1) — axis vocabulary, 6 lines
1. Produce a file listing the named axes: one axis per line, each with a one-sentence definition.
2. Every axis name must already occur in the workspace or be rejected.
3. Each axis gets an example attempt tag it would accept and one it would reject.
4. The list is pinned into a template (MIC-31 or rcvm) so D ∈ Axis is checkable.
5. Collision-count (3 same tags) must be computable from the list, not vibes.
6. Payment done when an attempt tag can be rejected as off-list without debate.

## D0002 (rank 2) — wall ledger, 6 lines
1. Define the ledger schema: wall-id, named constraint, owner, first-stuck attempt, axis tried.
2. Define the entry format in one template file; every K-line slot W cites a wall-id.
3. First entries come from real stuck attempts only — no retroactive walls.
4. Wire the Prime trigger: a wall broken on a new axis is a ledger event, not a claim.
5. Add the ledger path to READ_WINDOW so future ops may cite it.
6. Payment done when a wall-break claim can be checked against a ledger row.

## D0005 (rank 3) — price mechanism, 6 lines
1. Say who the payer and payee are for a result (fuel? attention? fate?).
2. Say what a price unit is — a number a result record actually carries.
3. Say how a result's price is computed from its record, deterministically.
4. Say what paying does — which allocation changes when the price moves.
5. Resolve X0003: if the Owner decides fate, prices price something else (deferral, attention, budget).
6. Payment done when "results are the prices" is a sentence with a checkable noun.

## D0044 (rank 4) — version reconciliation, 6 lines
1. Determine which record is authoritative: VERSION.md (on-disk, pinned) or CONTEXT decision log.
2. If VERSION.md wins, either re-edit it via an approved-docs moment or downgrade CONTEXT's claim to intent.
3. If CONTEXT wins, edit VERSION.md under the same ruling and re-pin INTEGRITY.
4. Log whichever action with its forcing cause in CONTEXT's decision log.
5. Zero gate arithmetic is trustworthy until this is done — state this in STATE.
6. Payment done when the two files no longer disagree and INTEGRITY pins match.

## D0045 (rank 5) — fate authority, 6 lines
1. Choose: expand/refine/retire is a price effect (results decide) or a person's act (Owner decides).
2. If Owner decides, amend the price story (D0005) so prices govern something the Owner does not.
3. If results decide, specify the Owner's role as auditor of the accounting, not author of fate.
4. Either way, write the outcome into decision-review D-03 and the batch file, cited.
5. The choice belongs to the Owner (R8); the mill may only frame it, never make it.
6. Payment done when no source can be read two ways on who decides fate.

## D0006 (rank 6) — WF derivation, 6 lines
1. List the clauses of R5, R6, R10 from RULES.md verbatim.
2. List the clauses of the WF predicate from rcvm.md verbatim.
3. Pair each WF clause to the rule clause it implements; mark unpaired clauses.
4. Run the pairing past a checker not involved in the pairing (op 0231 rule).
5. If unpaired clauses remain, either extend the rules or narrow WF honestly.
6. Payment done when an independent reader can verify the equivalence from the file alone.

## D0009 (rank 7) — cheat-class penalties, 6 lines
1. Enumerate the cheat classes the sources name (fabrication, silent repair, unproven gate, stolen win).
2. Against each, name the detection observation and its cost of running.
3. Price the penalty per class in the same unit as the expected gain (fuel, budget, fate).
4. Test the deterrence inequality p × penalty > expected gain per class, with numbers.
5. If any class is unpriced, write UNPRICED in the ledger — never a blank claim.
6. Payment done when every class has an inequality with real numbers or an honest UNPRICED row.