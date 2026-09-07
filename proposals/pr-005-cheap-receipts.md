# PROPOSAL — PR-005 (my deep point: cheap receipts)

> date: 2026-09-06 · author: guest (opencode) · status: proposed-in-file · touches: templates/DS.md + mics/mic-23-gate-runner.md (candidates only, no edits made)

## The gap + intersecting entries

`cost(verify) = cost(execute)`: `mics/mic-23-gate-runner.md:7` re-runs the full criterion, so checker and cheat cost the same; at swarm parallelism this bankrupts the fuel before `H3`'s 5-run quorum (`hypotheses-ledger.md:22-23`; fuel warning `research/provider-exchange-note.md:7-8`). `MIC-07` echoes budgets (`mics/mic-07-budget-counter.md:6-8`) and `MIC-31` tags axes (`mics/mic-31-axis-tagger.md:16-17`) but nobody prices the checking itself.

Lineage (all landed in `research/ten-axis-knowledge-map.md` except where noted): `Burnet 1957` negative selection · `GMR85` prover/verifier split (spirit, no crypto) · `Pacioli 1494` double entry · `Gause 1934` (`knowledge-map:6`) · `Minsky K-lines` (`:20-21`). New-body claim: receipt + honor-cost + thymus-test land as template field + MIC trigger + charter-clause-strengthener.

## Proposed text (optional-additive, backward-compatible — old fields stay valid)

```
## Verification gate
- criterion: {runnable — never narrative}
- receipt-spec (optional): {cheap check + hash algo + sample rule N=…} ← form only
## Result record
- claimed: {…}
- receipt-primary: {exit / hash / lines / timestamp — verbatim}
- receipt-sample: {sampler index chosen AFTER claim · output verbatim}
- K-line add: gate: {hash-match | MISMATCH | UNVERIFIED} · honoring-cost: {minutes}
```

`MIC-23 v2` trigger candidate: `verdict claimed AND (danger OR sample-due)` where danger = `budget-echo` mismatch OR `collision-count=3` OR every 3rd claim; act = verify receipt cheaply + re-run ONE sampler-chosen line, quote both; refusal = no receipt-spec → `UNVERIFIED`, hash mismatch → `FORGED`. Budget: near-zero plus one line — never full re-run.

Thymus-test candidate (strengthens, not replaces, Kant+Gause in `charters/ch-001-prime.md:37-39`): a forged charter must FAIL one named out-of-niche task; a charter passing everything is rejected as generalist (fails `Gause`).

## Forcing result

`PENDING` — landing criterion: first real `DS` carrying a forged-or-missing receipt. Until then this is pre-registered design, `untested`.

## Falsifier (pre-registered as H6 candidate)

`H6`: receipted tasks show lower `honoring-cost` per catch than full re-runs across the first 5 runs. If no cost or catch difference across quorum, or if `Seat II` sustains its standing objection (layered-unproven critique held in chat 2026-09-06), the receipt law is theater — revert to `MIC-23 v1` and record the killing run ID.

Self-red-team held: Seat I (simplicity cost — contested, backward-compat condition), Seat II (no evidence yet — sustained until first catch), Seat III (template churn — backward-compat only), Seat IV (near intent in spirit, far in letter — conditional).

## Owner action needed (three independent approve-or-kill lines)

1. Optional `receipt-spec + honoring-cost` fields in first trial `DS` — form only.
2. `MIC-23` trigger `any-claim → danger OR sample` for manual Phase-A wearing by Cline — behavior only, no code.
3. Register `H6` text above in the ledger — registration only, no confirmation claimed.
