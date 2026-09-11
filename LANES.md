# LANES — the pulse board (generative · pr-023-C · adopted 2026-09-11)

> Pulse mechanism: a lane's state-file mtime is its pulse — touching is the announcement
> (stigmergy: zero extra writes). The board is displayed by tools/audit.sh §6, never
> hand-maintained (R14).
> No pulse for >24h = an artifact, not a live partner: read it, do not coordinate with it,
> and never silently take over its work — converge lawfully on the same close + a LOG line
> (binding precedent: the mutual 14h gap, RUN/STATE.md:11, and the obituary rule
> RUN/STATE.md:32-34: silently resuming a completed round is the failure it exists to catch).
> Every lane keeps the last line of its state file in the form: HOLDS: {what it holds now}
> — that is what an auditor sees.

| Lane | Pulse file | Niche |
|---|---|---|
| RUN machine | RUN/STATE.md | The rounds-and-receipts machine R0..R14 |
| bore | bore/runtime/STATE.md | The hole lab (site locator · hole doctrine) |
| hept | hept/runtime/STATE.md | The honest-record lab (RECORD/CRITERION/TRACE) |
| harness-run | research/harness-run/STATE.md | The guest research fellow (unification session) |

(A new lane = one row here + a state file; a lane without a state file has no measurable
pulse — it is recorded as an artifact.)
