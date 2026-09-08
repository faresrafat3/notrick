# DERIVED OBJECTS (D4-Q03)

Construction steps from primitives (RECORD, TEST-TEXT, TRACE, MARK, COST, COUNT). Steps, not labels.

## D1 — CLAIM
1. Take one RECORD.
2. Assert: its MARK is unset (not UNVERIFIED, not passed).
3. Assert: TEST-TEXT field is non-empty AND names ≥1 fail condition (BK3).
4. If either assertion fails, the file is not a CLAIM — it is scratch.
Construction result: a RECORD passing both assertions is a CLAIM (the only thing the object ever judges).

## D2 — PASS
1. Take one CLAIM.
2. Run its TEST-TEXT exactly once, in-turn.
3. Paste the raw command + output into TRACE (no retyped values — P14 wall).
4. If the criterion's fail condition did not fire: set state = PASS; commit COST spent.
5. If any step 2-4 was skipped, the result is NOT PASS — it is UNVERIFIED (see D3).
Result: PASS = CLAIM + complete TRACE + fail-condition-not-fired. PASS is a derived state, never an assertion.

## D3 — UNVERIFIED (the MARK)
1. Detect any of: missing TEST-TEXT, no fail condition named, TRACE absent, values retyped, criterion edited post-hoc.
2. Set MARK = UNVERIFIED on the RECORD.
3. Copy the MARK to every descendant RECORD that cites this one as ancestor (BK5 propagation).
4. Name the gap that would close it (the missing step), one line, in the flag field.
Result: a terminal-but-revivable state; revocation requires the named gap, nothing else.

## D4 — LEDGER (the append-only chain)
1. Start with zero RECORDs.
2. Each new RECORD cites its ancestor by path:line when it amends, resurrects, or supersedes one.
3. MARK propagation (D3 step 3) applies transitively along citation edges.
4. No entry is ever edited after judgment; corrections are new RECORDs (append-only, N5).
Result: a DAG of RECORDs whose MARK states are computable from the edges — this is what "indexable" actually means here (replacing the fictional Curator, D0010).

## D5 — CATCH
1. Take a mechanism M (e.g., the P14 wall, the BK3 fail-condition rule).
2. Find a RECORD that M would have refused/flagged had M been applied.
3. COUNT += 1 for M at that RECORD.
4. A CATCH is counted only when the claim was catchable (exposure, P6/P-COUNT) — a mechanism never exposed cannot bank a catch.
Result: CATCH is the only success metric the doctrine banks (COSTUME_ENGINE: engines are what fire); vanity is uncountable by construction.