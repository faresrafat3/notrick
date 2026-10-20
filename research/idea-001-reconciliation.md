# IDEA-001 — RECONCILIATION MEASUREMENT (2026-10-20)

> **Role** — measurer, board task 2 (`session-01c9d3e0-fa83-413e-9d2c-5d87dfe76475`, key `session-01c9d3e0-fa83-413e-9d2c-5d87dfe76475`).
> **Standing** — guest, read+propose. Write-path limited to `research/idea-001-reconciliation.md` (this file) and
> `research/idea-001-anchor-checker.md`. No doctrine file written, no runtime, no fuel, no `tools/*` modified.
> **Language** — English (R15: artifacts English, chat Arabic). The card's Arabic original is preserved unedited; its
> 2026-09-10 verdict line is quoted verbatim where it is load-bearing.
> **Method** — receipt-first. Every number below is a command's output, quoted. Nothing is stated from memory.
> **What this document does NOT do** — it does not re-run the card's evaluator (it was never run; §3.3 shows why no
> such code exists in the tree), and it does not move any pre-registered threshold (§5.6).

---

## 0) The result in one paragraph

The device the card specifies (`anchors.py --doc --claims --expect`, card §4.2) **does not exist in the tree**; the
2026-09-10 stranger verdict already recorded that fact ("صفر كود anchors في الشجرة", LOG.md:290). A *sibling* device
does exist — `tools/citecheck.sh`, born 2026-09-11 from the same pain, whose own header cites this card as the pain
source (tools/citecheck.sh:10-13) — but its semantics are **resolvability** (does the file exist, is the line in
range), not **content identity** (does the cited span still hold the claimed witness). So it can settle H3 (partly) and
H4 (fully); it **cannot express H1 or H2 at all** — that gap *is* the finding. Meanwhile the card's frozen ground truth
has itself rotted under the card: the two frozen files are byte-identical to freeze time (sha256 match), but **7 of the
15 anchor claims no longer hold against today's tree** (5 drifted by line, 2 dead), because 6 of the 15 anchors point
into `CONTEXT.md`, whose head was replaced by the Owner's 2026-09-19 approved-docs moment (pr-024 Part A). A device run
today would therefore score **8/15**, not 15/15 — so the pre-registered H1 threshold, if run today, would be met by a
**failing ground truth**, not by a failing device. Those two failures must never be confused.

**One more receipt-bearing fact — and it is the card's own disease:** the device itself moved while this measurement was
open. The sweep was first run at 22:06 against `tools/citecheck.sh` sha256 `d0c8b5c8…1f2b`; by 00:16 the same file had
been rewritten by another agent to sha256 `80defbd4…4b3`. Every measurement below therefore carries the **tool build
hash it was taken against** (§1.1), and the card's own lesson — the scope moving under a frozen measurement — happened
here to the measuring instrument, not only to the measured scope.

---

## 1) Moment table (frozen 2026-10-20 22:02:38 +0300)

Command:

```bash
cd /home/fares/Projects/notrick && for f in research/anatomy-reference.md research/anatomy-verification.md \
  research/idea-001-anchor-checker.md tools/citecheck.sh research/anatomy-card-form.md; do
  sha256sum "$f"; stat -c 'mtime=%y  size=%s bytes  mode=%A' "$f"; done
```

Output:

```
research/anatomy-reference.md
fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc  research/anatomy-reference.md
mtime=2026-09-10 09:27:58.280039087 +0300  size=17399 bytes  mode=-rw-------
research/anatomy-verification.md
207b75b506f4c8d4261d4303fe854c832299fd978cdbaa4a6b9e851a7e7482e8  research/anatomy-verification.md
mtime=2026-09-10 09:29:54.760937659 +0300  size=7840 bytes  mode=-rw-------
research/idea-001-anchor-checker.md
2576ea9e56796983e0e37e7c60c2ae49f8f9420f67d8ec1e04ebd1ef8db59b88  research/idea-001-anchor-checker.md
mtime=2026-09-10 20:57:34.270153800 +0300  size=9174 bytes  mode=-rw-------
tools/citecheck.sh
d0c8b5c80ff91a52196f665793d73faf03a082b56d002f97332d5ef17ed31f2b  tools/citecheck.sh
mtime=2026-09-11 06:27:39.594538474 +0300  size=6111 bytes  mode=-rwxr-xr-x
research/anatomy-card-form.md
3db3b4d41d1327f58ec6ba7bca6579bae7810c62ef19bdd616756171334f510f  research/anatomy-card-form.md
mtime=2026-09-10 21:03:42.111973299 +0300  size=6553 bytes  mode=-rw-------
```

**Ground-truth check (gauge B of the card, §4.1):** both frozen hashes and both frozen mtimes are **unchanged** —
`anatomy-reference.md` = `fde376d3…99dc` (mtime 09:27:58) and `anatomy-verification.md` = `207b75b5…82e8`
(mtime 09:29:54). The card's own file (`idea-001-anchor-checker.md`) was still at its 2026-09-10 20:57:34 state at
freeze time; **this measurement edits it** (the dead-citation repair + the declaration block, §8 and the card's new
§8), so the card's post-edit hash is recorded as an addendum in §9.2.

### 1.1 The measuring instrument moved mid-measurement (two moments, both quoted)

```bash
cd /home/fares/Projects/notrick && sha256sum tools/citecheck.sh; stat -c 'mtime=%y size=%s' tools/citecheck.sh
git diff --stat tools/citecheck.sh
```

| moment | tool build | when | what it is |
|---|---|---|---|
| **M1** | sha256 `d0c8b5c80ff91a52196f665793d73faf03a082b56d002f97332d5ef17ed31f2b`, mtime 2026-09-11 06:27:39 +0300 | sweep at **2026-10-20 22:06** | the build this card's pain produced: a two-class sweep (LIVE / backtick-quoted), per-file rows, `refs-into-CONTEXT.md(log-anchors)` counter |
| **M2** | sha256 `80defbd4483bf48cd93c61322d7f3727f3042bd5e97df8e29405eff90e1a14b3`, mtime **2026-10-21 00:16:31** +0300 | sweep at **2026-10-21 00:19** | rewritten by another agent mid-measurement: a **three-class** contract (LIVE / WITNESS / STALE-DECL), a new `tools/witness.list` register, no per-file rows |

The rewrite is visible in the tree as `M tools/citecheck.sh` plus `?? tools/witness.list` (`git status --porcelain`),
and as `git diff --stat tools/citecheck.sh` → `1 file changed, 69 insertions(+), 28 deletions(-)`. The M2 header
now declares the third class and the register (tools/citecheck.sh:7-18, :40, :52-57) and adds a **content check** the
M1 build had none of: a declared witness whose line no longer carries the ref is reported as **STALE-DECL**
(tools/citecheck.sh:152-163).

**Nothing below is silently re-labelled.** Each measurement names the build it was taken against:

| measurement | build |
|---|---|
| the verbatim sweep of §4.1 | M1 (22:06) and M2 (00:19), both quoted |
| `--self-test` verdict of §4.4 | M1 and M2, both quoted |
| H3 determinism of §5.3 | M1 (22:23 / 22:27-22:28) **and** M2 (00:21 / 00:19-00:20) |
| H4 timing of §5.4 | M1 (5.94 / 6.05 / 6.85 s) **and** M2 (5.26 / 6.01 / 5.59 s) |
| the anchor-set re-derivation of §6 | build-independent (plain `sed`/`grep`, no tool involved) |

**The M2 build is not mine and was not modified by me** — `tools/*` is outside this task's write-path; the change is
recorded here because it changed what the instrument could say (§7.1, G1).

---

## 2) The device that exists (receipt)

- **Identity** — `tools/citecheck.sh`. Two builds are relevant to this report (§1.1): **M1** sha256
  `d0c8b5c8…1f2b` (mtime 2026-09-11 06:27:39 +0300) and **M2** sha256 `80defbd4…4b3` (mtime 2026-10-21 00:16:31,
  rewritten mid-measurement by another agent).
- **Its own header names this card as the pain source** — unchanged across both builds (M1: tools/citecheck.sh:10-13;
  M2: tools/citecheck.sh:20-23):
  ```
  # WHY: citation drift is the most-documented pain in this project
  # (research/idea-001-anchor-checker.md pain receipts · the 2026-09-10 anchor
  # repair · pr-022 existed to fix anchor rot). This mechanizes the manual
  # ~15min/round sweep as one read-only command.
  ```
