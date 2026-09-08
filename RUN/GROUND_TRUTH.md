# GROUND_TRUTH — SERIES 2 · R0 baseline numbers (computed by command, 2026-09-08)

> Rule: every number below is the OUTPUT of the command beside it, run in this session
> (UTC 2026-09-08T03:58:18Z). If a later round prints a different number, that is a
> finding — update here by APPENDING a dated line, never by editing this block.

## Contested counts — settled on disk (R0, 2026-09-08)

| Number | Value | Command that produced it | Notes |
|---|---|---|---|
| total `.md` files (excl .git) | 310 | `find . -name '*.md' -not -path './.git/*' \| wc -l` | hept/LOG.md:1 claims 270 workspace files — STALE candidate for R1 |
| total files (excl .git) | 317 | `find . -type f -not -path './.git/*' \| wc -l` | |
| mill/ md files | 139 | `find mill -name '*.md' \| wc -l` | |
| phantom/ md files | 30 | `find phantom -name '*.md' \| wc -l` | — |
| hept/ md files | 24 | `find hept -name '*.md' \| wc -l` | — |
| bore/ md files | 26 | `find bore -name '*.md' \| wc -l` | — |
| well/ md files | 30 | `find well -name '*.md' \| wc -l` | — |
| research/ md files | 14 | `find research -name '*.md' \| wc -l` | — |
| charters/ md files | 4 | `find charters -name '*.md' \| wc -l` | — |
| mics/ md files | 4 | `find mics -name '*.md' \| wc -l` | — |
| proposals/ md files | 13 | `find proposals -name '*.md' \| wc -l` | 10 pinned pr-0NN + 3 new proposals + README |
| templates/ md files | 5 | `find templates -name '*.md' \| wc -l` | CH DS MIC PROPOSAL RJ |
| mill/FENCE.md row count | 37 | `wc -l < mill/FENCE.md` | file lines, incl. header |
| mill/FENCE.md data rows | 34 | `grep -cE '^\| F[0-9]{4}' mill/FENCE.md` | F0001..F0034 — settles n_fence (STATE.md says 34 ✓) |
| INTEGRITY.md hash-line count | 44 | `grep -cE '^[0-9a-f]{64}' INTEGRITY.md` | header (line 24) claims 42 → MISMATCH, R3 target |
| INTEGRITY.md header claim | 42 | `grep -n 'files' INTEGRITY.md \| head -5` | line 24: "## Pinned hashes (sha256) — 42 files" |
| CONTEXT.md byte size | 38017 | `wc -c < CONTEXT.md` | 2026-09-07 18:35 stamp |
| HEAD sha (baseline) | 58762edc634247f9cfad9b7385dc7cd4f54526ae | `git rev-parse HEAD` | commit 2026-09-07 18:40:58 +0300 |
| CONTEXT-mentioned pin claim | 43 | `CONTEXT.md` decision-log tail: "PINS 0-mismatch at close (43 files pinned...)" | third distinct pin count (42/43/44), R3 target |
| hept/LOG.md:1 count claim | 270 | `sed -n '1p' hept/LOG.md` | "270 workspace files cataloged" — stale vs 310/317, R1 target |

## Version claims on disk (R1 STALE candidates, listed not reconciled)

| Source | file:line | Claim |
|---|---|---|
| VERSION.md | :1 | "# VERSION — v0.00001" |
| CONTEXT.md | decision-log tail | "charter signature opened version v0.0001 per VERSION.md scale" (X0002) |
| AGENTS.md | :39 | "pending Owner batch signature" (vs RATIFICATION SIGNED ×4 — X0001) |
| ONBOARDING.md | :9 | "NOT ratified" (X0001 stale side) |
| ZERO-READINESS.md | :14 | "[ ] Owner batch signature" (X0001 stale side) |
| RATIFICATION-BATCH-001.md | :13 | "[x] CH-001 prime · [x] CH-002 council · [x] CH-003 maker · [x] CH-004 chief-of-staff" |

## Ops/budget pointers (context for later rounds — computed, not edited)

- `mill/STATE.md:2` — `current_op: 0501`; `mill/STATE.md:3` — `wave: P04_DONE`.
- `mill/STATE.md:6` — `n_fence=34` (matches fence data rows 34 ✓).
- `hept/runtime/BUDGET.md:6-7` vs `hept/runtime/STATE.md:6` — quanta 0 vs 3 (R1 candidate).
- `mill/WAVE_INDEX.md` — two wave plans lines 3-5 vs 6-13 (R1 candidate); no P01 row.
- `mill/LOG.md` tail — not append-ordered (R1 candidate).

## LIVE-TREE reconciliation (appended 2026-09-08T07:0xZ — not an edit of the table above)

- The tree is LIVE: a parallel session (per CONTEXT.md decision-log: "The parallel
  OpenCode session (supervisor niche, P17) may write after close — post-close changes
  belong to the next session's boot check") wrote into bore/days/D2/, hept/days/D1/,
  bore/ledger/, hept/ledger/, research/reconstruction-v2.md, LOG.md, OPS_QUEUE.md during
  R0. Evidence: `find . -type f -not -path './.git/*' -newermt '10 minutes ago'` listed
  those paths; git status shows them as M/?? — uncommitted work not mine.
- The R0-boot snapshot above (310 md / 317 files, 03:58Z) is the baseline for the SERIES
  commit; the live tree at re-count (07:04Z, via RUN/tools/count.sh) reads
  total_md=337 / total_files=341, of which RUN/ adds ~17 files and the parallel session
  adds the rest. R1 must treat both snapshots as ground truth and the difference as a
  live-session artifact, NOT as a contradiction of R0.
- Consequence for the series: every round's count claims must be stamped with the
  timestamp of the run, and changes by the P17 parallel session between rounds are
  expected, logged (RUN/LEDGER.md), not chased.

---
obituary: this file dies (is superseded) the moment a later round's command prints a
number that differs from a row above AND the round appends a dated correction line here;
a silent edit of a row above is the violation that kills the series' ground truth.