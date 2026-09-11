# Concurrency Observation — G-B OBSERVE (`dsh..observe`) · round 1

- session time anchor: 2026-09-09T00:34:02+03:00 (`date -Iseconds`, this session)
- goal: goal-8352cbd7-53a7-43e7-aeb1-e43a2bb487d2 · phase active · activation armed (goal tool read this session) → goal_armed=YES
- boot gate (quoted in first reply): VERSION.md:8 = `**v0.00001 (NOW)** — 5 gates locked: Owner signature · smoke call · threshold · breakthrough definition · first falsifiable run (RJ-001 cond.1)` · rights: "guest+assigned — read + measure + write lane (research/, RUN/, append-only tail of CONTEXT.md)" · wall: "no execution, no runtime, no Owner-by-right fields"
- RUN/STATE.md pointer does NOT name this round (says `next_round: none (SERIES 2 COMPLETE)`) — stated first in-turn, per the brief; this lane proceeds as its own concurrently-armed goal.
- pre-registration: RUN/dossiers/dsh..observe/pre-registration.md — written BEFORE any measurement command; corpus and method fixed there.

## Method and degradation (mechanical facts, this session)
- `tools/` absent at root (`ls: cannot access 'tools'`). `RUN/tools/` contains only `cite.sh` and `count.sh`. `find` over the tree: **zero** hits for `plurality.py`, `windows.py`, `beat.py`, `guard_*.py`.
- The brief's executable tests (M1 `plurality.py splits`, M2 `plurity.py dr`, M4 `windows.py --check`) could NOT run. Kill trigger 2 requires tools absent AND git unavailable — git IS available (main branch, 21 recent commits) → degraded manual measurement per the brief's BLINDNESS clause. Degrade, never halt.
- `research/concurrency.md` (the PROPOSED law the brief says to cite) **does not exist** on this tree, and a repo-wide grep for `2262|dr_exact|2061|plurality.py` returned **zero matches**. The brief's baseline is reported below as a brief-claim, not an on-disk fact.
- `RUN/SPLITS.md` did not exist; repo-wide grep for `SP-?0[1-9]` rows: **zero** — no SP01..SP06 rows anywhere; the new census starts at SP01. Nothing renumbered.
- `RUN/dossiers/` did not exist before this round; no other dossiers existed to read; the blindness guard was moot. No subagents were delegated (N1 trivially satisfied; the guard script itself is absent).

## M1 — SPLIT CENSUS (degraded: manual, committed artifacts + git only)
Definition applied (brief verbatim): a SPLIT is two admissible entries on the same slot, neither of which had the other to answer to — NOT a CONFLICT, NOT a STALE.

**3 SPLITs found, all CLOSED** (rows appended in RUN/SPLITS.md):

```
SP01 | harness-run guest (S2) + regency lane (S2-20260908-01) | proposals/ pr-011 ID slot | CLOSED | SCRIVENER pre-consume catch; guest copy removed, refiled pr-021 | Two writers filed pr-011 blind to each other; renumbered pr-021
SP02 | R5 execution-repair lane + parallel citation-numbering writer | citation-ID space C117-C124 | CLOSED | renumber landed in commit 6b8b4ce | Citation IDs double-assigned by concurrent writers; collision renumbered later
SP03 | two R11 blind verifiers | RUN/briefs/ r11-verifier.md brief path | CLOSED | process defect logged, commit a910293 | Two verifiers shared one brief path; defect logged
```

- SP01 evidence: LOG.md:282 (PR-FILING-INCIDENT — committed; `git show HEAD:LOG.md` grep count = 1, this session) · proposals/pr-011-regency.md:7,10-11 · guest checked only pr-010 at 07:56 · pr-021-sanad-unification.md on disk.
- SP02/SP03 evidence: commit messages 6b8b4ce and a910293 (committed); message-level, second writers not named in the messages — labeled as such.

Checked and NOT splits: queue-passes mutual-stale after the 14h gap (later answered earlier; RUN/STATE.md:11, commits 3da9a0f/778b243) → STALE · OP-043..047 identical-sync race (superseded, "no content conflict"; CONTEXT.md:428-432) → race, one entry only · pr-010 taken by pr-010-stale-reentry.md (self-described re-entry; pr-011-regency.md:10-11) → STALE-shaped.

## M2 — DUPLICATION RATE (degraded: pre-registered proxy corpus)
Corpus fixed in pre-registration BEFORE measuring: all markdown list-entry lines (`^\s*[-*] `) under the six lane trees `bore/ hept/ mill/ phantom/ well/ mics/`. Shape = entry with digits→`#`, 7+ hex runs→`H`.

Command output (this session):
```
entries=1483 exact_distinct=1453 dr_exact=0.0202 shape_distinct=1449 dr_shape=0.0229
per-lane: bore 536 · hept 320 · mill 232 · phantom 31 · well 328 · mics 36
```

- **dr_exact = 0.0202 → below 0.10 → WIDE band. No collapse signal on this corpus.**
- shape_distinct = 1449 (dr_shape 0.0229). Largest duplicate shape: `- **tests**: ok/ok/ok/ok/ok.` ×11; the rest of the top-8 are ≤5 occurrences — ritual/status lines, not idea duplication.
- vs the brief's baseline (2262 entries / dr_exact 0.083 / 2061 shapes): **the baseline is not recorded anywhere on this tree** (grep zero matches) and its corpus definition is unknown — the two measurements are not comparable number-to-number. Band-to-band: brief-claim wide (0.083), this session wide (0.0202). Verdict: **no collapse detected, with the number 0.0202.**
- context only: repo-wide md entry count 3760.

