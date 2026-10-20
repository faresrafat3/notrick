# LANES — the map and the pulse board (generative · pr-023-C · adopted 2026-09-11 · register v2 2026-10-20)

> **Two surfaces, two jobs.** This file is the MAP: for every subtree, what it is (in the
> lane's own words) and where to enter it. The STATUS is generated and never written here:
> `bash tools/audit.sh --lanes` prints the live register (files · state file · pulse age ·
> the lane's own status words · HOLDS-line compliance), and the card's §6 shows the pulses.
> Hand-maintained status on this board rotted — bore and hept were listed as live partners
> while their own state files said COMPLETE/frozen (measured 2026-10-20).
>
> **Pulse mechanism:** a lane's state-file mtime is its pulse — touching is the announcement
> (stigmergy: zero extra writes). No pulse for >24h = an artifact, not a live partner: read
> it, do not coordinate with it, and never silently take over its work — converge lawfully on
> the same close + a LOG line (binding precedent: the mutual 14h gap, RUN/STATE.md:11, and
> the obituary rule RUN/STATE.md:32-34: silently resuming a completed round is the failure
> it exists to catch).
>
> **HOLDS-line convention (honest status):** every lane *should* end its state file with
> `HOLDS: {what it holds now}` so an auditor sees the holding at a glance. **Measured
> compliance: 0 of 7 lanes** (2026-10-20, `grep -rn '^HOLDS:'` → 0 matches in 0 files) after
> 41+ days of the convention's life. The register reports the number on every run, so the
> gap is visible instead of assumed. The Owner may either enforce it on the lane-runners or
> retire it — it is surfaced, not silently kept as if it were held.

## The map — 8 subtrees, every niche quoted from the lane's own self-description

| Lane | Niche (self-quoted, with file:line) | Enter at |
|---|---|---|
| RUN machine | "SERIES 2 run pointer (updated after every round)" (RUN/STATE.md:1) | RUN/STATE.md → QUEUE.json → last receipt → RUN/NEXT.md → RUN/WALL.md |
| bore | "Site locator: proposals/pr-006 §2 'Sampler math' lines 12-18" (bore/CORE.md:3) | bore/runtime/STATE.md |
| hept | "Refuse every success claim that cannot re-run its own test in front of you" (hept/CANON.md:7) | hept/runtime/STATE.md |
| mill | "It converts Owner rulings and research notes into doctrine files with IDs, gates, and falsifiers" (mill/WHAT_IT_IS.md:2) | mill/STATE.md |
| well | "current position of the WELL reason-mill" (well/STATE.md:1) | well/STATE.md |
| phantom | **SELF-DESCRIPTION ABSENT** — nearest: "role=second agent, independent; not helper/reviewer/summarizer of the official theory" (phantom/STATE.md:7); its object is banned on purpose (phantom/OBJECT_BAN.md:3) | phantom/STATE.md |
| harness-run | "GUEST RESEARCH FELLOW (Owner-appointed via this goal)" (research/harness-run/STATE.md:3) | research/harness-run/STATE.md |
| protocols | "Anti-Demo / Anti-Hallucination Prompt Architecture (ADHA) — Four-Role Prompt Fortress" (protocols/ADHA-v1.md:2) — PROPOSED, unratified (protocols/CWVP-v1.md:4) | protocols/VERIFICATION-CHECKLIST.md |

## The generated status (never written here)

`bash tools/audit.sh --lanes` — the live register. Card §6 shows the pulse board. The
snapshot that motivated the split (2026-10-20, quoted as evidence, not stored as truth):
RUN 66 files/1008h · bore 108/1009h ("day: 7 (COMPLETE — frozen)") · hept 116/998h ·
mill 139/1052h · well 30/1023h · phantom 30/1052h · protocols 6 (no state file) ·
harness-run 6/1008h — and **0 of 7 hold a HOLDS line**.

(A new lane = one row in the map above + a state file; a lane without a state file has no
measurable pulse — it is recorded as an artifact. The register is generated; the map is
hand-written; the status is never hand-written.)
