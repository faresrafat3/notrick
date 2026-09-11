# ARCHITECTURE (D6-Q08)

The theory is 7 rules. The architecture is how those rules are carried by files, modules, and revision policies. Not a table of contents — each module states what it OWES (a duty whose failure is checkable) and its INTERFACE (what crosses its boundary).

## Modules

### M1 — RECORD STORE (the ledger)
- **Owes:** append-only persistence of records with headers (criterion, trace, cost, mark, environment class, exposure class); acyclic citation edges (Rule 5, I6); hash stability of judged records (I4).
- **Interface in:** new records, amendments (as new records). **Interface out:** readable state queries: mark(claim), count(mechanism), catch-class(mechanism).
- **Fails when:** a judged record's hash changes; a cycle appears in citations; a value exists without a trace line (I1, I2).

### M2 — CRITERION REGISTRY
- **Owes:** frozen criteria with output-property fail conditions (Rule 1, X9/X11); pre-declared exposure classes for every mechanism (X10); staleness marking (Rule 1 clause).
- **Interface in:** criterion declarations, class declarations. **Interface out:** criterion-status (frozen/stale/unreachable) per claim class.
- **Fails when:** a criterion runs against a claim class its header does not name (B2), or a mechanism's count uses an undeclared class (B4).

### M3 — TRACE VERIFIER
- **Owes:** byte-compare of re-run outputs against pasted traces, within declared determinism class (I1 as narrowed by P1-RUN); in-turn timestamp verification (C4 gap-string, P1-RUN); cross-class re-run mismatch marking (Rule 7).
- **Interface in:** trace lines, re-run requests. **Interface out:** match/mismatch/nondeterminism-classified verdicts; fabrication flags.
- **Fails when:** it compares across mismatched determinism classes, or accepts a trace with no command timestamp (the two gaps P1 bound).

### M4 — MARK ENGINE
- **Owes:** terminal UNVERIFIED marks with exact gap-strings; per-gap closure tracking on multi-gap ancestors (P4-RUN call 7 edge case); inheritance along citation edges with no laundering path (Rule 4, I3, B3).
- **Interface in:** gap detections (from M3, M2, generators). **Interface out:** mark(claim) states; inheritance closure reports.
- **Fails when:** a mark clears on a non-exact gap match, or a descendant of an open-gap ancestor reads clean (I3 walk).

### M5 — MECHANISM ACCOUNTANT
- **Owes:** (COUNT, CATCHES) per mechanism inside declared classes only; retirement/promotion exclusively on these pairs (Rule 6, X8); anti-resurrection enforcement for retired mechanisms (GRAVEYARD rule); pricing enforcement hooks for O5 (forward-only, call-5 gap-string).
- **Interface in:** exposure events (each citing its class), retirement requests. **Interface out:** mechanism status table (as run in P4_RUN.md); retirement verdicts with forcing records.
- **Fails when:** a count includes out-of-class exposures, or a retirement cites any non-counted ground (L9).

### M6 — FORK INTERFACES (exactly two)
- **Owes:** a landing place for each live fork's experiment data — F-S2: multi-writer ledger catches (cross-writer patterns); F-R2: attribution-failure cases where paste-rule alone was insufficient (R01_FORK_BIND). No resolution authority; no vocabulary shortcuts.
- **Interface in:** fork experiment records. **Interface out:** fork status (dormant/fired) with the triggering records.
- **Fails when:** either fork is declared resolved without its named experiment, or the two forks' evidence pools are merged (anti-blend).

## What the architecture does NOT contain (binding)
- No scheduler/queue module (EX2 scope cut, MUST_NOT 8) — stall invoices are M5 outputs at most.
- No writer-identity fields in M1 (NC5 experiment belongs to M6's F-S2 interface, not to the record schema).
- No canon-generation module — the canon is a document (Day 7), not a running component.

## Local vs cascade revision
- **Local (module-internal):** gap-strings, class declarations, mark states, count updates — each module repairs within its own owes without touching others. Precedent: P1-RUN narrowed I1 inside M3's interface without architecture change.
- **Cascade (cross-module, requires forcing record):** changes to rule text, module boundaries, or the fork conditions. A cascade needs: the failure record (file+fragment), the module that failed, and the new owes statement. Precedent: B1 → Rule 7 graft (forced by command-forgery case, cascaded into M3's owes).
- **Illegal:** revision by vocabulary (a module renamed is not revised); revision by intention (no forcing record = no cascade); revision that widens scope against NEGATIVE_DEPTH without a KILL_REASON (D3 done-when).