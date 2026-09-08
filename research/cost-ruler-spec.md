# COST RULER + H5 INSTRUMENTATION — spec · R12 · SERIES 2 (2026-09-08)

> Executor: SERIES 2 R12 lane (glm-5.3-flash session). W8 honored: this is a SPEC in
> research/ — no ruler is built, no cost is measured, no H5 run runs until the Owner's
> written GO (RATIFICATION-BATCH-001.md:27-29, GO = NOT YET). Precedent class: R8/R9's
> P05 design-before-GO (research/p05-executable-gate-spec.md, p05-generator-machine.md).

## The debt this spec prices (quote first)
- mill/FAKE_MATH.md:5: "Honoring-cost is a number you promised and have no ruler for
  (D0039): the machine's only unit of cost is unfillable."
- mill/FAKE_MATH.md repair: "(5) honoring-cost has no ruler: I6 records the field's
  emptiness as a debt-residual (D0039 remapped as min-debt, not a runtime claim)."
- mill/DEAD_WEIGHT.md DW08: honoring-cost — "never measured, in no template (T0020) ·
  measured once (D0039), or dropped · quantification promise."
- I6 (mill/INVARIANTS.md): "Every CLOSE records honoring-cost of its VERIFY (D0039
  teeth)." HANDOFF_P05.md:6: "cost ruler must exist before any cost is reported."

## The COST RULER (spec — what a legal cost IS)
A cost is legal iff it is a **machine-countable quantity over the record itself**, stated
in one of exactly three units (all derivable from STATE_SCHEMA rows by command — no
judgment, no elapsed time, no fuel, no "effort"):
1. **ROW-UNITS** — the count of rows consumed/produced (P4 ENTRY rows; the P05 emitter
   already computes these at stage 4: p05-generator-machine.md:29-30).
2. **QUOTE-DEBITS** — the count of P1 QUOTE atoms resolved (path+line+digest lookups that
   succeeded; a failed lookup is a debit too — counted, never hidden).
3. **GATE-RUNS** — the count of criterion evaluations (P3; the second run of the
   executability law is already a countable event).
A receipt's `honoringCost` field (HANDOFF_P05.md:5) is then a TRIPLE `(row-units,
quote-debits, gate-runs)` — not a scalar. `cost: UNPRICED` remains the legal value until
this ruler is BUILT (post-GO); the triple's SHAPE is fixed now so post-GO receipts are
mutually comparable and old UNPRICED rows stay parseable (nothing to migrate).
**What stays illegal:** elapsed time, token counts, wall-clock, "effort", money — none are
machine-countable from the record, so all are D0039-class fake units (the exact attack
FAKE_MATH:5 names). The ruler prices VERIFICATION, never MIND: no unit may be defined over
anything the record does not contain.

## H5 instrumentation (pre-registered hypothesis, made runnable — still unrun)
H5 (research/hypotheses-ledger.md:30-35): "a task hitting a prior K-line (same
axis/charters) completes cheaper than the original. Measure: budget spent, first-run vs
K-line-hit run. Verdict rule: no cost difference across 3 hits → memory is constellation
theater → Curator design revisited."
Under the ruler, H5's "budget spent" becomes mechanically:
- **first-run cost** = the triple of the first execution's CLOSE receipt (or UNPRICED if
  pre-ruler);
- **hit-run cost** = the triple of the K-line-hit execution's CLOSE receipt;
- **difference** = component-wise triple difference, recorded as a row (P4), not prose.
Instrumentation requires exactly three artifacts, all post-GO: (1) the K-line-hit log
(which axis/charter keys a task hit — SLOTS is the natural field, rcvm.md:42 SCAN(axis));
(2) CLOSE receipts carrying the triple; (3) the 3-hit verdict ledger row pre-written with
H5's own verdict rule as its obituary.
**Honest status line: UNTESTED.** Zero runs exist; none may be claimed confirmed
(hypotheses-ledger.md:37-38: "ALL FIVE: pre-registered, untested, awaiting zero day").
This spec changes H5's falsifier from prose-comparable to byte-comparable — it does not
run it.

## What this spec does NOT do (limits, named)
- It does not make cost comparable ACROSS task types — a triple difference of (0,1,0)
  between unlike tasks means nothing until a normalization exists (Owner-gated design
  choice, not this lane's).
- It does not price the pre-hoc wall: P-001 council review consumes no ruler units —
  judgment stays outside the machine's accountancy (R8/R9 honest-limits restated).
- It cannot retroactively price the series' own receipts: R000-R011 carry no cost fields;
  they stay UNPRICED forever (I6 applies at CLOSE time; the series predates the ruler).
- The ruler's three units are themselves a DESIGN choice filed for Owner review — a
  different Owner could name different units; nothing here is law until the approved-docs
  moment (W3: no Owner-by-right field filled).

## Crossings (R10 — each claim intersects ≥2 existing entries)
FAKE_MATH.md:5,14 (the attack + its repair) + DEAD_WEIGHT.md DW08 (the unmeasured unit) ·
INVARIANTS.md I6 + HANDOFF_P05.md:5-6 (the CLOSE/cost teeth) · hypotheses-ledger.md:30-38
(H5 + its verdict rule + the all-untested status) · p05-generator-machine.md:29-30
(row-counts already computed at emit) + rcvm.md:42 (SCAN(axis) as the hit-key) ·
STATE_SCHEMA 6 fields (the triple's row home) + one-object-verdict.md (the row as the
one object).
>
> obituary: this spec dies when (a) the GO builds a ruler whose units differ — then the
> triple was one proposal among possible, cited not law; (b) H5's 3-hit verdict fires
> "constellation theater" — then memory failed its cost test and the Curator revisiting
> (open item 5) inherits this spec as evidence; (c) any cost number appears in any
> receipt before the ruler is BUILT — then this spec was used to fake legality instead of
> preparing it, and its own banner failed.