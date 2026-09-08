# r4-hunter-uw03 — same-task operator hunt (UW03 / LB09)

Searches run (rg -i, whole repo): `same[ -]task` (40 hits) · `same enough` (3) · `operator` (45) · `task[- ]?(unit|identity|spec|defin)` (9) · `(same DS|same row|DS-id|task-spec|TaskSpec)` (17) · `MIC-31` (98) · `pair(ed|ing)?` (250+) · `task` in mics/ (0) and templates/ (3) · `unit of task|task unit|a task is` in proposals/ (0). Files read: research/decision-review.md (D-01 L5-11) · research/rcvm.md (L30-59, L98-122, L275-290) · research/hypotheses-ledger.md (L1-20) · well/LB05.md · well/BECAUSE.md (L65-94) · well/REGRESS.md (L112-120) · mics/mic-31-axis-tagger.md · research/breaker-measure.md (L1-45) · mill/TERMS.md · templates/DS.md.

## hits
- research/rcvm.md:39 — `| ALLOC(task) | TaskSpec → DS-id | reserves row in G, returns DS-id |` — **partial**: task ≡ DS-id row is the only identity *handle* in the records; with L281-282 ("O.THRESHOLD_WRITE(task-spec) → Owner names first task (loads first row spec)" → "COS(task-spec) → allocates DS-001 row"), one task-spec = one DS row. But no predicate anywhere says when two task-specs are the same.
- research/breaker-measure.md:31-32 — `the same (D,W) pair already produced a FAILED gate on a PRIOR attempt of the same task` — **partial**: the ONLY mechanical use of "same task" on disk; squares are addressed `(ds-id, attempt-id)` (L22), so it resolves same-task = same DS-id *within* one task's attempts. The falsifier needs sameness *across* ≥3 distinct task rows — never defined.
- mics/mic-31-axis-tagger.md:7,17 — `tag the attempt's axis… append to the axis ledger` / `writes axis: {tag} + collision-count: {N same-tag} (3 = Prime migration signal, R3)` — **no**: counts same AXIS across attempts, not same TASK; nearest adjacent "3×" machinery, different operator.
- research/hypotheses-ledger.md:11 — `Verdict rule: ≥2 of the first 3 paired tasks confirm → H1 stands` — **no**: presumes "paired tasks" with no pairing definition either (the same gap one level up; demolition-log.md:191 already flags these falsifiers as assuming free verification).
- proposals/pr-006-receipt-attacks-and-math.md:31 — `receipt binds DS-ID + task-content-hash` — **partial**: task-content-hash is the only proposed materialization of task identity (hashable task content); proposed-in-file, unadopted.
- templates/DS.md:17-18 — burrow map `{task line} → {CH-xxx | NO NICHE}` — **no**: task line is free text on the DS page; no canonical form to test equality against.
- Side finding: **well/LB09.md does not exist** (glob well/LB*.md → LB01-LB06 only); the LB09 chain lives in well/REGRESS.md L112-120 + well/BECAUSE.md L72-78, while well/LB.md:16, HANDOFF_W01.md:12 and HANDOFF_W03.md:14 still cite the missing file.

## verdict
PIECE-FOUND (partial assembly — slot NOT closed): nearest material = rcvm.md:39 + :281-282 (task ≡ DS-id row keyed by Owner task-spec) + breaker-measure.md:22/31-32 (same-task used mechanically as same ds-id, within-task only) + pr-006:31 (task-content-hash, unadopted). No file states an equivalence predicate between two distinct tasks; same-by-task-spec / same-by-axis / same-by-burrow all remain unset, exactly as well/REGRESS.md L9-4 and well/KEEP.md L8 record.

## one-line
No — the hits give identity *handles* (DS-id rows, a proposed content hash, an adjacent axis-collision counter) but no stated same-task predicate, so `≥3 same tasks` stays uncheckable until a rule like "same = identical task-spec / same DS row class / equal task-content-hash" is written into a canon file.
