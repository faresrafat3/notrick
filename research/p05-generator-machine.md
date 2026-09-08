# P05 GENERATOR II — the machine (emitter design) · R9 · SERIES 2 (2026-09-08)

Executor: S2-20260908-01 goal-loop · claim logged before work · walls: no execution/runtime/fuel
(GO is `NOT YET`, RATIFICATION-BATCH-001.md:28), no doctrine writes, no Owner-by-right fields.
This is a DESIGN in research/ — no code, no build, no run. Part I (the executable gate) is
`research/p05-executable-gate-spec.md`; part II designs what the machine EMITS and how a
protocol file becomes pinnable.

## What the machine emits (the product, named)
Exactly one artifact class: **protocol files** — the W8 class that today cannot exist as law
(RUN/WALL.md:15) and cannot be pinned safely (the 7 unpinned doctrine-class files: INTEGRITY.md
itself + 6 protocols/ files, R3 receipt). The machine's job: make emission mechanical so that
pinning becomes meaningful — an emitted file's bytes are a pure function of frozen rows.

## Input law (consumes only what part I froze)
The emitter reads only STATE_SCHEMA rows (mill/STATE_SCHEMA.md:3-9: ENTRY.id · QUOTE
(path·line·digest) · GATE (named re-runnable criterion bound at OPEN) · RECEIPT (raw output ·
honoring-cost) · SLOTS (axis, wall from a CHART) · VERDICT) — sets of rows satisfying I1-I7.
It reads no live tree, no clock, no chat, no prose outside QUOTE digests. "The generator builds
gates, not meaning" (mill/HANDOFF_P05.md:2) — the emitter composes and counts; it never
interprets.

## The pipeline (6 stages, each checkable)
1. **SELECT** — the recipe (field set below) names the row classes to include; selection is a
   filter over rows, deterministic by row predicate.
2. **ORDER** — rows sort by (ENTRY.id, QUOTE.digest); ties impossible (unique ids).
3. **COMPOSE** — each row renders through the recipe's format string; only QUOTE digests,
   RECEIPT raw bytes, SLOTS values, and VERDICT tokens may appear as content. No free text.
4. **COUNT** — every count in the emitted file is computed from the rendered body at stage 3
   (kills S-03-class rot: a header cannot disagree with the body it was computed from).
5. **HEADER** — stamp the 6-field header block (below) from the recipe + digests + counts.
6. **CLOSE** — the emission passes through part I's close(): the emitter re-renders once and
   compares bytes; byte-identity is the emission gate; divergence aborts the emit and quotes
   the diff (research/p05-executable-gate-spec.md executability law, applied to the emitter).

## The emitted header block (6 fields, machine-checkable)
`recipe-id` · `input-digests` (sorted sha256 list of every consumed row's QUOTE.digest) ·
`computed-counts` (every number the body claims, computed at stage 4) · `recipe-version` ·
`verdict-grammar` (the four-token line, HANDOFF_P05.md:4) · `ownerBind` (the external holder
of this protocol class — part I field 5 carried through).

## Recipe object (5 fields; a recipe is itself a frozen row)
`recipe-id` · `format-string` (may contain only field placeholders and literal punctuation) ·
`selection-predicate` (a row predicate over the 6 fields) · `adoption-anchor` (the Owner
moment that adopted it — absent adoption, the recipe is SUSPENDED-with-anchor, never
implicitly live, HANDOFF_P05.md:9's discipline) · `protocol-class` (which W8-class file it
emits; ties the output to INTEGRITY.md's pin namespace).

## The machine's refusals (5, mechanical)
1. Any content that is not a QUOTE digest expansion, RECEIPT bytes, SLOTS value, or VERDICT
   token — refused at COMPOSE (P-001(a) mechanized: content only in template fields).
2. Imperative voice addressed to an agent in any emitted line — refused at COMPOSE (P-001(b)
   mechanized for the machine's own output: the emitter emits data rows, never commands).
3. A count in the body that stage 4's recomputation contradicts — refused at HEADER.
4. A recipe without an adoption-anchor — refused at SELECT (no self-adopting recipes; the
   claimant-owned-shape lesson, gate-triads F-1, applies to recipes a fortiori).
5. An emission whose own close() byte-comparison fails — refused at CLOSE.

## Compliance (countable, quoted)
- HANDOFF_P05's 12 constraints: all carried from part I; constraint 2 ("gates, not meaning")
  is the emitter's constitution; constraint 12 (no protocols before the generator exists) is
  why this remains a design — the machine may be BUILT only after the written GO.
- STATE_SCHEMA: the emitter consumes exactly the 6 fields and nothing else (I1-I7 rows only).
- Part I: CLOSE reuses the executable gate verbatim; ownerBind appears in both the gate object
  and the header block — one ownership law, two enforcement points.
- W8 compatibility: this design does not write protocols; it specifies the only machine that
  may. The 7 unpinned files stay unpinned until the Owner's GO builds and runs it.

## Honest limits (unchanged from part I, restated where they bite here)
Poisoned rows emit poisoned protocols deterministically (pre-hoc wall = P-001, Owner-gated);
recipes are only as honest as their adoption moment; the machine prices nothing until the
cost ruler exists; and no part of this design runs before the GO — which is the point.

## Net
Countable parts: **6 pipeline stages · 6 header fields · 5 recipe fields · 5 refusals ·
12/12 constraint compliance · 6-field input law**. With part I, P05 is now design-complete:
the gate criterion format (what makes a criterion executable) and the emitter (what makes a
protocol pinnable). Building remains the Owner's post-GO moment; nothing here runs.
