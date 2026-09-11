# D6 CHECKER (D6-R01)

## Check 1: every module owes has a fail condition
| Module | Owes | Fail condition exists? |
|--------|------|------------------------|
| M1 RECORD STORE | append-only, acyclic, hash-stable | YES — I4 hash, I6 cycle, I1 trace (ARCHITECTURE "Fails when") |
| M2 CRITERION REGISTRY | frozen criteria, classes, staleness | YES — B2 drift, B4 undeclared class |
| M3 TRACE VERIFIER | byte-compare, timestamps, cross-class | YES — C3/C4 gap-strings (P1-RUN) |
| M4 MARK ENGINE | exact gaps, per-gap closure, inheritance | YES — I3 walk, B3 exact-match |
| M5 MECHANISM ACCOUNTANT | counted pairs, anti-resurrection, pricing hooks | YES — X8, B4, call-5 gap-string |
| M6 FORK INTERFACES | evidence landing, no resolution | YES — HATCH-5 (vocabulary resolution banned) |
PASS.

## Check 2: protocol steps executable
- P1: 4 steps, each an operation on a named artifact (executed: P1_RUN). 
- P2: split-and-rederive (executed: call 4 on "gate").
- P3: generators→filters→score→execute (executed: P3_RUN).
- P4: instance+teeth (executed: P4_RUN).
- P5: vocabulary-vs-operation + budget (executed: call 6, BD13).
- P6: density check (executed: call 10, COMPRESS).
All six have real executions on file. PASS.

## Check 3: no summary-passable protocol
A summary cannot pass: P1 requires the gap-strings to be written into specific files; P3 requires a scored executed move with anchors; P4 requires a built instance and a run outcome; P6 requires the density verdict. The only summary-shaped protocol is P5's decision record — and its pass condition is the operation/ban distinction, which a summary cannot fake without being caught by SUBSTITUTION. PASS.

## Check 4: contacts still prohibitions
Re-read C1-C8: each row forbids (FORBIDS column), none recommends or pitches. 6/8 workspace-anchored. PASS.

## Check 5: L19 volume audit on D6 files
Largest D6 file = CHAINING.md (~60 lines, table-heavy). No essay >200 lines. PASS.

## Repairs needed: NONE. Day 6 artifacts survive the checker unchanged.