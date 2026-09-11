# P1 RUN — HIDDEN-ASSUMPTION SURFACING (D6-Q03)

**Target sentence (load-bearing):** "Every PASS in the ledger has a complete TRACE with zero retyped values." (D4 INVARIANTS I1)

## Step 1 — Conditions for I1 to be true
| # | Condition | Where recorded | Status |
|---|-----------|----------------|--------|
| C1 | A verifier can re-run the traced command and byte-compare | I1 teeth-test itself (INVARIANTS.md) | RECORDED |
| C2 | The command environment is declared (Rule 7) | GRAFT.md RULE 7; BREAKS B1 | RECORDED |
| C3 | The traced command is deterministic across the comparison window (same input → same output) | UNRECORDED | GAP |
| C4 | The paste was taken in-turn (not replayed later from history) | claimed by Rule 2 wording ("in-turn"), timestamp enforcement UNRECORDED | GAP |
| C5 | The ledger I1 is applied to actually contains PASS records (non-empty domain) | UNRECORDED — the hept/ ledger has zero PASS records of the RULE-2 kind (no sha256-style receipts were ever pasted into hept/) | GAP |

## Step 2 — Treatment of gaps
- **C3 → gap-string:** `UNVERIFIED(gap=command determinism unrecorded)` attached to I1's teeth-test row. A verifier who re-runs a nondeterministic command and sees a mismatch cannot distinguish fabrication from nondeterminism — the byte-compare must record the command's determinism class (deterministic / seeded / environment-varying) before comparing. This is a discovered repair, recorded here; it does NOT widen scope (it narrows I1's claim to commands with recorded determinism class).
- **C4 → gap-string:** `UNVERIFIED(gap=in-turn timestamp enforcement unspecified)` attached to Rule 2. The MVT says "in-turn" but no rule says what proves it. Repair: the trace line must carry the command's own timestamp output (e.g., `date` chaining), not the writer's claim of when it ran.
- **C5 → honest domain note:** I1's domain is currently EMPTY (no receipts exist yet in the workspace). The invariant is a rule about future records, not a description of the past. Recorded so the canon cannot imply a passed audit that never happened.

## Step 3 — Outcome
- Sentence survives with 2 new gap-strings and 1 scope narrowing. No rule was added (P1 repairs within existing rules — no graft budget spent).
- The run itself demonstrates the theory's object: the refuser refused its own strongest invariant until conditions were recorded.