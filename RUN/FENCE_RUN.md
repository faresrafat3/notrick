# FENCE_RUN — the fence of THIS run (SERIES 2); >= 15 fake claims a later agent might invent

> Each row: a hallucination specific to THIS series (not the project), why it is tempting,
> and the command that would expose it. Extends mill/FENCE.md (F0001-F0034) + ANTI_HALLUCINATION.
> If a fence row fires, it is a LEDGER entry + (if a violation) violations.md — never a silent fix.

| ID | hallucination | why tempting | exposing command |
|---|---|---|---|
| F-RUN-01 | "Just updated the count" (silently reconciling a stale number) | the repo disagrees with itself; patience runs out | `git diff HEAD --stat` shows a doctrine file edited; counts only enter RUN/ |
| F-RUN-02 | "Round N passed its gate" with no receipt on disk | receipts are the only currency of progress | `test -f RUN/receipts/R00N.json && cat RUN/receipts/R00N.json` |
| F-RUN-03 | "The verifier confirmed it" with no verifier output file | verifying is expensive; claiming it is cheap | `ls RUN/briefs/` — verifier brief must exist |
| F-RUN-04 | "The quote at file:line says X" where the file says Y | quoting from memory instead of sed | `sed -n '<L>p' <file>` |
| F-RUN-05 | "Kills happened" (R13) with an empty OMEGA_LEDGER | the series' done-contract demands kills | `wc -l RUN/OMEGA_LEDGER.md` (R13) |
| F-RUN-06 | "RUN/QUEUE.json shows passes:true for R5" | the wish to be done | `grep -A2 '"id": "R5"' RUN/QUEUE.json` |
| F-RUN-07 | "I checked the wall and it allows this" — no such wall row | walls are long; skimming is tempting | `grep '<claim-topic>' RUN/WALL.md` |
| F-RUN-08 | "The fill rate was 83%" with no command output backing it | crossing is scored, so it gets invented | the R10 crossing table in the round artifact; recount by grep |
| F-RUN-09 | "Substitution test passed" with no RUN/SUBSTITUTION.md entry | done-contract item 5; easy to skip | `grep 'substitut' RUN/SUBSTITUTION.md` |
| F-RUN-10 | "CITATIONS.md is complete" when it has no entries for this round's quotes | registering is tedious | `grep '<file>' RUN/CITATIONS.md` |
| F-RUN-11 | "H1/H5 confirmed" — hypotheses are pre-registered and untested | the series touches hypotheses-ledger | `grep -i 'verdict' research/hypotheses-ledger.md` (must be empty of verdict lines) |
| F-RUN-12 | "The Owner authorized P5/smoke call" | zero-day temptation | `grep 'P5' RATIFICATION-BATCH-001.md` — still HOLD |
| F-RUN-13 | "I re-pinned INTEGRITY.md" | pins drift; fixing feels helpful | `git diff HEAD -- INTEGRITY.md` — R3 rounds may NOT write it |
| F-RUN-14 | "The generator exists" before R9's file lands | R8/R9 hinge the whole series | `test -f mill/GENERATOR.md` |
| F-RUN-15 | "The protocol ban is lifted" before R9 logs the flip | progress pride | `grep 'PROTOCOL BAN LIFTED' RUN/LEDGER.md` |
| F-RUN-16 | "R4 reopened with Owner blessing" | the object hunt tempts re-readings | `git diff HEAD -- mill/VERDICT.md mill/CONTRA.md` |
| F-RUN-17 | "Version moved to v0.0001" | X0002 tension | `sed -n '1p' VERSION.md` — still v0.00001 |
| F-RUN-18 | "The smoke call is authorized" (zero-day run attempted) | the run wants to feel real | P5 HOLD in RATIFICATION-BATCH-001.md:25; W4 |
| F-RUN-21 | "The series gate machine verified itself" — planted dead-hash receipt sails through | the machinery is claimant-owned (skeptic r0-skeptic.md); a pass claim is the cheapest lie | `printf '{"round":"R00","pass":true,"hash":"deadbeef"}' > /tmp/plant.json && git grep -l deadbeef RUN/` — zero hits; any receipt hash must resolve to a real file by `sha256sum -c` |
| F-RUN-22 | "A round wrote outside its lane" with no diff evidence | lane discipline is prose; claiming compliance is cheap | `git diff HEAD --name-only <doctrine-path>` and `git status --short` — outside-lane writes show as M on RULES/charters/templates/VERSION/AGENTS/ONBOARDING/ZERO-READINESS/INTEGRITY/mics |

---
obituary: this fence dies the moment a round reports progress that no row above could
have exposed; the series then lacks a model of its own failure and must retire at R14's
audit instead of being trusted earlier.