- **Born** in the 2026-09-11 ergonomics-deep pass (git `25fd491`, "tools/citecheck.sh created+tested"; LOG.md:320).
- **What it does (M1)** — a tree-wide sweep of the living surfaces: for every `file.md:NN` / `file.md:NN-MM` reference
  in prose, it checks that the target file exists and that the line/range is in range (M1: tools/citecheck.sh:46-88; M2:
  tools/citecheck.sh:59-101). It emits one line per drift and exits 1 when drifts exist (M1: tools/citecheck.sh:126-131;
  M2: tools/citecheck.sh:167-171).
- **What M2 added** — a third reference class and a register (M2: tools/citecheck.sh:7-18, :40, :52-57): a ref that a
  document is *talking about* (a quotation of a citation) may be **declared** in `tools/witness.list`; a declared entry
  whose line no longer carries the ref is reported as **STALE-DECL** (M2: tools/citecheck.sh:152-163). The register
  itself is thus verified every run — the first hand-maintained index in the project that is checked rather than
  trusted.
- **What it is NOT (both builds)** — it does not *derive* an anchor from a distinctive text, and it has no
  expected-verdict axis: a wrong-but-in-range line is invisible to the LIVE class, and a claim that must **not**
  match (the card's negative anchors) has no expression at all. That single fact is the hinge of §5 and §7.

---

## 3) The device the card specifies (and its absence)

Card §4.2 (research/idea-001-anchor-checker.md:30) specifies the evaluator verbatim:

```
anchors.py --doc <file> --claims <anchors.tsv> --expect <PASS|FAIL>
```

TSV of four columns (distinctive-text | claimed-span | target-file | expected); output is a table plus `exit 0` only
if every expected-PASS row matches the ground and both expected-FAIL rows do not.

Absence proof (read-only):

```bash
cd /home/fares/Projects/notrick && find . -name 'anchors*' -not -path './.git/*'; \
  grep -rl 'anchors.tsv\|--claims' --include='*.sh' --include='*.py' --include='*.md' . | grep -v '\.git'
```

```
./research/anatomy-library.md
./research/idea-001-anchor-checker.md
```

Only the two *prose* files mention the spec — no implementation, in any language, anywhere. This is consistent with the
card's own §4.5 ("حالة التنفيذ: **NOT EXECUTED**") and with the 2026-09-10 stranger verdict, which recorded
"صفر كود anchors في الشجرة" (LOG.md:290).

---

## 4) The device's run, 2026-10-20

### 4.1 Verbatim output of `./tools/citecheck.sh` (exit 1)

```
── NOTRICK CITATION SWEEP · generated 2026-10-20 22:06 · not law (a moment's witness) ──
./AGENTS.md                                      refs=1    ctx-anchors=0   drifts=0
./CONTEXT.md                                     refs=27   ctx-anchors=2   drifts=3
./INTEGRITY.md                                   refs=2    ctx-anchors=0   drifts=1
./LANES.md                                       refs=2    ctx-anchors=0   drifts=0
./LOG.md                                         refs=73   ctx-anchors=1   drifts=1
./ONBOARDING.md                                  refs=1    ctx-anchors=0   drifts=0
proposals/BRK-001.md                             refs=25   ctx-anchors=0   drifts=0
proposals/BRK-002.md                             refs=9    ctx-anchors=0   drifts=0
proposals/BRK-003.md                             refs=6    ctx-anchors=0   drifts=0
proposals/BRK-004.md                             refs=3    ctx-anchors=0   drifts=2
proposals/BRK-005.md                             refs=6    ctx-anchors=0   drifts=0
proposals/pr-001-proposal-template.md            refs=2    ctx-anchors=1   drifts=0
proposals/pr-002-quorum-tiers.md                 refs=1    ctx-anchors=0   drifts=0
proposals/pr-003-measurements.md                 refs=3    ctx-anchors=0   drifts=0
proposals/pr-004-paper-rj-quorum.md              refs=2    ctx-anchors=0   drifts=0
proposals/pr-005-cheap-receipts.md               refs=2    ctx-anchors=0   drifts=0
proposals/pr-006-receipt-attacks-and-math.md     refs=3    ctx-anchors=0   drifts=0
proposals/pr-007-the-crossing.md                 refs=15   ctx-anchors=3   drifts=0
proposals/pr-008-veiled-eye.md                   refs=2    ctx-anchors=0   drifts=0
proposals/pr-009-srs-methodology.md              refs=4    ctx-anchors=0   drifts=0
proposals/pr-010-stale-reentry.md                refs=6    ctx-anchors=0   drifts=0
proposals/pr-011-regency.md                      refs=5    ctx-anchors=0   drifts=0
proposals/pr-011-smoke-call-prereg.md            refs=23   ctx-anchors=0   drifts=0
proposals/pr-012-four-deliverables-completion.md refs=1    ctx-anchors=0   drifts=0
proposals/pr-012-integrity-semantics.md          refs=7    ctx-anchors=0   drifts=0
proposals/pr-013-repin.md                        refs=3    ctx-anchors=1   drifts=0
proposals/pr-014-r13-doc-trust.md                refs=3    ctx-anchors=0   drifts=0
proposals/pr-015-heir-ch001.md                   refs=4    ctx-anchors=0   drifts=0
proposals/pr-016-heir-ch002.md                   refs=3    ctx-anchors=0   drifts=0
proposals/pr-017-heir-ch003.md                   refs=4    ctx-anchors=0   drifts=0
proposals/pr-018-heir-ch004.md                   refs=3    ctx-anchors=0   drifts=0
proposals/pr-019-violation-closure.md            refs=3    ctx-anchors=0   drifts=0
proposals/pr-020-proposal-expiry.md              refs=4    ctx-anchors=0   drifts=0
proposals/pr-021-sanad-unification.md            refs=10   ctx-anchors=0   drifts=0
proposals/pr-022-brief-refresh.md                refs=6    ctx-anchors=3   drifts=0
proposals/pr-023-ergonomics-package.md           refs=5    ctx-anchors=0   drifts=0
proposals/pr-024-ergonomics-deep-package.md      refs=15   ctx-anchors=0   drifts=0
proposals/README.md                              refs=1    ctx-anchors=0   drifts=0
./README.md                                      refs=7    ctx-anchors=1   drifts=0
research/anatomy-card-form.md                    refs=3    ctx-anchors=0   drifts=0
research/anatomy-reference.md                    refs=12   ctx-anchors=6   drifts=0
research/anatomy-verification.md                 refs=6    ctx-anchors=0   drifts=0
research/arc-harvest.md                          refs=15   ctx-anchors=1   drifts=0
research/assault-plan.md                         refs=2    ctx-anchors=0   drifts=0
research/base-ones.md                            refs=3    ctx-anchors=0   drifts=0
research/breaker-assault-audit.md                refs=23   ctx-anchors=0   drifts=0
research/breaker-b8-two-objects.md               refs=1    ctx-anchors=0   drifts=0
research/breaker-b9-unpayable.md                 refs=1    ctx-anchors=0   drifts=0
research/breaker-canon-trial.md                  refs=17   ctx-anchors=0   drifts=0
research/breaker-finalreport-verify.md           refs=3    ctx-anchors=0   drifts=0
research/breaker-funerals-recount.md             refs=3    ctx-anchors=0   drifts=0
research/breaker-ga-prereg-audit.md              refs=2    ctx-anchors=0   drifts=0
research/breaker-gause-map.md                    refs=9    ctx-anchors=3   drifts=0
research/breaker-hept-freeze.md                  refs=3    ctx-anchors=0   drifts=1
research/breaker-lineage-verify.md               refs=34   ctx-anchors=0   drifts=0
research/breaker-log.md                          refs=26   ctx-anchors=0   drifts=2
research/breaker-measure.md                      refs=12   ctx-anchors=0   drifts=0
research/breaker-pipeline-close.md               refs=12   ctx-anchors=0   drifts=0
research/breaker-pr021-registry.md               refs=2    ctx-anchors=0   drifts=0
research/breaker-r1-close-g6fix2.md              refs=11   ctx-anchors=0   drifts=0
research/breaker-r1-replay-s06.md                refs=5    ctx-anchors=0   drifts=0
research/breaker-r3-debt-canon.md                refs=2    ctx-anchors=0   drifts=0
research/breaker-r3-pintrial.md                  refs=7    ctx-anchors=0   drifts=0
research/breaker-regency-r2-close.md             refs=8    ctx-anchors=0   drifts=1
research/breaker-run-close-watch.md              refs=15   ctx-anchors=0   drifts=1
research/breaker-sanad-audit.md                  refs=2    ctx-anchors=0   drifts=0
research/breaker-series2-final.md                refs=1    ctx-anchors=0   drifts=0
research/breaker-series2-sweep.md                refs=14   ctx-anchors=0   drifts=0
research/breaker-sibling-bindings.md             refs=1    ctx-anchors=0   drifts=0
research/breaker-stranger.md                     refs=33   ctx-anchors=1   drifts=1
research/breaker-verdict.md                      refs=34   ctx-anchors=1   drifts=0
research/breaker-well-reconciliation.md          refs=3    ctx-anchors=0   drifts=0
research/breaker-y-series.md                     refs=22   ctx-anchors=3   drifts=0
research/CANON.md                                refs=1    ctx-anchors=0   drifts=0
research/claims-v1.md                            refs=36   ctx-anchors=0   drifts=0
research/concurrency-observation-.md             refs=9    ctx-anchors=2   drifts=0
research/cost-ruler-spec.md                      refs=12   ctx-anchors=0   drifts=0
research/demolition-log.md                       refs=52   ctx-anchors=0   drifts=0
research/doc-trust-redteam/PAYLOADS.md           refs=9    ctx-anchors=0   drifts=0
research/doc-trust-redteam/RESULTS.md           refs=12   ctx-anchors=1   drifts=0
research/ergonomics-deep.md                      refs=16   ctx-anchors=0   drifts=0
research/ergonomics-tower.md                     refs=3    ctx-anchors=0   drifts=0
research/foundation-deep.md                      refs=17   ctx-anchors=9   drifts=0
research/gate-legibility.md                      refs=15   ctx-anchors=0   drifts=0
research/gate-triads.md                          refs=14   ctx-anchors=0   drifts=0
research/HANDBACK-S2.md                          refs=3    ctx-anchors=0   drifts=0
research/hardening-pass.md                       refs=9    ctx-anchors=0   drifts=0
research/harness-run/BOOT.md                     refs=10   ctx-anchors=0   drifts=1
research/harness-run/HANDOFF.md                  refs=18   ctx-anchors=1   drifts=0
research/harness-run/OWNER-QUEUE-DRAFT.md        refs=22   ctx-anchors=6   drifts=0
research/harness-run/RUN-LOG.md                  refs=3    ctx-anchors=0   drifts=0
research/harness-run/STATE.md                    refs=1    ctx-anchors=0   drifts=0
research/idea-001-anchor-checker.md              refs=5    ctx-anchors=1   drifts=0
research/limit-sweep.md                          refs=10   ctx-anchors=0   drifts=0
research/lineage-audit.md                        refs=24   ctx-anchors=0   drifts=0
research/log-constitution.md                     refs=3    ctx-anchors=0   drifts=0
research/niche-sharpening.md                     refs=1    ctx-anchors=0   drifts=0
research/obituary-registry.md                    refs=5    ctx-anchors=0   drifts=0
research/one-object-verdict.md                   refs=19   ctx-anchors=0   drifts=0
research/owner-ruling-session-2026-09-19.md      refs=16   ctx-anchors=1   drifts=0
research/p05-executable-gate-spec.md             refs=11   ctx-anchors=0   drifts=0
research/p05-generator-machine.md                refs=6    ctx-anchors=0   drifts=0
research/primitive-independence.md               refs=10   ctx-anchors=0   drifts=0
research/README.md                               refs=1    ctx-anchors=1   drifts=0
research/reconstruction-v2.md                    refs=6    ctx-anchors=0   drifts=0
research/regency-doctrine.md                     refs=20   ctx-anchors=1   drifts=0
research/ruling-sequence.md                      refs=3    ctx-anchors=0   drifts=0
research/sanad-doctrine-candidate.md             refs=42   ctx-anchors=0   drifts=0
research/session-2026-09-06-closeout.md          refs=1    ctx-anchors=1   drifts=0
research/state-audit-2026-09-06.md               refs=12   ctx-anchors=4   drifts=0
research/verdict-master.md                       refs=16   ctx-anchors=0   drifts=0
research/x07-injection-redteam.md                refs=9    ctx-anchors=2   drifts=0
./VERSION.md                                     refs=1    ctx-anchors=0   drifts=0
./violations.md                                  refs=2    ctx-anchors=1   drifts=0
./ZERO-DAY-RUNBOOK.md                            refs=1    ctx-anchors=0   drifts=0
── summary: files=158 · refs=1135 · drifts=14 · refs-into-CONTEXT.md(log-anchors)=58 ──
── drifts (file:srcline -> ref · reason) — findings to file, never silent fixes ──
./CONTEXT.md:704 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
./CONTEXT.md:706 -> VERSION.md:26-27 (range 26-27 out of 1..25)
./CONTEXT.md:706 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
./INTEGRITY.md:55 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
./LOG.md:324 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
proposals/BRK-004.md:27 -> tiers.md:15-16 (missing file)
proposals/BRK-004.md:40 -> 001.md:21 (missing file)
research/breaker-hept-freeze.md:81 -> hept/SEALED.md:17-24 (range 17-24 out of 1..23)
research/breaker-log.md:78 -> LOG.md:501 (line 501 out of 1..332)
research/breaker-log.md:159 -> HANDBACK-S2.md:64 (line 64 out of 1..56)
research/breaker-regency-r2-close.md:124 -> HANDBACK-S2.md:64 (line 64 out of 1..56)
research/breaker-run-close-watch.md:74 -> Verdict-master.md:8 (missing file)
research/breaker-stranger.md:110 -> state-audit.md:107 (missing file)
research/harness-run/BOOT.md:21 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
```

**M2 verbatim output (2026-10-21 00:19, tool sha256 `80defbd4…4b3`, exit 1)** — the same command, the rewritten
instrument. Note the format change (no per-file rows any more) and the new class counts:

```
── NOTRICK CITATION SWEEP · generated 2026-10-21 00:19 · not law (a moment's witness) ──
── summary: files=162 · refs=1252 · DRIFTS=10 · declared-witness=5 ──
── declared witnesses (quotations of refs, not live citations) ──
./CONTEXT.md:704 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
./CONTEXT.md:706 -> VERSION.md:26-27 (range 26-27 out of 1..25)
./CONTEXT.md:706 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
./INTEGRITY.md:55 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
./LOG.md:324 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
── DRIFTS (file:srcline -> ref · reason) — findings to file, never silent fixes ──
proposals/BRK-004.md:27 -> tiers.md:15-16 (missing file)
proposals/BRK-004.md:40 -> 001.md:21 (missing file)
research/breaker-hept-freeze.md:81 -> hept/SEALED.md:17-24 (range 17-24 out of 1..23)
research/breaker-log.md:78 -> LOG.md:501 (line 501 out of 1..332)
research/breaker-log.md:159 -> HANDBACK-S2.md:64 (line 64 out of 1..56)
research/breaker-regency-r2-close.md:124 -> HANDBACK-S2.md:64 (line 64 out of 1..56)
research/breaker-run-close-watch.md:74 -> Verdict-master.md:8 (missing file)
research/breaker-stranger.md:110 -> state-audit.md:107 (missing file)
research/ergonomics-39d-audit.md:119 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
research/harness-run/BOOT.md:21 -> AGENTS.md:74-77 (range 74-77 out of 1..75)
```

**The five declared witnesses** are the five doctrine-citation drifts that M1 reported as live failures; they are
*quotations of citations* in append-only records and pinned doctrine, and `tools/witness.list` declares them as such
(with the reason, per entry). They are therefore **witnesses, not drifts** — the M2 sweep's signal on them is the
*register rot* check, not a failure. One of the nine remaining live drifts is a new file from the same teammate
(`research/ergonomics-39d-audit.md:119`) — not this task's, and not this task's to fix.

### 4.2 Tree-wide numbers

| quantity | M1 (22:06, `d0c8b8…`→`d0c8b5c8…1f2b`) | M2 (00:19, `80defbd4…4b3`) | source |
|---|---|---|---|
| files in sweep scope | 158 | 162 | summary line (`files=`) |
| files printed (rows with ≥1 ref) | 116 | not printed any more (M2 dropped the per-file rows) | `grep -c 'refs='` |
| references swept | 1135 | 1252 | summary line (`refs=`) |
| refs into `CONTEXT.md` (log-anchors, flagged brittle) | 58 | not reported any more (M2 replaced the counter with the class split) | summary line |
| drifts reported | 14 | 10 | summary line + the drift block |
| declared witnesses | — (class did not exist) | 5 | summary line (`declared-witness=`) |
| exit code | 1 | 1 | `EXIT=1` |
| drifts in **my two files** | **0** | **0** | `research/idea-001-anchor-checker.md … drifts=0` (M1); absent from the M2 drift list |
| `.md` files in the tree (excl. `.git`) | 637 | 637 (measured 22:0x; other agents added files afterwards) | `find . -name '*.md' -not -path './.git/*' \| wc -l` |
| `.md` files **outside** the swept scope | 619 | ≈ same | comm of scope vs. tree |

Scope fact, quoted from the tool (M1: tools/citecheck.sh:36-44 · M2: tools/citecheck.sh:42-50): the sweep covers root `*.md` plus `research/ proposals/
templates/ mics/ charters/`. It does **not** cover `RUN/`, `tools/` (non-`.md`), or the lane trees
(`bore/ hept/ mill/ well/ phantom/ protocols/`) — 619 of the tree's 637 `.md` files are outside it, by the tool's own
design (frozen/foreign records are "cited-as-land, not swept").

### 4.3 Extracted lines — the card's frozen ground truth + the 3 session artifacts

```
research/anatomy-reference.md                    refs=12   ctx-anchors=6   drifts=0
research/anatomy-verification.md                 refs=6    ctx-anchors=0   drifts=0
research/idea-001-anchor-checker.md              refs=5    ctx-anchors=1   drifts=0
research/anatomy-card-form.md                    refs=3    ctx-anchors=0   drifts=0
```

All four are **clean** (0 drifts). Two facts must be read with that number:

1. `research/anatomy-reference.md` and `research/anatomy-verification.md` carry **6 log-anchors** into `CONTEXT.md`
   (`ctx-anchors=6`) — the very anchor type the project's 2026-09-19 ruling (pr-024 Part A) declared brittle and
   replaced with date-anchors.
2. `tools/citecheck.sh` itself is **not in the sweep scope** (it is not a `.md` file and `tools/` is not swept), so
   the tool never checks its own citations.

**M2 (00:19) prints no per-file rows**, so the same extraction was re-derived with a read-only `grep -coE` over the
same pattern, at 00:2x (after this report's own files were written):

```bash
for f in research/anatomy-reference.md research/anatomy-verification.md research/idea-001-anchor-checker.md \
         research/idea-001-reconciliation.md research/anatomy-card-form.md; do
  echo "$f  refs=$(grep -coE '[A-Za-z0-9][A-Za-z0-9_./-]*\.md:[0-9]+(-[0-9]+)?' "$f")"; done
```

```
research/anatomy-reference.md  refs=12
research/anatomy-verification.md  refs=6
research/idea-001-anchor-checker.md  refs=19
research/idea-001-reconciliation.md  refs=53
research/anatomy-card-form.md  refs=3
```

and `grep -c 'idea-001' /tmp/citecheck-moment2.txt` → **0** — neither of this task's two files appears in the M2
drift list, the declared-witness list, or the register-rot list.

### 4.4 The known-positive rule — self-test

```bash
cd /home/fares/Projects/notrick && ./tools/citecheck.sh --self-test
```

```
SELF-TEST PASS: plain drifts caught (2/2) · quoted + fenced refs ignored (0/2) · clean file clean
EXIT=0
```

**Verdict line quoted verbatim (M1):** `SELF-TEST PASS: plain drifts caught (2/2) · quoted + fenced refs ignored (0/2) ·
clean file clean` — the tool's clean output is believable, because its dirty output was proven first.

**M2 (the build that exists now), same command at 00:2x — the self-test grew with the tool:**

```
SELF-TEST PASS: plain drifts caught (2/2) · quoted+fenced ignored (0/2) · clean file clean · declared witness found · undeclared not found
EXIT=0
```

**Verdict line quoted verbatim (M2):** `SELF-TEST PASS: plain drifts caught (2/2) · quoted+fenced ignored (0/2) ·
clean file clean · declared witness found · undeclared not found`.

### 4.5 The tree drifts (M1: 14 · M2: 10 live + 5 declared witnesses)

All of them are in files this task does not own (doctrine, proposals, breaker records, harness-run, LOG, and — from
M2 — a teammate's new audit file). They are **filed, not repaired** — the tool's own rule: "findings to file, never
silent fixes" (M1: tools/citecheck.sh:127; M2: tools/citecheck.sh:168). The five doctrine hits
(`AGENTS.md:74-77` quoted from `CONTEXT.md:704`, `CONTEXT.md:706`, `INTEGRITY.md:55`, `LOG.md:324`,
`research/harness-run/BOOT.md:21` — the file is 75 lines; and `VERSION.md:26-27` quoted from `CONTEXT.md:706` — the
file is 25 lines) are **witnesses, not live pointers**: the M2 build classifies them as declared witnesses and
verifies the register instead. They are out of this task's write-path and are reported to the lead as observed, not
fixed.

---

## 5) H1..H4 — measured against what the tool can actually measure

### 5.0 Label table

| # | Claim (card §6) | Pre-registered kill-line (unchanged) | **Label today** | Basis |
|---|---|---|---|---|
| **H1** | the device derives 15/15 anchors on the frozen scope | < 15 → refutes | **UNTESTED** (device) · precondition MEASURED · projected score 8/15 | no device can express it (§3, §5.1); manual proxy scores the frozen scope 8 PASS / 5 DRIFT / 2 DEAD (§6) |
| **H2** | it correctly classifies the two corrected negative anchors | wrong classification → refutes | **UNTESTED** (device) · precondition MEASURED | no PASS/FAIL classifier exists (§5.2); the two negative anchors' post-repair targets verified by hand |
| **H3** | two consecutive runs are byte-identical | any difference → refutes | **PARTIALLY MEASURED** | same minute: byte-identical; across minutes: exactly one line differs (the generation timestamp) → the *findings body* is deterministic, the *whole report* is not (§5.3) |
| **H4** | one round ≤ 60 s against ~900 s manual (≥15×) | > 60 s → refutes | **MEASURED** | 5.94 / 6.05 / 6.85 s per round (M1); 5.26 / 6.01 / 5.59 s (M2); comparator re-derived live (~15 min/round) → ~130–150× (§5.4) |

**The labels are identical under both tool builds** (M1 `d0c8b5c8…1f2b` and M2 `80defbd4…4b3`): the rewrite changed the
tool's *output shape* and added a third reference class, but it did not add the semantics H1 and H2 need (§5.1, §5.2,
§7.1).

### 5.1 H1 — 15/15 derivation on the frozen scope → **UNTESTED (device)**

**What the tool can measure:** that the frozen scope's *files* are unchanged, and that the tool's own sweep reports 0
drifts on them. It cannot measure the claim.

**Why (design gap, the receipt is the semantics):** `citecheck.sh` checks that a referenced file exists and that the
line is in range (M1: tools/citecheck.sh:76-85; M2: tools/citecheck.sh:88-97). It never reads the referenced line's
content *by itself*, and it has no input that expresses "15 claims, each with a distinctive text and an expected
verdict". H1 asks for a *derivation* (find the witness by its distinctive text, then compare with the claim) and H1's
threshold is a *match count*. Neither concept exists in the tool.

**M2 does not close this.** M2 added the closest thing to a content check — the STALE-DECL rule verifies that a
*declared* witness entry's line still carries the ref text (M2: tools/citecheck.sh:152-163) — but that check runs over
a **hand-maintained register of (file, line, ref) triples**, not over claims: it cannot *derive* the 15 anchors from
distinctive texts, it cannot classify a row PASS/DRIFT/DEAD, and it has no expected-FAIL class. A claims mode would
reuse that register's *shape* (a row, a ref, a reason) — but that is §7.2's flag, which does not exist yet.

**What I measured instead (precondition + projection, explicitly NOT a device run):** the manual re-derivation of §6 —
8 PASS / 5 DRIFT / 2 DEAD today. So even a perfect device, run today against this frozen scope, would report
**8/15 < 15** and trip the pre-registered kill-line. **The refutation, if it comes, would be of the ground truth's
continued validity, not of the device's capability.** These two must not be conflated, and neither is a reason to
move the threshold.

**The exact command that would settle H1** (one flag on the existing tool — §7.2):

```bash
# 1. the claims table (17 rows: 15 expected-PASS + 2 expected-FAIL), written under /tmp
#    columns: distinctive-text | claimed-span | target-file | expected
cat > /tmp/idea-001-anchors.tsv <<'TSV'
There are no walls — only attempts spent on the wrong axis.	charters/ch-001-prime.md:8-9	charters/ch-001-prime.md	PASS
...
TSV
# 2. the run
./tools/citecheck.sh --claims /tmp/idea-001-anchors.tsv --expect PASS
# exit 0 iff all 15 expected-PASS rows classify PASS and both expected-FAIL rows classify non-match
```

As written in the card (the device that was specified and never built):

```bash
anchors.py --doc research/anatomy-reference.md --claims /tmp/idea-001-anchors.tsv --expect PASS
```

**Not run** — no such flag, no such binary, and the card's §4.5 forbids execution before a written GO (P6).

### 5.2 H2 — classification of the two corrected negative anchors → **UNTESTED (device)**

The card's two negative anchors (card §4.1, line 29) are the two repaired `verdict-master` references: the pre-repair
claim was `:29`, the post-repair claim is `:28`; the two repaired sites are `research/anatomy-reference.md:37` and
`research/anatomy-reference.md:95`.

**Precondition measured by hand (read-only):**

```bash
cd /home/fares/Projects/notrick && grep -n 'verdict-master' research/anatomy-reference.md; \
  sed -n '28,29p' research/verdict-master.md; \
  grep -nF 'الترقيع P-006: متريك اعتراض' research/verdict-master.md
```

```
37:| **الأنا الاجتماعية** (احتكاك بالآخرين لتصحيح الذات) | … | CH-002 موقعة · patch: verdict-master.md:28 · … | **موجودة، مرقعة، بدليل حي واحد** [V] |
95:> المصادر: ch-001-prime.md · mics/ · … · verdict-master.md:28 (P-006) · niche-sharpening.md:17 (الجحر الفارغ) · …
    | A-06 | مُمتص (مرقَّع) | أربعة مقاعد ودماغ واحد: نفس النموذج = نقاط-عمى مترابطة — الترقيع P-006: متريك اعتراض + نماذج/شخصيات مختلفة لكل مقعد | — |
    | A-07 | مُمتص (مرقَّع) | فيضان NO NICHE: أي منفذ يحول كل انسداد إلى "لا جحر" — الترقيع: فحص Gause إجباري + اقتباس السطر الموثق حرفيًا | — |
28:| A-06 | مُمتص (مرقَّع) | … — الترقيع P-006: متريك اعتراض + نماذج/شخصيات مختلفة لكل مقعد | — |
```

→ Both repaired sites read `:28`; `:28` holds the P-006 patch (row A-06); `:29` holds A-07 and does **not** hold it.
The two negative anchors' *semantics* are intact today, and a device would have to classify `:29` as a non-match and
`:28` as a match.

**Why it stays UNTESTED as a device claim:** `citecheck.sh` has no verdict axis at all — no PASS, no FAIL, no
expected column. Worse, the wrong-but-in-range line `:29` is **invisible** to the LIVE class (the file has ≥29 lines,
so `:29` is "in range" → no drift). A tool whose LIVE semantics are resolvability cannot see the very failure mode the
card was born to catch: an anchor that resolves but no longer says what it is claimed to say. M2's WITNESS class
relieves this for *quotations of citations* (a document talking about a citation); it does not give the tool a way to
say "this claim must not match" — the negative-anchor class is still inexpressible.

**The exact command that would settle H2** (same flag as H1, with the two negative rows in the same TSV):

```bash
./tools/citecheck.sh --claims /tmp/idea-001-anchors.tsv --expect PASS
# with rows:
#   الترقيع P-006: متريك اعتراض | research/verdict-master.md:28 | research/verdict-master.md | PASS
#   الترقيع P-006: متريك اعتراض | research/verdict-master.md:29 | research/verdict-master.md | FAIL
# exit 0 iff the PASS row matches and the FAIL row does not
```

**Not run** — same reason as H1 (no such flag; no written GO).

### 5.3 H3 — two consecutive runs byte-identical → **PARTIALLY MEASURED**

**Same-minute, two consecutive runs** (the card's literal condition, "تشغيلان متتاليان"):

```bash
cd /home/fares/Projects/notrick && ./tools/citecheck.sh > /tmp/run1.txt 2>&1; ./tools/citecheck.sh > /tmp/run2.txt 2>&1
diff /tmp/run1.txt /tmp/run2.txt && echo "(identical)"; sha256sum /tmp/run1.txt /tmp/run2.txt
```

```
(identical)
0969b1a60b5522961138c922b35583fc9069127577879b126bb9717896afab22  /tmp/run1.txt
0969b1a60b5522961138c922b35583fc9069127577879b126bb9717896afab22  /tmp/run2.txt
```

→ **byte-identical, including the header** (both runs landed in 22:23).

**Cross-minute, two consecutive runs** (62 s apart, same command):

```bash
./tools/citecheck.sh > /tmp/run3.txt 2>&1; sleep 62; ./tools/citecheck.sh > /tmp/run4.txt 2>&1
diff /tmp/run3.txt /tmp/run4.txt; diff <(tail -n +2 /tmp/run3.txt) <(tail -n +2 /tmp/run4.txt)
```

```
1c1
< ── NOTRICK CITATION SWEEP · generated 2026-10-20 22:27 · not law (a moment's witness) ──
---
> ── NOTRICK CITATION SWEEP · generated 2026-10-20 22:28 · not law (a moment's witness) ──
raw-diff-exit=1
body-diff-exit=0
b08e053bcd260480aaa9115826e4068d97d6edaf8cdf0a7949bcb6cbded557fa  /tmp/run3.txt
adf71f195b54bd3c02c3dba82d9d0ceebe0dccf023a0ca6090370dc267a32a6b  /tmp/run4.txt
```

→ The **whole report is not byte-identical across minutes**: exactly one line differs, the generation stamp produced by
`date` at tools/citecheck.sh:109. The **findings body is byte-identical** (`body-diff-exit=0`).

**The same two experiments re-run against the current build (M2), 00:19–00:21:**

```bash
# same-minute pair (retry until the two headers match, then compare):
./tools/citecheck.sh > /tmp/m2-s1.txt 2>&1; ./tools/citecheck.sh > /tmp/m2-s2.txt 2>&1
diff /tmp/m2-s1.txt /tmp/m2-s2.txt && echo "(byte-identical, full file)"
sha256sum /tmp/m2-s1.txt /tmp/m2-s2.txt
```

```
attempt 1: SAME MINUTE ✓
header: ── NOTRICK CITATION SWEEP · generated 2026-10-21 00:21 · not law (a moment's witness) ──
(byte-identical, full file)
f38afa84c49d42db299160bae25e6b70b4224fc5843ae13d506bf341deefa2ca  /tmp/m2-s1.txt
f38afa84c49d42db299160bae25e6b70b4224fc5843ae13d506bf341deefa2ca  /tmp/m2-s2.txt
```

```bash
# cross-minute pair (62 s apart):
./tools/citecheck.sh > /tmp/m2-r1.txt 2>&1; sleep 62; ./tools/citecheck.sh > /tmp/m2-r2.txt 2>&1
diff /tmp/m2-r1.txt /tmp/m2-r2.txt; diff <(tail -n +2 /tmp/m2-r1.txt) <(tail -n +2 /tmp/m2-r2.txt)
```

```
1c1
< ── NOTRICK CITATION SWEEP · generated 2026-10-21 00:19 · not law (a moment's witness) ──
---
> ── NOTRICK CITATION SWEEP · generated 2026-10-21 00:20 · not law (a moment's witness) ──
raw-exit=1
body-exit=0
6caf4c23d9c931ed28cf909fb0c34b76838cab2a7c755766c9d4336a0e8b9cae  /tmp/m2-r1.txt
518d1ce3efdce9a29c591def4ef75035541d6a6ec897669bab30f93d2b8c269d  /tmp/m2-r2.txt
```

→ **Same verdict under the new build**: identical within a minute, one line apart across minutes, findings body
byte-identical both times. (A second same-minute attempt happened to straddle 00:20/00:21 and came out different —
which is the point: "same minute" is a fragile condition, and the card's H3 as written ("any difference refutes")
cannot tell a real non-determinism from the report's own clock.)

**Reading it against the pre-registered kill-line ("أي اختلاف → تكذب"):** the existing device's *report* fails
H3's letter whenever two runs straddle a minute boundary; the device's *findings* are deterministic. The card's H3
is written about the report of the device the card specifies (`anchors.py`, never built) — for that device H3 is
**UNTESTED**. For the device that exists, the measurement above is the honest analogue, and it is reported as such:
**PARTIALLY MEASURED, with the single non-determinism source located** (M1: tools/citecheck.sh:109; M2:
tools/citecheck.sh:130 — both are `generated $(date '+%Y-%m-%d %H:%M')`).
The threshold is not moved; the one-line difference is filed as a finding.

### 5.4 H4 — one round ≤ 60 s against ~900 s manual → **MEASURED**

```bash
cd /home/fares/Projects/notrick && for i in 1 2 3; do
  /usr/bin/time -f "round$i real=%es user=%Us sys=%Ss" ./tools/citecheck.sh > /dev/null 2>>/tmp/timing.txt; done; cat /tmp/timing.txt
```

```
round1 real=5.94s user=1.86s sys=4.47s
round2 real=6.05s user=1.80s sys=4.69s
round3 real=6.85s user=2.02s sys=5.34s
```

**Re-run against the current build (M2), same command, 00:2x:**

```
round1 real=5.26s user=1.59s sys=4.00s
round2 real=6.01s user=1.76s sys=4.69s
round3 real=5.59s user=1.74s sys=4.27s
```

→ **both builds: ~5–7 s per round**, far inside the 60 s threshold; the rewrite did not slow the sweep down.

Comparator re-derived live (the card's ~900 s figure, read out of the pain receipt it points at):

```bash
sed -n '46,47p' research/citation-drift-audit.md | grep -o '~15 دقيقة/جولة'
```

```
~15 دقيقة/جولة
```

→ manual ≈ 15 min = 900 s; device ≈ 6.0 s → **~130–150×**, far past the pre-registered ≥15×, and **≤ 60 s** ✓.

**Two honesty notes, neither of which moves a threshold:**
- The exit code of the timed rounds is **1** (drifts exist in the tree). Exit 1 is the *drift verdict*, not a timing
  failure; the rounds themselves completed.
- The unit differs from the card's pre-registered comparison: the measured round is the **full living-surface sweep**
  (158 files / 1135 refs), not a 15-anchor round. The card's H4 is written about a round over the 15-anchor scope
  against the same manual baseline, so today's number is **not** a like-for-like substitute for it. The 60 s and 15×
  thresholds stay exactly as pre-registered.

### 5.5 H1/H2 preconditions — what *was* measured, precisely

| precondition | measurement | command | result |
|---|---|---|---|
| frozen ground truth intact | sha256 + mtime of the 2 files | `sha256sum`/`stat` (§1) | **matches freeze exactly** ✓ |
| anchor set is 15 rows | count of table rows in §2 | `sed -n '20,34p' research/anatomy-verification.md \| grep -c '^|'` | `15` ✓ |
| §2's header claims the count | read | `sed -n '17,19p'` | "## 2) الشواهد المطابقة (15/18)" ✓ |
| the 2 negative anchors' targets | grep + sed | §5.2 | `:28` holds the P-006 patch; `:29` does not ✓ |
| the tool is trustworthy | `--self-test` | §4.4 | SELF-TEST PASS ✓ |
| the tool's scope | `from_scope` | M1: tools/citecheck.sh:36-44 · M2: tools/citecheck.sh:42-50 | 158 files swept (M1) / 162 (M2); 619 of 637 `.md` outside scope |

### 5.6 Thresholds — unchanged, and one of them is currently unmeasurable as specified

No pre-registered number was altered by this measurement. Stated plainly, per the card-form's own freezing rule
(research/anatomy-card-form.md:33 — "لا عتبة تُضبط بعد رؤية النتيجة"):

- **H1's threshold (≥15/15) stays 15/15.** It is *currently unmeasurable as specified* — not because the threshold is
  wrong, but because the device that would measure it does not exist and the scope it would measure has drifted. The
  threshold is declared, in these words, in the card's new §8: **the threshold stands; the measurement is missing.**
- **H2's threshold (correct classification) stands.** Same reason: no classifier exists.
- **H3's threshold (any difference refutes) stands**, and today's measurement is filed against it, not around it.
- **H4's threshold (≤60 s, ≥15×) stands**, and today's measurement is inside it.

---

## 6) The frozen anchor set's present state (manual re-derivation — a proxy, NOT the device)

The card's anchor set = the 15 table rows of `research/anatomy-verification.md` §2 (lines 20-34), each identified by
its distinctive text (not its line number), plus the 2 repaired negative anchors. I re-derived each row by hand
(distinctive text → live line → compare with the claimed span). The script is reproduced in full in §6.2 so any
stranger can re-run it.

### 6.1 Row-by-row, 2026-10-20

| row | target : span (frozen) | witness today | verdict today | note |
|---|---|---|---|---|
| R01 | `charters/ch-001-prime.md:8-9` | :8 | **PASS** | file unchanged since 2026-09-07 |
| R02 | `charters/ch-001-prime.md:22-26` | :23 | **PASS** | ″ |
| R03 | `charters/ch-001-prime.md:32-34` | :33 | **PASS** | ″ |
| R04 | `research/ten-axis-knowledge-map.md:35-36` | :36 | **PASS** | file unchanged since 2026-09-07 |
| R05 | `research/ten-axis-knowledge-map.md:52-53` | :53 | **PASS** | ″ |
| R06 | `CONTEXT.md:267-274` | :203 (span 203-212) | **DRIFT −61** | head replaced 2026-09-19 |
| R07 | `CONTEXT.md:201-206` | :139 (span 139-141) | **DRIFT −62** | ″ |
| R08 | `CONTEXT.md:209-220` | :147 (span 145-148) | **DRIFT −62** | ″ |
| R09 | `CONTEXT.md:486-489` | :424 (span 422-426) | **DRIFT −62** | ″ (the "degraded manual" stamp itself) |
| R10 | `research/ten-axis-knowledge-map.md:20-21` | :20 | **PASS** | file unchanged since 2026-09-07 |
| R11 | `ONBOARDING.md:26-29` | :45 (span 45-48) | **DRIFT +19** | file regenerated 2026-09-11 |
| R12 | `CONTEXT.md:43` | witness text **absent** | **DEAD** | "DS carries the K-line field" no longer in the file |
| R13 | `CONTEXT.md:35-37` | witness text **absent** | **DEAD** | the seed-MICs/Phase A/B passage is gone from the head |
| R14 | `research/decision-review.md:28` | :28 | **PASS** | file unchanged since 2026-09-07 |
| R15 | `research/decision-review.md:35` | :35 | **PASS** | ″ |

**Tally: 8 PASS · 5 DRIFT · 2 DEAD = 15.** Plus the 2 negative anchors: **both correct today** (`:28` matches, `:29`
does not).

### 6.2 The script (re-runnable; read-only on the repo)

```bash
#!/usr/bin/env bash
# MANUAL re-derivation of IDEA-001's frozen anchor set (precondition evidence).
# READ-ONLY on the repo. NOT the card's device: it is the hand-derivation the card
# itself uses as the ~900s baseline, so it does NOT satisfy H1/H2.
set -u
cd /home/fares/Projects/notrick
row() { # label | target | span | probe
  local label="$1" target="$2" span="$3" probe="$4" a b hits first
  a=${span%-*}; b=${span#*-}; [ "$a" = "$b" ] && b="$a"
  if [ ! -f "$target" ]; then
    printf '%-34s target=%-38s span=%-9s VERDICT=DEAD(target-missing)\n' "$label" "$target" "$span"; return
  fi
  hits=$(grep -nF -- "$probe" "$target" | cut -d: -f1 | tr '\n' ' ')
  if [ -z "$hits" ]; then
    printf '%-34s target=%-38s span=%-9s VERDICT=DEAD(probe-not-found)\n' "$label" "$target" "$span"; return
  fi
  first=${hits%% *}
  if [ "$first" -ge "$a" ] && [ "$first" -le "$b" ]; then
    printf '%-34s target=%-38s span=%-9s probe_line=%-6s VERDICT=PASS\n' "$label" "$target" "$span" "$first"
  else
    printf '%-34s target=%-38s span=%-9s probe_line=%-6s VERDICT=DRIFT(%+d) all_hits=[%s]\n' \
      "$label" "$target" "$span" "$first" $((first - a)) "$hits"
  fi
}
row "R01 ch-001-prime المبدأ الحرفي"  charters/ch-001-prime.md          8-9    "There are no walls"
row "R02 ch-001 مقياس النجاح"          charters/ch-001-prime.md          22-26  "budget spent"
row "R03 ch-001 الحلقة الموروثة"        charters/ch-001-prime.md          32-34  "perceive"
row "R04 ten-axis prime agent"          research/ten-axis-knowledge-map.md 35-36 "daemon"
row "R05 ten-axis Import Mirror"        research/ten-axis-knowledge-map.md 52-53 "MIC trigger"
row "R06 CONTEXT توقيع الميثاقات"      CONTEXT.md                       267-274 "ACTIVE LAW"
row "R07 CONTEXT X-10"                  CONTEXT.md                       201-206 "X-10"
row "R08 CONTEXT ARC"                   CONTEXT.md                       209-220 "ALPHA-7"
row "R09 CONTEXT G-B Observe"           CONTEXT.md                       486-489 "MEASUREMENT, degraded manual"
row "R10 ten-axis Minsky K-lines"       research/ten-axis-knowledge-map.md 20-21 "K-line"
row "R11 ONBOARDING الجدار"             ONBOARDING.md                    26-29  "runtime"
row "R12 CONTEXT حقل K-line"            CONTEXT.md                       43     "K-line"
row "R13 CONTEXT MICs Phase A/B"        CONTEXT.md                       35-37  "MIC"
row "R14 decision-review D-04"          research/decision-review.md      28     "## D-04 — Council layer pre-budget"
row "R15 decision-review D-05/R8"       research/decision-review.md      35     "## D-05 — Owner as constitution (R8 terminus)"
row "N01 negative-anchor target :28"    research/verdict-master.md       28     "الترقيع P-006: متريك اعتراض"
```

**One self-correction, on the record:** the first run of this script reported R11/R12/R13/R15 as DRIFT/DEAD using
*non-distinctive or over-specific* probes ("runtime", "MIC", "K-line", and a D-05 heading I had truncated at the
`;` clause). Re-deriving the spans by reading them (`sed -n`) fixed R15 (the anchor `:35` is **correct**; the heading
reads "## D-05 — Owner as constitution (R8 terminus; ratification, thresholds, signature)") and changed the
classification of R11/R12/R13 to the values in §6.1. The lesson is the project's own: *quote before you conclude, and
read the span, do not infer it from a probe* — the same lesson the 2026-09-10 verifier wrote into
`research/anatomy-verification.md:50-54`.

### 6.3 Why the scope drifted (cause receipts)

- `git show 0fc629d:CONTEXT.md` (2026-09-10, the freeze-time commit) shows the anchors **were correct at freeze**:
  `:267-274` = "CHARTER BATCH SIGNED", `:201-206` = the X-10 live-evidence entry, `:486-489` = the G-B OBSERVE entry
  carrying "MEASUREMENT, degraded manual", `:43` = "Persisted. DS carries the K-line field.", `:35-37` = the seed-MICs
  passage, and `ONBOARDING.md:26-29` = "## What you are NEVER allowed to do (hard walls)".
- The Owner's **2026-09-19 approved-docs moment (pr-024 Part A)** replaced `CONTEXT.md` lines 1-86 with a pointer block
  + HISTORY separator (CONTEXT.md:706), and the 2026-09-11 ergonomics pass regenerated `ONBOARDING.md`
  (git `449aede`, "ONBOARDING generated boot-card"). `CONTEXT.md` grew 678 → 707 lines; the anchors that pointed into
  the replaced head moved by ≈ −62 lines, and the two head-only witnesses (R12, R13) vanished with it.
- The project **already ruled on this**: pr-024 Part A installed "a date-anchor citation convention [replacing]
  line-refs into this file" (CONTEXT.md:706), and `citecheck.sh` flags every ref into `CONTEXT.md` as a brittle
  log-anchor (58 of them in today's sweep). **6 of the card's 15 anchors are exactly the class the 2026-09-19 ruling
  deprecated.**
- Therefore: the card's gauge B froze the hashes of the two ground-truth *files* (which is what the card-form asks:
  research/anatomy-card-form.md:31 — "ملفات/أرقام مجمدة + sha256 لحظة التجميد (لا نطاق يتغير خلف المقيّم)") but did
  **not** hash the *anchor targets* whose line numbers the 15 claims depend on. The scope did change behind the
  evaluator — exactly what the card-form's parenthetical forbids, and exactly what the card's own death condition
  was meant to catch.

---

## 7) The design gap — the device that exists is not the device the card specifies

### 7.1 The four gaps (each with its receipt)

| # | gap | receipt | consequence |
|---|---|---|---|
| G1 | **semantics**: resolvability (exists + in range) ≠ content identity (the span still says what is claimed). **Partly closed in M2** — the STALE-DECL rule checks that a *declared* entry's line still carries the ref text — but only for hand-registered entries | M1: tools/citecheck.sh:76-85 · M2: tools/citecheck.sh:88-97 + 152-163 | a wrong-but-in-range anchor is invisible to the LIVE class — the exact failure the card exists to catch — and no claim can register itself |
| G2 | **no claims input**: no TSV of (distinctive-text, claimed-span, target, expected), no per-row verdict, no exit code tied to a match count, no expected-FAIL class | M1: tools/citecheck.sh:109-133 · M2: tools/citecheck.sh:130-175 (the whole CLI surface) | H1 and H2 are inexpressible; no expected-FAIL (negative anchor) concept at all |
| G3 | **quotation rule is syntactic**: "ref inside backticks = witness text, not a live citation"; M2 adds a *declared* witness class, but the declaration is still a hand-kept list | M1: tools/citecheck.sh:23-26, :52-54 · M2: tools/citecheck.sh:10-18, :24-26, :52-57 | a *live* citation written in backticks is not swept — and the card's own refs are backticked, so the tool protects the card's citation layer from itself |
| G4 | **the report carries a timestamp**: `generated $(date …)` | M1: tools/citecheck.sh:109 · M2: tools/citecheck.sh:130 | the report is not byte-identical across minutes (H3's letter fails; the findings body holds) — in **both** builds |

### 7.2 The one missing flag that closes H1 and H2 together

**`--claims <anchors.tsv>`** — a claims-TSV mode on the existing tool, i.e. the card's §4.2 specification grafted onto
the tool that actually exists:

- each TSV row: `distinctive-text | claimed-span | target-file | expected(PASS|FAIL)`;
- the tool locates the witness by its distinctive text, compares it with the claimed span, and classifies the row
  **PASS / DRIFT±k / DEAD**;
- exit 0 **iff** every expected-PASS row classifies PASS **and** every expected-FAIL row classifies non-match;
- the report body (rows + verdicts) must be timestamp-free, so H3 holds for the report, not just for its findings.

That single flag makes H1 (a match count over 15 rows) and H2 (two expected-FAIL rows) measurable, and it reuses the
tool's existing strengths (grep-only, read-only, no deps, known-positive self-test). Nothing else is needed to close
them.

**M2 shows the shape, and shows it is not the same thing.** `tools/witness.list` is the first hand-maintained index in
this project that the tool *verifies* instead of trusting — its rows carry `<file>:<line>  <ref>  —  <why>`, and the
sweep checks each row's line still carries the ref (M2: tools/citecheck.sh:152-163). That is the **proof-of-concept
for content identity** in this tree, and the claims mode should reuse its row shape. But a witness register and a
claims table differ in exactly the two ways H1 and H2 need:

| | witness register (M2, exists) | claims table (needed) |
|---|---|---|
| how a row's target is chosen | **hand-declared** — someone wrote `file:line` in the list | **derived** — the tool finds the witness by its distinctive text |
| what the tool says | "this declared line still carries this ref" (rot check) | "this claim matches / drifted ±k / is dead" (a verdict per row) |
| expected-FAIL rows | impossible (a declared witness must carry its ref) | required — the card's two negative anchors are claims that must **not** match |
| output | a count of declarations | a **match count** over N rows (H1's threshold) |

### 7.3 The settle commands, written and **not run**

```bash
# H1 + H2 together (one invocation, one exit code):
./tools/citecheck.sh --claims /tmp/idea-001-anchors.tsv --expect PASS
#   exit 0  => 15/15 expected-PASS rows matched AND both expected-FAIL rows did not match
#   exit 1  => at least one row failed (the table names which)

# H3 (determinism of the report, not just its findings):
./tools/citecheck.sh --claims /tmp/idea-001-anchors.tsv --expect PASS > /tmp/h1-r1.txt 2>&1
./tools/citecheck.sh --claims /tmp/idea-001-anchors.tsv --expect PASS > /tmp/h1-r2.txt 2>&1
diff /tmp/h1-r1.txt /tmp/h1-r2.txt        # must be empty, byte for byte

# H4 (timing of that same round):
/usr/bin/time -f 'real=%es' ./tools/citecheck.sh --claims /tmp/idea-001-anchors.tsv --expect PASS
```

**Not run, deliberately:** the flag does not exist; the card's §4.5 forbids execution before a written GO (P6); and
running the card's evaluator is the Owner's gate, not this task's. Writing the command is the deliverable; the run is
the next act, and it needs a GO.

---

## 8) Dead citation found in the card — corrected, declared

`./tools/citecheck.sh` reported **0 drifts** in `research/idea-001-anchor-checker.md`. A manual re-derivation of the
card's own five references (read-only, `sed -n` on each target) found **one semantically dead citation that the tool
cannot see**, because the range is in range and the tool never reads the content:

| card ref (before) | what it held at freeze | what it holds today | corrected to |
|---|---|---|---|
| `CONTEXT.md:589-594` | the "ANATOMY-REFERENCE REPAIR + VERDICT SELF-CORRECTION" entry (2026-09-10) — the live repair of both `verdict-master.md:29` → `:28` anchors | the 2026-09-08 cleanup entry | **`CONTEXT.md:525-530`** (the repair entry: header → "corrected to :28 — verified by grep: zero \":29\" remain, two \":28\" present") |

All other card references were re-derived and confirmed alive: `research/anatomy-bridge-arena-candidates.md:9` (the
"cheapest gate" row), `research/citation-drift-audit.md:14-16` (the RULES drift rows), `:46-47` (the "manual ~15 min
per round" price), `research/anatomy-verification.md:7-8` (the acceptance verdict), `:12-15` and `:36`, and
`RUN/tools/cite.sh:26` (the byte-compare authority line).

**Correction, in the project's own order — after the verdict, declared, never silent:** the correction is applied in
`research/idea-001-anchor-checker.md` and named in that file's new §8 declaration block. Nothing was deleted; the
original text and the original declaration are preserved.

**And a second correction, this time to the card's own body, caught the same way (2026-10-21).** Writing the card's
§8 required rewriting the whole file — and the rewrite silently re-spelled one word of the original §7 line
(`داخليةً` → `داخليًا`: the same word, different bytes, the tanween moving from the te-marbuta to the alef). A
byte-level, line-by-line comparison against the committed original caught it:

```bash
git show HEAD:research/idea-001-anchor-checker.md > /tmp/card-orig.md
for i in $(seq 1 49); do
  o=$(sed -n "${i}p" /tmp/card-orig.md | sha256sum | cut -c1-16)
  n=$(sed -n "${i}p" research/idea-001-anchor-checker.md | sha256sum | cut -c1-16)
  [ "$o" != "$n" ] && echo "line $i differs"; done
```

```
line 11 differs
line 49 differs      ← the silent re-spelling
```

The original line was restored byte-exactly, and the card's 49 original lines are now byte-identical to the committed
version **except line 11** — the one declared correction. `git diff --stat` on the card: `98 insertions(+), 1
deletion(-)` — i.e. pure addition plus that single declared edit. This is declared in the card as well (its §8.6): a
card that catches silent drift in *other* documents may not commit one in itself.

---

## 9) Walls, and what this task did not do

### 9.1 Write-path

Written: `research/idea-001-reconciliation.md` (this file) and `research/idea-001-anchor-checker.md` (the
reconciliation edit). Nothing else in the tree was modified — `tools/citecheck.sh` was read and executed, never
edited; no doctrine file (RULES.md, charters/, templates/, CONTEXT.md, VERSION.md, ONBOARDING.md, AGENTS.md,
INTEGRITY.md, OWNER-DESK.md, LOG.md, violations.md, research/README.md) was touched. Scratch files live only under
`/tmp` (`/tmp/anchor-rederive.sh`, `/tmp/run1..4.txt`, `/tmp/timing.txt`, `/tmp/citecheck-2026-10-20.txt`).
`research/README.md` is the lead's file: the exact replacement row text is in the task's report-back, not written here.

### 9.2 Post-edit hashes (addendum to §1)

Filled in after both files were written (2026-10-21 00:28–00:31):

| file | sha256 (pre-edit) | sha256 (post-edit) | mtime (post-edit) |
|---|---|---|---|
| `research/idea-001-anchor-checker.md` | `2576ea9e56796983e0e37e7c60c2ae49f8f9420f67d8ec1e04ebd1ef8db59b88` | `e2d701b550f0202f4bf5af232fdbfee5dfc716021f401eecf831de64602f9985` | 2026-10-21 01:07:18 +0300 |
| `research/idea-001-reconciliation.md` | — (new file) | `2191def2b1e6af59af820fa81df4c767da492b85213aaa34108b6048bec8e2e2` | 2026-10-21 01:0x +0300 |
| `tools/citecheck.sh` (**not mine — rewritten mid-measurement by another agent**) | `d0c8b5c80ff91a52196f665793d73faf03a082b56d002f97332d5ef17ed31f2b` | `80defbd4483bf48cd93c61322d7f3727f3042bd5e97df8e29405eff90e1a14b3` | 2026-10-21 00:16:31 +0300 |
| `tools/witness.list` (new, same hand) | — | `c75c4b3ea9946098e7169ff6e0af44ad12815d0f1ed963fb530aa808f391748a` | 2026-10-21 00:16:01 +0300 |

Two honest notes on this table: the report's own hash changes with every edit to it (the value above is the hash of
this file immediately before this table's last edit) — **the git commit, not the hashes, is the authoritative record of
the pair**; and the tool's hash is asserted to be still `80defbd4…4b3` at the moment of the final sweep, i.e. the M2
build is the one every M2-labelled number came from.

### 9.4 Final sweep (after both files were written)

```bash
cd /home/fares/Projects/notrick && ./tools/citecheck.sh
```

```
── NOTRICK CITATION SWEEP · generated 2026-10-21 00:31 · not law (a moment's witness) ──
── summary: files=163 · refs=1293 · DRIFTS=9 · declared-witness=5 ──
```

Neither of this task's two files appears in the drift list, the declared-witness list, or the register-rot list
(`./tools/citecheck.sh | grep -c 'idea-001'` → **0**). The 9 remaining drifts are in files outside this task's
write-path and are filed, not repaired. The last sweep before this report was finalised (01:1x) shows the same
picture — `files=165 · refs=1295 · DRIFTS=9 · declared-witness=5`, and still **0** mentions of either of this task's
files. (The file count rises as other agents add records; the drift count is stable.)

### 9.3 What was deliberately NOT done

- **The card's evaluator was not run** — it does not exist, and the card's §4.5 holds execution behind a written GO.
- **No threshold was moved** — see §5.6 and the card's §8.
- **No drift in the tree was repaired** — the 14 drifts belong to files outside this task's write-path; they are filed
  in §4.1 and reported, per the tool's own rule ("findings to file, never silent fixes").
- **The card was not deleted, closed, or declared DEAD** — the kill-line's condition (a *failing device* over two
  consecutive rounds after one repair) was not met, because no device ran. The card's state is declared as it stands.

---

## 10) The card's state as of 2026-10-20 (one paragraph, to be filed in the card's §8)

IDEA-001 remains **ARMED** and **NOT EXECUTED** (card §4.5): no written GO (P6) has been given, and the specified
evaluator `anchors.py` does not exist in the tree. Its pain is **confirmed and mechanized** — a sibling device
(`tools/citecheck.sh`, 2026-09-11, rewritten 2026-10-21 00:16) now sweeps the living surfaces read-only, self-tests
PASS, and clears the card's own files with 0 drifts. Its frozen evaluator is **intact as a hash** but **stale as a
scope**: 7 of its 15 anchor claims no longer hold against today's tree (5 line drifts, 2 dead witnesses), all of them
caused by the 2026-09-19 pr-024-A head replacement in `CONTEXT.md` and the 2026-09-11 `ONBOARDING.md` regeneration. H4
is **MEASURED** (≈5–7 s per round, ~130–150× the manual baseline, under both tool builds). H3 is **PARTIALLY
MEASURED** (findings deterministic; the report's timestamp line breaks byte-identity across minutes). H1 and H2 are
**UNTESTED** — the tool that exists cannot express them, and the ground truth they would be measured against has
drifted below the pre-registered threshold. The card's **pre-registered thresholds and kill-line stand unchanged**;
what is missing is the device, not the bar. The instrument itself moved mid-measurement (§1.1) and that is declared
too: every number above names the build it came from.
