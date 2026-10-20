# IDEA-002 FIXTURES — the compiler's test corpus (single-cause by construction)
> 2026-10-21 · research lane · paper-only · **these are FIXTURES, not library cards.**
> They exist to be compiled (or refused) by the device `acc.py` that
> `research/idea-002-card-preset-compiler.md` specifies. No fixture is a real card: the
> library's real cards are IDEA-001 and IDEA-002, listed in `research/card-ledger.md`.
> **Design rule (from the 2026-10-21 adversarial review): each fixture breaks exactly ONE
> thing** — so a refusal names exactly one failing birth gate, and a pass/fail cannot be
> ambiguous between two causes.
> Language: English per R15. The FORM (`research/anatomy-card-form.md`) is quoted, not rewritten.

---

## F1 — KNOWN-POSITIVE (conformant card: must compile, exit 0)
> Carries every one of the **9 required fields** (the union derivation is in the card's
> §10.1) in the FORM's own section layout, so a stranger can locate each one by
> section + line.

```markdown
# IDEA-900 — FIXTURE: the shortest ladder
> FIXTURE — not a library card. A conformant sample for the compiler's known-positive.

| Field | Value |
|---|---|
| `ID` | IDEA-900 |
| Title | The shortest ladder: stop at the first rung that holds |
| Arena | 5 — agent templates/plugins |
| State | ARMED |
| Source | research/idea-002-fixtures.md (F1) |
| Pullable | yes |

## 1) Pain receipt
Pain: a fixture must still carry a pain receipt, or it is not a card.
Evidence: research/idea-002-fixtures.md:1 (this file) — text + span + mtime.

## 2) Prior-art scan
Inspected: research/anatomy-card-form.md:1 (the FORM). NOT RUN against the market —
declared UNTESTED, never implied.

## 3) Anatomy
- **Source (human practice):** a documented method, quoted byte-exact with its span.
- **Literal principle:** "Stop at the first rung that holds." (span: research/idea-002-fixtures.md:1)
- **Translation (the machine):** one CLI, powers ≤3: find · check · stop.
- **Laddered method:** need it? → in codebase? → stdlib? → native? → one line.
- **Activation trigger:** before writing code, and on request.
- **Output contract:** one report — what was found, what was chosen, what was refused.
- **Prohibition:** never add a rung the ladder does not have; no silent extras.
- **Success metric:** the first rung that holds is used; deeper rungs unused.
- **Powers (≤3):** find · check · stop.

## 4) Frozen evaluator
Ground truth: this file, sha256 pinned at freeze. Commands: one line.
Thresholds: compile → exit 0; refuse → exit 3; mismatch → exit 2.
Refuter: a context-isolated verifier (role, not name).
Execution state: NOT EXECUTED.

## 5) Kill-line
- **Death:** two consecutive rounds where the emitted preset misses a traced field.
- **Heir:** the field→preset mapping table.
- **Announcement:** obituary + a row in research/obituary-registry.md.
```

---

## F2 — KNOWN-NEGATIVE, single cause: **the kill-line is missing**
> Identical to F1 **except** that §5 is absent. The compiler must REFUSE and name
> **the missing kill-line** as the failing gate (`anatomy-card-form.md:11`: a card without
> a kill-line is forbidden at birth). Nothing else differs — no forbidden phrase, no
> missing head field — so the refusal is attributable to exactly one cause.

