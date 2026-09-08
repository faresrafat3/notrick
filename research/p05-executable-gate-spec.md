# P05 GENERATOR I — the executable gate (spec) · R7→R8 · SERIES 2 (2026-09-08)

Executor: S2-20260908-01 goal-loop · claim logged before work · walls: no execution/runtime/fuel
(the GO is `NOT YET`, RATIFICATION-BATCH-001.md:28; P5 HOLD stands), no doctrine writes, no
Owner-by-right fields. This file is a SPEC in research/ — the engine is NOT built; per
RUN/WALL.md:15 (W8) and mill/HANDOFF_P05.md:12, nothing beyond skeleton hooks exists until the
generator exists, and the generator is built only after the written GO.

## The gap this spec fills (quote first)
- `mill/INTERFACE.md:11` — "a GATE must have an actual executable criterion; until P05
  supplies one, every gate-dependent hook returns `not executable` rather than a fake verdict."
- `mill/HANDOFF_P05.md:2` — "a GATE (P3) is a procedure with frozen criterion text and a
  byte-for-byte output."
So the missing piece is precisely: what MAKES a criterion executable? R8 part I answers that
and nothing more (the machine itself is R9's "P05 GENERATOR II").

## Spec I — the GATE object (5 frozen fields, all digest-addressed)
A gate is legal in P05 iff it is a record with exactly these fields, each frozen at open():
1. **gateName** — a stable ID (mill ID-format; mic-11-class formatter).
2. **criterion** — the procedure text, verbatim, quoting only the state it reads. The text may
   reference ONLY inputs that appear in field 3. Any reference to a live tree, a clock, a
   random source, or an un-frozen file makes the gate illegal-by-construction.
3. **inputs** — the frozen input set: every referenced row/file as (path, sha256-at-freeze).
   Per HANDOFF_P05:3, inputs are sets of 6-field STATE_SCHEMA rows; no other structure.
4. **outputShape** — the byte-format of the verdict (e.g., a fixed-field receipt line), so
   that two evaluations can be compared BYTE-FOR-BYTE (HANDOFF_P05:2's own requirement).
5. **ownerBind** — who owns the gate (HANDOFF_P05:8 / I7: claimers never own their gates —
   the bind names a holder distinct from any claimant of the gated claim; this is R6's
   ownership law, RULES.md:24-25, carried into the machine).

## Spec I — the executability law (the "executable gate" itself)
**A criterion is executable iff two independent evaluations of field 2 over field 3 produce
byte-identical outputs conforming to field 4.** This is a command, not a judgment: evaluate
twice (the second run may be by any other party — the hook `verify(entryID)` re-runs; the
receipt is the second run's bytes, external to the claimant per HANDOFF_P05:7 / I2 / X10).
Consequences, each mechanical:
- Non-determinism anywhere in the criterion (clock, tree-walk, inference) → the two runs
  diverge → the gate is not executable → hooks return `not executable` (INTERFACE.md:11
  behavior preserved, now with a reason instead of a shrug).
- A verdict that summarizes instead of quoting bytes is not a receipt (HANDOFF_P05:5 —
  receipts are raw bytes with honoring-cost; cost reported only when the cost ruler exists,
  I6/D0039 — until then the receipt carries `cost: UNPRICED`, never a number).
- Verdicts remain CLOSED / SUSPENDED / WRITTEN_DOWN / STALE — never "true"/"false"
  (HANDOFF_P05:4; P5, X1/X2) — the outputShape grammar admits only the four.

## Hook wiring (all 6, INTERFACE.md:2-8)
- `open(quote, gateName, slots)` — freezes fields 1-5 + digests; fails on off-chart value,
  missing digest, absent written-go (O1/C0039 unchanged: no entry opens without O1's
  precondition).
- `verify(entryID)` — runs the criterion once and returns {receipt bytes, honoringCost|UNPRICED}.
- `close(entryID)` — re-runs the criterion; CLOSED only if second-run bytes == receipt bytes;
  else SUSPENDED with the diff line quoted (a divergence IS the violation record).
- `writeOff` / `periodClose` / `reEnter` — unchanged semantics (O4/O5/O6); periodClose fails
  on unfinished entries; reEnter needs prior STALE + logged decision (P8/O6).

## Fence mapping — what the executable gate mechanizes (from the 34, the load-bearing five)
- **F0023 / wall-ledger** (mill/FENCE.md:26): a verdict with no re-runnable criterion cannot
  exist in the machine — MIC-23's refusal leg (mics/mic-23-gate-runner.md:8-10), now enforced
  by the format instead of by vigilance.
- **F0016 / quorum-as-adopted-law** (mill/FENCE.md:19): a gate whose inputs include an
  unadopted schedule cannot freeze (the digest of a proposal is not the digest of a law) —
  open() fails.
- **X-08 / ledger forgery** (adversarial-audit): the claimant cannot write the receipt — the
  receipt IS the second run (HANDOFF_P05:7).
- **F-1 / claimant-owned gate** (research/gate-triads.md): field 5's ownerBind is a required
  frozen field — a gate with no external holder is malformed, not merely criticized.
- **S-03-class count rot** (RUN/PIN_TRIAL.md): counts inside emitted artifacts are computed
  from the frozen inputs at emit time — a header can no longer disagree with its body.

## Honest limits (what the executable gate does NOT solve)
- Pre-hoc input poisoning: digests freeze what was GIVEN; if the given rows are poisoned, the
  gate deterministically verifies poison. P-001's council wall (pre-hoc review) stays
  independent and Owner-gated (adversarial-audit.md:244).
- The receipt register cannot pin itself (R3 register paradox): violations.md-class append-only
  files stay timestamp-class, not wall-class.
- No honoring-cost numbers until the cost ruler exists (I6/D0039) — the spec prices nothing.
- No simulator, no inference (HANDOFF_P05:11 illegal blends: no prices-as-mechanism, no
  stigmergy, no VM — the gate verifies, it does not predict).

## Compliance — HANDOFF_P05's 12 constraints (countable parts)
| # | constraint (mill/HANDOFF_P05.md) | status in this spec |
|---|----------------------------------|---------------------|
| 1 | read SKELETON/PRIMITIVES/OPS/INVARIANTS/FORBIDDEN/STATE_SCHEMA/INTERFACE | honored — all 7 consumed; nothing outside STATE_SCHEMA rows is legal input (field 3) |
| 2 | gates, not meaning; frozen criterion + byte-for-byte output | IS the spec (fields 2+4; executability law) |
| 3 | 6-field rows only | field 3's only legal structure |
| 4 | four verdicts, never true/false | outputShape grammar |
| 5 | raw-byte receipts + honoring-cost ruler precondition | receipt = second-run bytes; `cost: UNPRICED` until ruler |
| 6 | O1 written-go precondition | open() unchanged-fail |
| 7 | receipt external to claimer | receipt = any-other-party re-run |
| 8 | claimers never own gates | field 5 ownerBind required |
| 9 | D0052 signatures SUSPENDED-with-anchor, no fake gate | out of scope by constraint — no signature gate is specified |
| 10 | stale pairs via O6 + logged decision | reEnter unchanged |
| 11 | illegal blends carried forward | quoted and excluded in Honest limits |
| 12 | no protocols before the generator exists | this is a spec in research/; W8 holds; build = post-GO |

12/12 honored. The spec is complete-in-form: every field countable, every part quotable,
nothing executable until the Owner's GO builds the machine (R9's part II designs it; the
build itself remains post-GO).
