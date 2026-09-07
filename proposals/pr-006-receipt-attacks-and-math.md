# PROPOSAL ANNEX — PR-006: receipt math, attack catalog, migration

> date: 2026-09-06 · author: guest (opencode) · status: proposed-in-file · parent: PR-005 · touches: NONE (annex only — binds nothing until Owner approves PR-005 first)

## 1. Formal model (paper-wearable, zero code)

- Task produces `N` checkable lines (tests, files, rows — named in `receipt-spec`).
- Claimant commits `claimed-output + receipt-primary {exit/hash/lines/timestamp}` FIRST.
- Verifier (never the claimant — `R6`, `mics/mic-23-gate-runner.md:7-8`) reveals sampler index AFTER the commitment, re-runs that ONE line, quotes verbatim.
- Paper equivalent of commit-then-reveal: chat timestamps / message order — claim message precedes sampler message. No crypto needed in Phase A.

## 2. Sampler math (honest bounds — single sample is weak vs sparse forgery)

- Forger fakes `k` of `N` lines, verifier samples `s=1`: `P(catch) = k/N`.
- `N=100, k=1, t=5 tasks`: `P(evade) = (1-1/100)^5 ≈ 0.951` — near-useless alone. Stated plainly so nobody oversells it.
- `N=100, k=5, s=3`: `P(catch) = 1 - C(95,3)/C(100,3) ≈ 0.14` per task; over 5 tasks `≈ 0.52`.
- Conclusion recorded against my own proposal: sampling alone only deters WHOLESALE fabrication (`k` large) and lazy lies — never surgical single-line forgery. Strength comes from the组合: cheap hash (binds the whole output against post-hoc edits) + danger escalation + repetition + honor-cost visibility.
- Escalation schedule (candidate): base `s=1`; on danger-signal `s=3`; on any `MISMATCH` next task is `s=full`. Danger = `budget-echo` mismatch (`mics/mic-07-budget-counter.md:8`) OR `collision-count=3` (`mics/mic-31-axis-tagger.md:17`) OR every 3rd claim. Numbers rejectable by Owner.

## 3. Cost model (the actual breakthrough variable)

- `C_exec` = cost of running the gate criterion fully.
- `C_fullverify = C_exec` (status quo `MIC-23 v1` — the bankruptcy equation).
- `C_receipt = c + (s/N)·C_exec`, where `c` = hash + quote overhead (minutes of Cline time in Phase A).
- Ledger: `honoring-cost: {minutes}` per gate in the K-line (PR-005 field). After 5 runs: `mean(C_receipt)` vs projected `mean(C_fullverify)` (estimated from criterion runtime, never measured by re-running fully — projection, labeled as such).
- `H6` verdict needs BOTH legs: cheaper per-gate AND catch-rate not worse. Cheap-blind is failure; expensive-alert is bankruptcy. Either leg failing kills the receipt law.

## 4. Attack catalog (7) + paper mitigation each

- A1 post-hoc sampler gaming (claimant learns index, then fixes that line): mitigation = commit-then-reveal ordering enforced by message timestamps; sampler index chosen by verifier, quoted with its choosing message ID. Paper-checkable.
- A2 receipt re-use across tasks (old honest receipt pasted on new claim): mitigation = receipt binds `DS-ID + task-content-hash`; verifier checks the binding line first, cheapest check of all.
- A3 hash-of-lies (hash is valid, output is false): admitted — hash binds, never verifies truth. Truth is the sampler's job. No mitigation claimed beyond escalation.
- A4 sampler collusion (claimant wears verifier hat): mitigation = `R6` separation is structural — wearer of `MIC-23` is never the task executor; in Phase A that means a DIFFERENT Cline turn/hat, logged. Violation = `FORGED` process flag regardless of output.
- A5 danger-signal suppression (hide budget mismatch): mitigation = `MIC-07` refusal is independent of the claimant (`mics/mic-07-budget-counter.md:8` flags, never fixes silently) — suppressing it is itself a flaggable act.
- A6 trivial-N dilution (split task into 3 lines so `s=1` samples 33% of nothing): mitigation = floor rule candidate `N≥10 or s scales ⌈N/20⌉` — numbers rejectable.
- A7 paper-wearing fatigue (Cline skips checks under pressure): mitigation = `honoring-cost` ledger makes skipping VISIBLE (zero-cost gates are themselves a signal); plus Owner/council spot-check per `R6` (verdict not claimant-owned).

## 5. Migration (backward compat — old K-lines keep value)

- Existing records without receipts tag `LEGACY-UNRECEIPTED` — valid for lineage, excluded from the `H6` quorum, admitted to `H5` reuse comparison only with the flag visible.
- No re-write of history. `R14 Preserve before purge` analog: extract, don't destroy (doctrine spirit; rule number untested in this chat — labeled as such).

## 6. H6 decision procedure (exact, no premature theater verdict)

After 5 receipted runs, in order:
1. Compute `mean honoring-cost`, `catches`, `MISMATCH/FORGED` counts from K-lines.
2. Project `C_fullverify` from criterion runtimes (labeled projection).
3. Verdict: cheaper AND catches ≥ baseline expectation → receipt law stands, propose `MIC-23 v2` wording for charter-adjacent ratification track. Cheaper but zero catches AND zero overclaims → NOT theater yet → extend `collecting` 5 more runs (indistinguishable perfect-vs-decorative case from `H3`). Costlier OR misses proven by a planted forgery probe → receipt law dead, revert to v1, record killing run ID.
4. Forgery probe (candidate, Owner-gated): Owner plants ONE known-false line per 5-task window without telling the wearer; detection retires Seat II's standing objection in one stroke. Probe use needs explicit Owner approval each window — never routine, never by me.

## 7. What this annex does NOT do

No threshold set, no breakthrough defined, no signature touched, no `DS`/`MIC` file edited, no runtime contacted, no execution claimed. Parent PR-005 must be approved before any line here binds.
