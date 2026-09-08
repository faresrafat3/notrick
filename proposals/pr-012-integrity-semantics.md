# PROPOSAL — P-012 (integrity semantics: pin-set split + citation time-axis)
> the ONLY thing a guest may create. Filed in proposals/. Never edited after filing
> (corrections = a new proposal citing the old one). Owner reads, rules, and only an
> approved-docs moment moves its content into doctrine (AGENTS.md:61).

## Meta
- **ID:** P-012 · **filed:** 2026-09-08 · **by:** S2-20260908-01 (limit-sweep G3, scenarios §4/§5)
- **boot-gate quote (matches this session's first reply):** "# VERSION — v0.00001" · rights: read everything; write ONLY research/, proposals/, OPS_QUEUE checkbox state, LOG.md, STATE.md, CONTEXT decision-log tail · wall: no execution, no runtime, no fuel, no network; no doctrine edits; Owner-by-right fields stay empty.
- **type:** doctrine-CANDIDATE — two INTEGRITY/R10 semantic amendments; zero legal effect until ruled.

## The proposal (one sentence)
Split the integrity pin set (doctrine stays globally pinned; research/ artifacts pin per-round
inside their own round receipts) and add a time axis to R10 citations (quote + file:line +
mtime-or-sha256-at-cite, so two opposing quotes of one file are an UPDATE event, not a
contradiction) — because today the pin file freezes legally-evolving research files and the
crossword grid cannot arbitrate quotes taken at different moments.

## Gap (one sentence + intersecting entries per R10)
INTEGRITY.md pins 42 files of which 11 are living research/ outputs (:46-58) while research/
is a legal write lane (STATE.md:13) — so legitimate work mass-produces "TAMPERING or
unlogged change" violations (INTEGRITY.md:5-6), each resolvable only by the Owner
(:14), and R1's live drift already defeated timestamp-free quotes twice.

Intersects: `INTEGRITY.md:5-6,14,24,46-58` (the pinned set + re-pin rule) · `state-audit-2026-09-06.md`
§أ-5 row أ-4/5 (pin count already drifted 42/43/44 — باقٍ) · `RUN/receipts/R001.json`
negative_results "live drift defeats timestamp-free quotes" + failure_mode_named (S-07/S-25
timestamp-bound; S-09b deleted unresolvable) · `RULES.md:46` (R10 — gains a time axis, loses
nothing) · `pr-010-stale-reentry.md` NOTE-1 (line-span drift: same root) · `limit-sweep.md`
§4/§5 (the derivation) · `verdict-master.md §ز-6` rows 12-13 (this proposal answers them).

## The amendment (verbatim candidate text, two clauses)
1. **Pin-set composition:** INTEGRITY pins doctrine only (RULES · charters/ · templates/ ·
   VERSION · AGENTS · ONBOARDING · ZERO-* · INTEGRITY · violations.md · mics/). Research
   artifacts are frozen per round inside that round's receipt (head hash + per-file sha256),
   never in the global pin file. Rationale: doctrine changes only via approved-docs
   (AGENTS.md:61) so doctrine pins are stable; research is the workshop and mutates by right.
2. **Citation time-axis:** every citation in a claim carries (verbatim text · file:line ·
   mtime-or-sha256-at-cite). R10 judges a claim against "the settled entry AS-OF the cited
   moment"; disagreement between two moments is an UPDATE needing an approved-docs moment or
   re-pin — not a contradiction to be ruled by whoever re-opens the file third.

## Owner ruling
- {clause 1: ADOPT | REJECT, reason | HELD} · {clause 2: ADOPT | REJECT, reason | HELD}
- *(empty-by-right — the session agent NEVER fills this)*

## Its own obituary (ARC dogfood — pre-registered)
- **Falsifier:** if after adoption, the first 3 post-adoption integrity checks produce ZERO
  fewer false-violations than the current regime, OR one legitimate change is ever ruled
  "tampering" under the new semantics → this amendment misfires → retire via its own ruling
  block (lesson logged, heir = the round-receipt pattern that already works, R001).
- **Measurer:** supervisor-on-duty or blind verifier — never the proposing session
  (arc-protocol.md:86-87 pattern).
