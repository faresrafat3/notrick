# REASON_LAW — installed verbatim from the WELL kernel.
> Source of authority: the user's REASON TAXONOMY block in the W00 directive. Anything that
> contradicts this file is illegal in WELL output, regardless of how reasonable it sounds.

## Why this file is not a generic essay
This law is bound to the live diction of this project. Test-bench examples below cite the
real terms NOTRICK uses (K-line, obituary, results-as-prices, NO NICHE call, paper mode,
burrow, masterpiece gate, version register, hash pin) — not generic academic advice. The law
travels with the project; copy it elsewhere and it has to be re-trained on the new diction.

---

## Legal kinds of reason

| Tag | Kind | What it must look like in the body |
|-----|------|-----------------------------------|
| **E-EVIDENCE** | a quote-ID, line range, or file path that exists in `mill/QUOTES.md`, `mill/CANON_SOURCES.md`, or an LB-anchored line | `…because Q0032 says … at research/decision-review.md L10-11, and …` |
| **E-ELIMINATION** | a named rival that almost works and the reason it loses on a single observable | `…INSTEAD-OF <rival>, which fails at <the single thing>` |
| **E-CONSTITUTION** | a constraint from RULES, R1..R12, the charters, or RATIFICATION-BATCH-001 | `…because R6 holds and a gate owned by the claimant is not a gate…` |
| **E-DEPENDENCE** | a falsifier that fires downstream if the reason is wrong | `…IF-FALSE, then <named collapse> happens in the records, not in prose.` |
| **E-BREAK** | a confession that the prior reason failed and the claim must be demoted | `…the prior because was X-PRESTIGE; demoting to UNPAID-WHY…` |

## Illegal kinds of reason (auto-FAIL)

| Tag | Smell |
|-----|-------|
| **X-PRESTIGE** | the move is justified by who said it, how official it looks, or how many files cite it |
| **X-VIBE** | the move is justified by tone, gravitas, "this is what a real system does", or aesthetic |
| **X-CIRCULAR** | the because restates the claim with different words (replace "because X" with "because it is what it is" → no information lost) |
| **X-AUTHORITY** | "the Owner wants it", "the system requires it", or any terminus citation used without naming the record that holds the terminus |
| **X-HOLISM** | the move is justified by the whole framework being coherent, without naming the joint that holds |
| **X-FUTURE** | the move is justified by what will be true after zero day, what Phase B will do, or what the autopoiesis bit will flip |
| **X-BLEND** | the move mixes two of the above in one because-clause |

## Tests every reason must survive (mechanical, not interpretive)

- **T-CONTRAST** — must name a nearest rival that almost works and say why this reason beats it.
- **T-NONCIRC** — the predicates in the because-clause must differ from the claim's predicates. (If swapping nouns leaves the sentence, it is circular.)
- **T-COLLAPSE** — must name a real downstream loss — a K-line that won't enter the grid, a charter that won't fire, a quorum that won't fill, a hash that won't pin.
- **T-ANCHOR** — must point to a file/quote ID, or carry `NEW` plus a one-line justification.
- **T-COST** — must state what accepting this reason forbids (the thing you may no longer say).

If a move fails any of T-CONTRAST, T-NONCIRC, T-COLLAPSE, or T-ANCHOR, demote it to
`UNPAID-WHY` and log it in `well/UNPAID_WHY.md`.

---

## 8 fake because-clauses using THIS project's diction

These are how WELL will fake reasons later, named in advance so we can spot them. Each is
written in the voice NOTRICK actually uses; none is acceptable.

1. **F-PRESTIGE-INSTANCE** — *"We must treat only WF(K) squares as grid entries because the system is a real virtual machine, and that is what real virtual machines do."*
   - Illegal kind: **X-PRESTIGE** + **X-HOLISM**. Fails T-CONTRAST (no rival named), T-COLLAPSE (no named loss), T-ANCHOR (no file/quote). The word "real" is doing no work.
