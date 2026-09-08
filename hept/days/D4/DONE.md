# DAY 4 — DONE (D4-Q16)

## D4 done-when audit (binary)

| Test | State | PASS/FAIL |
|------|-------|-----------|
| Machine, not glossary | primitives have removal consequences; derived objects have construction steps; generator produces moves with filters (PRIMITIVES/DERIVED/GENERATOR) — not a definitions list | PASS |
| 8+ runs | RUN01-08 + RUN11 self-test = 9 runs; 9 survivors (3 NEW, 6 REFINING, 0 ILLUSORY), 6 tooth-kills | PASS |
| Illegal moves exist | X1-X8 forbidden moves with anchored failures (INVARIANTS.md); used as kill grounds in RUN01-08 | PASS |
| EX2 snag honest | owner-queue stall named as unexpressible; force-fit refused; blind spot routed to Day 5 red team (EX2.md) | PASS |

## Machine summary (what exists now)
- 6 primitives (bland-name stable: RECORD, TEST-TEXT, TRACE, MARK, COST, COUNT)
- 5 derived objects (CLAIM, PASS, UNVERIFIED, LEDGER, CATCH) with build steps
- 6 relations + 6 operations with fails-when
- 5 invariants with teeth-tests + 8 forbidden moves
- 5-field state schema S=(C,R,K,M,F) — RUN11 added the UNRUNNABLE subdivision
- 8 generators closed against the D3 constraint set
- 9 engine runs on real workspace material, all debt-mapped

## Day verdict
DAY 4 PASS. Another agent can generate a legal move from PRIMITIVES+GENERATOR+INVARIANS alone (RUN11 proved it by spawning a move its author had not pre-written). 16/16 core quanta PASS, 0 FAIL.