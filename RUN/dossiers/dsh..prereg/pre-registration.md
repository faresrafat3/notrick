# DOSSIER — dsh..prereg (G-A · smoke-call pre-registration)

**DOSSIER LINE:** G-A · dsh..prereg · round 1 · goal_armed=YES · last_tool=write(pre-registered
obituary + dossier) · status=IN-FLIGHT · deliverable=proposals/pr-011-smoke-call-prereg.md
(pending at this line's writing) · verifier=context-isolated subagent, description="dsh..prereg" (pending)

## PRE-REGISTERED OBITUARY (ARC Omega-5 — written BEFORE proposals/pr-011-smoke-call-prereg.md
exists on disk; witness: this file's mtime precedes the deliverable's)

- **verdict (pre-registered):** this goal dies if the package cannot name a PASS criterion a
  stranger could apply without asking the author a single question.
- **lesson:** recorded in the file either way, including if the lesson is "the premise is
  untestable as stated".
- **burial:** proposals/pr-011-smoke-call-prereg.md stays on disk with its failure section
  filled. Nothing is deleted.
- **heir:** the Owner's P5 line ("P5: AUTHORIZED"), which this file makes cheap to type.
- **ledger:** CONTEXT.md append-only decision-log tail.

## RECEIPT (finalized 2026-09-08T~21:47Z, after deliverable + verifier)

- **lane / identity:** G-A · owner `dsh..prereg` · round 1 of 256 · goal_armed=YES (harness
  goal loop drove this turn; goal tool state read and closed this turn).
- **pointer check (F-6):** RUN/STATE.md names no G-A round ("next_round: none — SERIES 2
  COMPLETE", :4, :11). Declared in first reply: fresh lane, no silent re-run.
- **BOOT GATE:** quoted verbatim in first reply (VERSION.md:8 line · rights line · wall
  line) before any write. AGENTS.md:47-54 satisfied.
- **opening fact:** ZERO-READINESS.md:17-18 text verified current in-session. **F-1:** its
  count is stale — `grep -cE '^[A-Za-z_][A-Za-z0-9_]*=' ~/.openclaw/.env` printed **57**
  (doctrine says 38). Variable NAMES listed (values never printed). No value ever entered
  the workspace.
- **degraded tools (F-2):** `python3 tools/lease.py acquire --owner dsh..prereg --note "G-A"`
  → exit 2, stderr "can't open file ... No such file or directory"; same for
  `tools/windows.py --check prereg` (exit 2) and `tools/dsh/beat.py "YES read"` (exit 2).
  `ls tools/ tools/dsh/` → "No such file or directory". Consequence: leases could not be
  acquired (no collision occurred this round — all writes landed on virgin paths:
  proposals/pr-011-smoke-call-prereg.md absent before write, test-printed False;
  RUN/dossiers/dsh..prereg/ and RUN/windows/ did not exist); windows --check could not run
  (gap recorded — the check cannot bind a lane when the checker itself is absent); SPLITS:
  none needed (no denied lease, no contested path).
- **window:** RUN/windows/prereg.window written (proposals/pr-011-smoke-call-prereg.md ·
  RUN/dossiers/dsh..prereg/ · RUN/windows/prereg.window · RUN/smoke/ · CONTEXT.md tail).
  `--check` impossible (script absent) — recorded as a FINDING per the objective ("a rule in
  your file cannot bind a lane that never opens it" — here the binder itself is missing).
- **kill triggers (pre-registered):** (a) PASS criterion without Owner-by-right values — not
  fired (S2 is purely mechanical); (b) dependency unprovable in 60 ops — not fired (the call
  needs only the .env var name + network; nothing else unproven is load-bearing); (c)
  duplicate content — not fired: `test -f proposals/pr-011-smoke-call-prereg.md` → absent
  (printed), OPS_QUEUE.md greps for smoke/prereg/pr-011 → "(no match)", ZERO-DAY-RUNBOOK.md
  read in full — contains only the pre-flight checklist line, no prereg.
- **deliverable:** proposals/pr-011-smoke-call-prereg.md — S1..S10 + findings F-1..F-8 +
  sources + obituary outcome. Written 2026-09-08T21:3x–21:4xZ session clock.
- **verifier (W2):** delegation description exactly `dsh..prereg`. First attempt errored
  mid-run ("subagent run failed", partial output only — no verdict; recorded, not hidden).
  Second attempt (same description) returned: **S1 PASS, S2 PARTIAL, S3–S10 PASS, OVERALL
  PASS**, quotes verified byte-exact (VERSION.md:11, RATIFICATION-BATCH-001.md:25,
  RULES.md:25), secret-scan grep zero hits. TOP-3 objections: (1) C4 usage check missing
  from stranger commands; (2) falsifier ambiguity on key↔provider mapping; (3) in-session
  evidence not disk-reproducible. **Post-verdict patch applied:** S2 now carries a third
  stranger command (usage>0) and S8 requires all three — objection 1 closed mechanically;
  S7 carries the mapping-precision clause — objection 2 recorded in the file; objection 3
  answered HERE: the load-bearing prints are quoted in this receipt (57 keys; prompt 65
  chars / 9 words; $0.00000711 paid-ref; $0.00145000 worst-case; catalog fetched HTTP 200
  2026-09-08T21:38:58Z) — disk records of in-session outputs, re-derivable only by
  re-running the same commands (tiktoken ABSENT printed).
- **W10 (op cap):** this session used ≈30 tool operations at receipt time (cap 60,
  halt-and-receipt at 50) — under budget, no overrun.
- **beat:** `python3 tools/dsh/beat.py "YES read"` → exit 2 (script absent). Recorded here
  as the standing beat surrogate: goal_armed=YES · last_tool=edit(receipt finalize) ·
  round 1 complete.
- **not relied upon:** research/concurrency.md — absent on disk (test printed False);
  nothing in this package depends on it (F-5).
- **walls held:** no execution, no runtime, no smoke call, no Owner-by-right field touched;
  write lane respected (proposals/, RUN/, CONTEXT tail only); no doctrine file opened for
  writing; /tmp/dsh-* spill file deliberately NOT read (AGENTS.md:71-75).
- **recommendation:** none given — the file prices the Owner's decision; it does not make
  it. P5 remains HOLD (RATIFICATION-BATCH-001.md:25).