2. **F-VIBE-OBITUARY** — *"Nothing exists without its obituary, because the arc-protocol is what makes this a serious research project."*
   - Illegal kind: **X-VIBE** + **X-AUTHORITY**. "Serious research project" is not in the file; the reason uses a predicate ("serious") the claim does not use ("entity cannot die"). Fails T-NONCIRC.
3. **F-CIRCULAR-PRICE** — *"Results are the prices because that is how prices work in this system."*
   - Illegal kind: **X-CIRCULAR**. Replace with *"because it is what it is"* and gain nothing. Fails T-NONCIRC. (The real reason must name a rival — e.g., Owner fate-decisions — and a collapse — e.g., the quorum counter never fills.)
4. **F-AUTHORITY-OWNER** — *"We use a dead orchestrator because the Owner wants it that way."*
   - Illegal kind: **X-AUTHORITY**. The Owner is a terminus, not a reason. Where is the written ruling? If absent, the reason is unmade.
5. **F-HOLISM-CROSSWORD** — *"Evidence is a crossword because the whole framework is coherent, and that is what coherent systems look like."*
   - Illegal kind: **X-HOLISM** + **X-PRESTIGE**. "Coherent" is the claim's own adjective. No joint named, no rival named, no collapse named.
6. **F-FUTURE-PHASE-B** — *"MIC-23 will verify the gate because Phase B will compile it."*
   - Illegal kind: **X-FUTURE**. rcvm.md L127 says Phase A: human executes microcode manually. The reason cites a future that is not the gate; the gate is whatever runs today.
7. **F-BLEND-SOVEREIGNTY** — *"The Owner Port is the only non-determinism because the Owner is sovereign and sovereignty is the product, not a bug."*
   - Illegal kind: **X-BLEND** (X-AUTHORITY + X-PRESTIGE). "Sovereignty is the product, not a bug" is the line RHETORIC.md L2 names as flattery, not law.
8. **F-VIBE-BIRTHPARADOX** — *"We are pre-zero and must not run because birth is the paradox and only the constitution can resolve it."*
   - Illegal kind: **X-VIBE** + **X-AUTHORITY**. The phrase "birth paradox" is research diction; the claim needs the specific written ruling (RJ-001 L17: declared paper swarm) and the specific gate (zero-day runbook L4: nothing runs until the written GO).

---

## How a legal because-clause looks in this project

Shape:

```
BECAUSE: <reason using predicates the claim does NOT use>
INSTEAD-OF: <nearest rival that almost works>
IF-FALSE: <named downstream collapse>
```

Example legal because (training only — the full ledger is in `well/LB01.md`..):

```
BECAUSE:  Q0001 binds rcvm.md L63: only WF(K) squares enter G. The 4-tuple has three
          independent predicates (A ≠ ∅, D ∈ Axis, W ∈ Wall, G = PASS) — the rule "WF(K)
          squares enter G" is the conjunction, not a restatement.
INSTEAD-OF: A claim that "the grid stores results, full stop." That rival reads true and
          is the literal shape of mill/ONE_SENTENCE.md L2 minus its 'only WF(K)' prefix,
          which is exactly why X-PRESTIGE about completeness is the trap.
IF-FALSE:  If only one of A/D/W/G is required, then the Curator loses the reason to refuse
          non-K-line squares (R5), and MIC-23 has nothing to re-run.
T-COST:    Accepting it forbids the line "the grid stores results" without the WF(K) prefix.
```

That is the floor. Anything shorter or softer is a candidate for `UNPAID-WHY`.

---

## Failure paths

- A move that cannot fill BECAUSE / INSTEAD-OF / IF-FALSE without circularity → **demote** to UNPAID-WHY.
- A move that survives the three fields but loses T-ANCHOR → **demote** and request an anchor.
- A move that survives but cites a Phase-B / future / Owner-claim without a record → **demote** and tag the kind (`X-FUTURE`, `X-AUTHORITY`).
- A move that survives and wins all five tests → it is load-bearing; do not weaken it.