# "THIS IS JUST X" (D5-Q05)

## Strongest embarrassing reduction
**This is just a bug tracker.**
An issue ticket = RECORD; acceptance criteria = TEST-TEXT; logs/CI output = TRACE; "blocked/closed" = MARK; story points/estimate = COST; reopen count = COUNT/CATCHES; linking duplicates = ancestor citation; "cannot reproduce" = UNRUNNABLE (RUN11 found it independently).

## Coverage argument (honest count)
| Corpus failure | Bug tracker covers it? |
|----------------|------------------------|
| V-001 fabricated hash | YES — CI repro step + pasted log (I1 byte-compare = re-run CI) |
| DS-P-001 gate catch | YES — acceptance test failing the ticket's own definition |
| BK5 UNVERIFIED propagation | PARTIAL — blocked-by edges exist, but "blocked" is advisory, not terminal-inherited |
| BK7 exposure-counted demotion | NO — trackers have no mechanism-retirement by (tries, stops) |
| RUN11 UNRUNNABLE state | YES — "cannot reproduce" |
| EX2 stall (systemic deferred-judgment cost) | NO — backlogs accumulate silently; no cost-of-stall accounting |
| Fork field F (live rival) | NO |

## Verdict: HIT (partial, not total)
The reduction covers most of the PRACTICE (the per-record mechanics: criterion, receipt, mark, price). It does NOT cover three distinctive commitments: (1) terminal-inherited marks (BK5), (2) mechanism retirement by counted exposure (BK7), (3) the refusal object itself — a tracker serves completion; this doctrine serves REFUSAL (it can end with everything UNVERIFIED and have succeeded).

## Consequence (recorded, no blend)
The canon must say plainly: per-record mechanics = re-derived hygiene; the distinctive content = BK5 propagation, BK7 counted retirement, and the refusal object. If a future agent cannot defend those three against "just a bug tracker with quirks", the theory deserves to die. This is the standing embarrassor.