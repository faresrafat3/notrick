# RERUN INSTRUCTIONS — RUN11 (D4-Q14)

## What a stranger needs (all local, no session knowledge)
1. Read hept/days/D4/PRIMITIVES.md (the 6 primitives), RELATIONS_OPS.md (R/O + fails-when), INVARIANTS.md (I1-I5, X1-X8), GENERATOR.md (G1-G8), SCORING.md (rubric).
2. Read hept/VERDICT.md (the object: refuse unrerunnable success claims) and hept/runtime/LAWS.md (L1-L20 constraints).

## RUN11 recipe (deterministic)
1. Pick ONE file in the workspace root or research/ that asserts a status or result (not hept/ files).
2. Run G2 (CRITERION-CRITIC): ask — does this file's claim have a frozen criterion with a named fail condition? Write the answer as one line.
3. If no criterion: run O4 — produce the line `UNVERIFIED(gap=<the missing step>)` for that file's claim.
4. If a criterion exists: run G1 (AUDIT-ONE) — re-run its check in-turn if the check is a command; byte-compare with any recorded output. On mismatch, produce the fabrication line.
5. Score your own move with SCORING.md (depth/surprise/debt-pay/coherence, 0-3 each).
6. Record: the file path, the move, the score, status NEW/REFINING/ILLUSORY.

## RUN11 self-test (executed now, on this workspace, by the rules above)
1. File picked: `research/arc-protocol.md` (asserts a boundary protocol doctrine-CANDIDATE with its own falsifier).
2. G2: does arc-protocol's claim carry a criterion with a named fail condition? — YES: its own obituary pre-registers "zero catches in 3 real tasks → retires by its own Omega-5" (per CONTEXT.md:218-219). Fail condition named: zero catches in 3 real tasks.
3. Criterion exists → G1: the check ("3 real tasks") is not yet runnable (zero real tasks have run — F04/D0009 fuel hold). So no in-turn re-run is possible; the honest move is NOT to mark the file, but to mark its claim's STATUS: `UNRUNNABLE(count=0/3 tries)` — a state the schema allows under M=UNSET (not UNVERIFIED: nothing failed; the check simply has no exposure yet — COUNT semantics, P6).
4. Score the move: depth 2 (distinguishes UNVERIFIED from UNRUNNABLE — a hidden condition the state omitted), surprise 2, debt-pay 2 (D0020: hypotheses can now be counted rather than asserted), coherence 3 (sharpens M's closed value set: UNSET now subdivides into UNRUNNABLE(0 tries) vs UNTESTED(pending)).
5. Recording: research/arc-protocol.md | move = status subdivision UNRUNNABLE | score 2/2/2/3 | REFINING.

## Self-test verdict
- The instructions were executed by the rules alone (no session memory consulted for steps 1-5 beyond the named files).
- One discovery emerged that the week had not produced: the M value set needed an UNRUNNABLE subdivision. That is what a successful stranger-run looks like — the machine generated a legal move its author had not pre-written.