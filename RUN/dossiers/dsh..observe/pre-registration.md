# PRE-REGISTRATION — G-B OBSERVE lane (`dsh..observe`)

Written before any measurement command in this session. Round 1 of goal
`goal-8352cbd7-53a7-43e7-aeb1-e43a2bb487d2` (phase: active, activation: armed — read from
the goal tool this session). Boot gate quoted in first reply; phase v0.00001 confirmed
against VERSION.md:8.

## Declared degradation (before measuring)
- Root `tools/` is ABSENT (`ls: cannot access 'tools'`, session command output).
- `RUN/tools/` exists and will be inspected for `plurality.py`, `windows.py`, `beat.py`;
  the brief's paths are treated as possibly stale, not as false.
- Git history is available (main branch, 21+ commits) → kill trigger 2 NOT fired.

## Method, fixed now
- M1 SPLIT CENSUS: executable test if a splits-capable script exists under `RUN/tools/`;
  otherwise manual: a SPLIT is two admissible entries on the same slot where neither had
  the other to answer to (not a CONFLICT, not a STALE). Sources: committed artifacts +
  `git log` / `git status` / `git merge-base --is-ancestor` only. No live dossiers (none exist).
- M2 DUPLICATION RATE: corpus fixed NOW (proxy, honestly labeled): all markdown list-entry
  lines (`^\s*[-*] `) under the six lane trees `bore/ hept/ mill/ phantom/ well/ mics/`.
  Shape = entry line with digits→`#`, hex-ids→`H`, paths→`P`. dr_exact = (entries − distinct
  shapes) / entries. The brief's baseline (2262 / 0.083 / 2061) is not recorded anywhere in
  this tree (repo-wide grep, zero matches) — comparison will be labeled brief-claim, not
  on-disk fact.
- M3 ZERO-SPLIT VERDICT: N = lanes with committed artifacts, counted from git history +
  lane directory evidence. If N < 3 → record NOT MEASURABLE (kill trigger 1), never "no collapse".
- M4 RULE-PROPAGATION GAPS: `windows.py --check` if present; otherwise manual per named lane
  pair from lane window declarations; known gaps to confirm/correct: mill/STATE.md:16 vs
  protocols/ADHA-v1.md:145; AGENTS.md window status.

## Predictions (falsifiable, pre-measurement)
- dr_exact lands in the wide band (below 0.10–0.15).
- At least one SPLIT exists among live lanes on pointer/slot files (git status shows
  concurrent uncommitted writes in bore/, hept/, research/harness-run/, LOG.md).
- Both known M4 gaps confirm; AGENTS.md window status stays unstated.
- N ≥ 3.

## PRE-REGISTERED OBITUARY (ARC Omega-5)
verdict: dies if it cannot produce M2 with a number, or if it reports a finding it did not
measure.
lesson: recorded either way.
burial: the observation file stays on disk; nothing deleted.
heir: the Owner's decision to keep or cut a lane.
ledger: CONTEXT.md append-only tail.

## Kill triggers acknowledged
- fewer than three lanes with committed artifacts → M3 = NOT MEASURABLE.
- tools/ absent AND git unavailable → M1/M2 unmeasurable (git available: not fired).
- writing doctrine instead of measurement → self-kill; observation file carries numbers only.