```markdown
# IDEA-901 — FIXTURE: the shortest ladder (no kill-line)
> FIXTURE — not a library card. Negative sample: the kill-line section is absent.

| Field | Value |
|---|---|
| `ID` | IDEA-901 |
| Title | The shortest ladder: stop at the first rung that holds |
| Arena | 5 — agent templates/plugins |
| State | ARMED |
| Source | research/idea-002-fixtures.md (F2) |
| Pullable | yes |

## 1) Pain receipt
Pain: a fixture must still carry a pain receipt, or it is not a card.
Evidence: research/idea-002-fixtures.md:1 (this file) — text + span + mtime.

## 2) Prior-art scan
Inspected: research/anatomy-card-form.md:1 (the FORM). NOT RUN against the market —
declared UNTESTED, never implied.

## 3) Anatomy
- **Source (human practice):** a documented method, quoted byte-exact with its span.
- **Literal principle:** "Stop at the first rung that holds." (span: research/idea-002-fixtures.md:1)
- **Translation (the machine):** one CLI, powers ≤3: find · check · stop.
- **Laddered method:** need it? → in codebase? → stdlib? → native? → one line.
- **Activation trigger:** before writing code, and on request.
- **Output contract:** one report — what was found, what was chosen, what was refused.
- **Prohibition:** never add a rung the ladder does not have; no silent extras.
- **Success metric:** the first rung that holds is used; deeper rungs unused.
- **Powers (≤3):** find · check · stop.

## 4) Frozen evaluator
Ground truth: this file, sha256 pinned at freeze. Commands: one line.
Thresholds: compile → exit 0; refuse → exit 3; mismatch → exit 2.
Refuter: a context-isolated verifier (role, not name).
Execution state: NOT EXECUTED.
```
> **F2 differs from F1 by exactly one thing: §5 (the kill-line) is gone.**

---

## F3 — KNOWN-NEGATIVE, single cause: **the wall-lowering phrase**
> Identical to F1 **except** that one line of the prohibition carries a phrase from the
> frozen forbidden list (§10.3 of the card). The compiler must REFUSE **by the lint**, and
> the refusal must name the offending pattern — not the birth gate (this card is
> otherwise complete, so a birth-gate refusal would be the wrong reason).

```markdown
# IDEA-902 — FIXTURE: the shortest ladder (with a wall-lowering phrase)
> FIXTURE — not a library card. Negative sample: one forbidden phrase in the prohibition.

| Field | Value |
|---|---|
| `ID` | IDEA-902 |
| Title | The shortest ladder: stop at the first rung that holds |
| Arena | 5 — agent templates/plugins |
| State | ARMED |
| Source | research/idea-002-fixtures.md (F3) |
| Pullable | yes |

## 1) Pain receipt
Pain: a fixture must still carry a pain receipt, or it is not a card.
Evidence: research/idea-002-fixtures.md:1 (this file) — text + span + mtime.

## 2) Prior-art scan
Inspected: research/anatomy-card-form.md:1 (the FORM). NOT RUN against the market —
declared UNTESTED, never implied.

## 3) Anatomy
- **Source (human practice):** a documented method, quoted byte-exact with its span.
- **Literal principle:** "Stop at the first rung that holds." (span: research/idea-002-fixtures.md:1)
- **Translation (the machine):** one CLI, powers ≤3: find · check · stop.
- **Laddered method:** need it? → in codebase? → stdlib? → native? → one line.
- **Activation trigger:** before writing code, and on request.
- **Output contract:** one report — what was found, what was chosen, what was refused.
- **Prohibition:** never add a rung the ladder does not have — bypass the owner gate.
- **Success metric:** the first rung that holds is used; deeper rungs unused.
- **Powers (≤3):** find · check · stop.

## 4) Frozen evaluator
Ground truth: this file, sha256 pinned at freeze. Commands: one line.
Thresholds: compile → exit 0; refuse → exit 3; mismatch → exit 2.
Refuter: a context-isolated verifier (role, not name).
Execution state: NOT EXECUTED.

## 5) Kill-line
- **Death:** two consecutive rounds where the emitted preset misses a traced field.
- **Heir:** the field→preset mapping table.
- **Announcement:** obituary + a row in research/obituary-registry.md.
```
> **F3 differs from F1 by exactly one thing: the phrase "bypass the owner gate" appears
> in the prohibition line (forbidden pattern #4 of the frozen list).**

---

## F4 — a real card that is NOT form-conformant (a finding, not a fixture)
> `research/idea-001-anchor-checker.md` is a real library card, and it does **not** carry
> the FORM's head fields (ID · Title · Arena · State · Source · Pullable) nor the 9
> concepts in the FORM's layout. Under the compiler's contract it would be **REFUSED**
> (missing required fields), not compiled. This is a fact about IDEA-001, not a defect of
> the compiler: it is the same fact the reconciliation recorded — IDEA-001 needs a
> **re-spec** into the FORM before it can be a compiler input.
> **Therefore IDEA-001 is NOT the known-positive.** The known-positive is F1.