## M3 — ZERO-SPLIT VERDICT
Lane census (git commit counts per lane tree, this session):
```
bore 2 · hept 2 · mill 1 · phantom 1 · well 2 · mics 1 · research/harness-run 2 · protocols 1 · RUN 24
```
- N: **8 named lane trees carry committed artifacts** (bore, hept, mill, phantom, well, mics, research/harness-run, protocols) plus the RUN series-executor lane — consistent with the brief's "roughly six". Kill trigger 1 (N < 3) NOT fired.
- SPLITs measured this session: **3 (SP01..SP03, all CLOSED)**.
- Verdict: **this is NOT the zero-split contamination case.** N ≥ 3 with SPLITs = 3 ≠ 0: the lanes are not silently sharing one read or ancestor; the double-filing of a proposal-ID slot, double-assigned citation IDs, and a shared brief path are visible evidence of independent reads. Per the brief, splits found are the healthy signal. No harmony theater detected. No lane shutdown recommendation (the Owner cuts).

## M4 — RULE-PROPAGATION GAPS (degraded: manual per named lane pair)
Confirmed (the brief's known gaps):
1. **mill ↔ protocols** — CONFIRMED. mill/STATE.md:16 verbatim: `prohibition_protocols: no protocols may be written until the generator exists (op 0498, HANDOFF_P05 line 12).` protocols/ADHA-v1.md:145 records a protocol written and filed 2026-09-06. Structural non-visibility both ways: mill's read window (mill/STATE.md:10) does not include `protocols/`; ADHA-v1's Touches (ADHA-v1.md:152) does not include `mill/`. Lanes: mill · ADHA-filing session (session-71791f98).
2. **AGENTS.md window status** — CONFIRMED UNSTATED, refined: no window declaration names AGENTS.md in mill/STATE.md:10, well/STATE.md:6, or phantom/STATE.md:5-6, and bore/runtime/STATE.md + hept/runtime/STATE.md carry no window declaration at all. The only lane whose rules reference AGENTS.md is the harness-run/OPS session (root STATE.md:13). AGENTS.md is an unstated window for 5 of the named trees; its rules cannot mechanically bind a lane that never opens it.

New gaps found:
3. **bore and hept declare no read window at all** (bore/runtime/STATE.md:1-8; hept/runtime/STATE.md:1-8): no rule in any lane's window can mechanically bind them, and they declare no binding surface. Lanes: bore, hept ↔ all others.
4. **phantom is walled off from mill/well, mutually and by design** (phantom/STATE.md:5-6: `forbidden_paths=mill/,well/`, `write_lane=phantom/ only`): mill's and well's prohibitions cannot bind phantom, and phantom's cannot bind them. A designed isolation — and a real propagation gap. Lanes: phantom ↔ mill, well.
5. **well opens mill; mill does not open well** (well/STATE.md:6 includes `mill/*`; mill/STATE.md:10 excludes `well/`): mill's rules can reach well; well's prohibitions (well/STATE.md:9-10) cannot bind mill. One-directional propagation. Lanes: well → mill.

No fixes proposed; no doctrine written; no law extended. research/concurrency.md is cited per the brief as PROPOSED and unpinned — with the correction that it is absent from this tree, hence unverifiable here.

## LIVE EVENT (observed mid-round)
While this round was measuring, the harness-run lane appended 32 lines to CONTEXT.md
(tail entries at lines 454-485: "PHASE B CLOSED" + "HARNESS RUN COMPLETE", 2026-09-08).
This lane's own CONTEXT append was rejected once ("file changed since it was read —
re-read the file, then retry") — a mechanically observed concurrent write to the shared
doctrine tail during the observation window. Corroboration bonus: the harness-run entry
(CONTEXT.md:464-470) independently documents the same pr-011 collision this census
records as SP01 — both sides of the SPLIT left records.

## RECEIPT — round 1, `dsh..observe`
- tool operations used: 30 of the 60 cap (stop-at-50 threshold not approached).
- W9 sources — commands run in THIS session: `date -Iseconds` · `ls` (root, tools, RUN, RUN/tools, RUN/briefs, lane trees, proposals) · `wc -l` · `git log` (oneline, dated, per-tree counts) · `git status --short` · `git show HEAD:LOG.md` (grep) · `grep` (PR-FILING/pr-011 · SP rows · baseline numbers · collision commits) · `find` (script sweep) · the M2 grep/sed/sort/uniq/awk pipeline · `head RUN/QUEUE.json` · reads of VERSION/STATE/SPLITS-adjacent files. Every number above comes from these outputs.
- NOT run and why: `plurality.py`, `windows.py`, `beat.py` — absent from the tree (find zero hits). **Beat for this round: UNAVAILABLE** — recorded in the dossier line; no substitute invented.
- deliverables: this file · RUN/SPLITS.md (new; SP01..SP03; no prior rows existed) · one dossier line (RUN/dossiers/dsh..observe/dossier.md) · one CONTEXT.md tail entry (append-only) · pre-registration on file.
- read-only compliance: no lane's file, window, dossier, or lease edited; writes limited to RUN/dossiers/dsh..observe/, RUN/SPLITS.md (census product), this file, and the CONTEXT.md tail.
- kill triggers: none fired (N ≥ 3; git available; measurement only — no doctrine written).
- obituary (ARC Omega-5) status: **ALIVE** — M2 produced with a number; every finding backed by a session-run command or quoted file anchor; burial clause honored (nothing deleted); heir = the Owner's keep/cut decision; ledger = CONTEXT.md tail (appended this round).
