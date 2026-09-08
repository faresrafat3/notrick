# PRIMITIVE INDEPENDENCE — matrix · R11 · SERIES 2 (2026-09-08)

> Executor: SERIES 2 R11 lane (glm-5.3-flash session). Object: the frozen primitive set
> P1-P8 (mill/PRIMITIVES.md, "frozen 0484", "Count: 8 ≤ 8 (0474)"). Method: dependency
> extraction from each definition verbatim, DAG check, basis test. Crosses (not duplicates)
> mill/TERM_GRAPH.md — 15 T-term rows, zero P-coverage (grep-verified 2026-09-08): the
> T-graph maps vocabulary, this file maps the state atoms.

## The dependency matrix (P = row depends on column; from definitions, quoted)
| | P1 | P2 | P3 | P4 | P5 | P6 | P7 | P8 | definition words that force it |
|----|----|----|----|----|----|----|----|----|--------------------------------|
| P1 QUOTE | — | . | . | . | . | . | . | . | "the only debit atom" — no other primitive named |
| P2 RECEIPT | . | — | **X** | . | . | . | . | . | "produced by **executing a GATE**" |
| P3 GATE | **X** | . | — | . | . | . | . | . | "deterministic over **frozen inputs**" — inputs are QUOTEs (I1) |
| P4 ENTRY | **X** | **X** | **X** | — | . | **X** | . | . | "record row (**quote, receipt, gate, slot-values**, verdict-field)"; slots are CHART-typed (I4) |
| P5 SUSPENSE | . | **X** | **X** | **X** | — | . | . | . | "state of **an entry** whose **receipt** does not match its **gate**" |
| P6 CHART | . | . | . | . | . | — | . | . | "a finite named vocabulary" — self-standing |
| P7 WRITE_DOWN | . | . | . | **X** | . | . | — | . | "recorded removal (**entry-id**, reason, violation-line)" |
| P8 STALE | . | . | . | **X** | . | **X** | . | — | "predicate over **two entries** differing on one **settled slot**" |

## DAG check (computed, W9)
Dependency edges: P2→P3 · P3→P1 · P4→{P1,P2,P3,P6} · P5→{P2,P3,P4} · P7→P4 · P8→{P4,P6}.
Topological order exists — P1, P6 → P3 → P2 → P4 → {P5, P7, P8} — so the set is a **DAG:
zero cycles** (checked by ordering, not asserted).

## Independence verdict
1. **Two atoms**: P1 (QUOTE) and P6 (CHART) depend on nothing; every other primitive
   reaches them through the DAG. The row-hub P4 sits on 4 dependencies and carries 3
   dependents (P5, P7, P8) — it is the set's center of mass, and the P05 machine's "one
   object" (research/one-object-verdict.md) is exactly P4.
2. **Minimal basis**: no primitive is eliminable without breaking a named state or hook —
   drop P5 and the verdict grammar loses SUSPENDED (HANDOFF_P05.md:4, one of the four
   tokens); drop P7 and O4/writeOff loses its lawful form (INTERFACE.md:5); drop P8 and
   O6/reEnter loses its pre-condition (INTERFACE.md:6, HANDOFF_P05.md:10). Eight elements,
   each load-bearing: the freeze at 8 is earned, not decorative.
3. **The structure-vs-legality split (the finding)**: the DAG is the primitives'
   STRUCTURE and it is doctrine-independent — but every edge's LEGALITY rides on doctrine
   outside the set: P3's "never owned by the claimer" is R6 (RULES.md:24-25) + I7;
   P4's row-shape is I1-I2; P8's "settled slot" is I4 + D0044. Independence holds in form;
   the set is legally coupled to the invariants it cannot carry itself. A primitive set
   that had to contain its own law would need P9s — the freeze at 8 is also the choice to
   keep law in INVARIANTS.md, not in the atoms.
4. **Anchor resolution level (honest)**: the definition source-anchors (C0036, C0020,
   D0044…) resolve to mill records, not CONTEXT decision-log lines (e.g. C0036/C0048 cited
   at mill/CONFLICT.md:4; TERM_GRAPH carries the T-side) — quoted definitions are
   byte-real in PRIMITIVES.md itself; anchor-tracing one level deeper is UNVERIFIED for
   6 of 8 (P3/C0040+C0025, P5/C0040, P7/C0048+C0049, P8/D0044 traced; P1/P2/P4/P6 not
   traced to their original op texts this session).

## Crossings (R10 — each claim intersects ≥2 existing entries)
mill/PRIMITIVES.md (the frozen set) + mill/STATE_SCHEMA.md:3-9 (the 6 fields the DAG
renders) · mill/INVARIANTS.md I1-I7 (the legality layer) + RULES.md:24-25 (P3's ownership
edge) · research/one-object-verdict.md (P4 = the one object) + mill/HANDOFF_P05.md:3,4,10
(the machine consumes/verifies the DAG) · mill/INTERFACE.md:5-6 (P7/P8 hooks) +
mill/TERM_GRAPH.md (the T-layer this matrix deliberately does not duplicate).
>
> obituary: this matrix dies the moment any definition in mill/PRIMITIVES.md changes by
> approved-docs moment (then every edge above must be re-derived — the freeze is the
> matrix's validity condition), or the moment a cycle is shown in the DAG (then
> "independence" was read off a broken ordering), or when the R14 GHOST finds a quoted
> definition half-here — then the matrix quoted the freeze it liked.
---
## REPAIR (appended 2026-09-08 post-close — blind verifier disagreement, B5 logged)

The blind verifier (RUN/briefs/r11-verifier.md, relaunched attempt — landed late, not
failed) re-derived the edges under a strict name-mention rule and returned MISMATCH on 3
of 10 edges. Verdict: the verifier is RIGHT about the edge class, this matrix's
"definition words" column was the wrong label for them.

- **TEXT edges (7)** — definition names the primitive: P2→P3 · P4→{P1,P2,P3} ·
  P5→{P2,P3,P4} · P7→P4 · P8→P4.
- **LAW edges (3)** — definition does NOT name the target; the edge exists only because
  INVARIANTS.md law types the terms: P3→P1 (via I1: every ENTRY cites exactly one QUOTE —
  "frozen inputs" are QUOTE-rows by law, not by the word) · P4→P6 and P8→P6 (via I4: no
  slot value lies outside its CHART — "slot-values"/"settled slot" are CHART-typed by law).
- **Consequences, recomputed:** strict text graph = 7 edges, THREE roots (P1, P3, P6),
  P6 CHART fully isolated (no definition mentions it) — still acyclic; law-inclusive
  graph = the 10-edge DAG above, roots P1+P6 — still acyclic. Both orders end
  …→P4→{P5,P7,P8}. The minimal-basis result and the topological tail are unchanged.
- **Strengthened finding:** the original "structure-vs-legality split" understated the
  case — not only the edges' legality but 3 of the edges THEMSELVES are law, not
  structure. The frozen 8 do not even connect to themselves without INVARIANTS.md; the
  set is a vocabulary whose grammar lives outside it.
- **Atom count corrected:** "two atoms" holds only in the law-inclusive graph; the
  definition-text graph has three self-standing definitions (P1, P3, P6) with P6
  unreachable. Receipt R011.json's "2-root" field reads as the law-inclusive result —
  receipt immutable once filed; this section is the correction of record.
