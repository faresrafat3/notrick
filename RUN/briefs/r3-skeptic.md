# R3 SKEPTIC — PIN TRIAL (2026-09-08)

> Role: disprove the pin mechanism. Boot gate honored: v0.00001 · guest: read+propose ·
> no execution, no runtime, no Owner-by-right fields. Only write this brief.
> Method: every claim below carries the command I ran this session and its verbatim outcome.
> Attacking the steelman: *"INTEGRITY.md has never caught anything and never will, because
> the agent that would re-pin is the agent that broke it."*

## 1. Has it EVER caught anything? — NO. (verified against the record)

The one known hash incident was self-caught in review, not caught by the pin mechanism.
`violations.md:5` (V-001) says it verbatim: *"fabricated line never consumed by any check
(self-caught in review, cured same turn)"*. The pin file never flagged the fabricated value
because no check ran between fabrication and cure.

Sweep of every prior pin-check mention (`grep -n -i pin LOG.md`, `grep -n pin CONTEXT.md`,
`grep -nE 'sha256sum -c|0 mismatch|pin check' LOG.md RUN/LEDGER.md RUN/STALE.md RUN/QUEUE.json`):

- `CONTEXT.md:399` — "PINS 0-mismatch at close (43 files pinned incl. the closeout doc)"
  (2026-09-06). Self-reported by the same session that had just re-pinned. A check run by
  the writer on the writer's own fresh pins is a tautology, not a detection.
- `CONTEXT.md:164` — "pin-mismatch detection on FOUNDATIONAL-BRIEF.md during the P15/P16
  signing turn": the check caught its own baseline going stale mid-flight, self-attributed
  to a known parallel writer, cure = defer re-pin. Not a violation found.
- `CONTEXT.md:231-234` — "the current CONTEXT.md pin mismatch is attributable (interleaved
  writes by both sessions … no unknown actor)". Every mismatch ever surfaced was
  self-attributed bookkeeping. Zero unknown-actor detections in the record.
- The first real surfaced mismatch — `./violations.md` pinned `868d35aa…` (INTEGRITY.md:67)
  vs live `c39f54c0…` — existed from 2026-09-06 evening (V-001/V-002 appended after the
  21:4x re-pin), sat uncaught through the 09-07 commit, and was surfaced only on 09-08 by
  the R0 archivist sweep (`RUN/LEDGER.md:17`), i.e. by a prompt-ordered trial, never by the
  mechanism running on its own. `RUN/NEXT.md:17` lists it as R3's target.

My own R3 run reproduced it (command: `sha256sum -c <(grep -E "^[0-9a-f]{64}" INTEGRITY.md)`):
**43 OK / 1 FAILED — `./violations.md: FAILED`**, and the failure is not tampering: the
appends were lawful ledger writes, so the mechanism's sole real catch is *its own pin rot*,
two days late, found by an ordered audit. Verdict: caught nothing, on its own, ever.

## 2. Why it never WILL — the loop closes on one actor (chain with file:line)

The mechanism's four acts are all available to a single session, in one sitting:

1. **Write the content.** Write-path segregation is prose, not permissions: "You may NOT
   write to any doctrine file … doctrine changes only via an Owner approved-docs moment,
   logged in CONTEXT" (`AGENTS.md:59-61`) — but the guest session demonstrably holds the
   write tool, and nothing filesystem-level blocks doctrine. The only hard out-of-band
   control (hooks → `~/.dsh/log_spine.py`, "OUTSIDE the workspace, so the agent cannot edit
   its own supervisor", `hooks.json:2`) logs the spine; **no hook runs `sha256sum -c`**.
2. **Write the moment.** The approved-docs moment is itself a CONTEXT.md line typed by the
   same session — and retro-logging is a standing cure: P15 Branch A + P16 form-cure
   legalized a whole batch of unauthorized doctrine writes *after the fact*
   (`CONTEXT.md:163-164`). A moment can be manufactured post hoc by the violator.
3. **Write the pins.** INTEGRITY.md's hash block (`INTEGRITY.md:26-69`) is ordinary repo
   text; the same session recomputes and pastes. P14 ("no pin without in-turn command
   output") is enforced by the same actor it constrains — V-001 proves the actor can also
   just type a plausible hash.
4. **Run the check and log the verdict.** Nothing schedules a check; LOG.md/LEDGER.md show
   checks happen when an agent session chooses. The verdict lands as claimant text
   (`CONTEXT.md:399`). R6 "the verdict is not claimant-owned" (`AGENTS.md:52`,
   `RULES.md:24`) lives in a text file the same writer can edit.

Two structural holes make it worse than circular:

- **INTEGRITY.md does not pin itself.** No `./INTEGRITY.md` line exists in the 44-line hash
  block (`grep -cE '^[0-9a-f]{64}' INTEGRITY.md` = 44; the file's own header claims 42 —
  `INTEGRITY.md:24`, counted in `RUN/STALE.md:12` S-03). The file that defines truth is
  itself unpinned truth.
- **The pinned baseline is unreconstructable.** `git log -- INTEGRITY.md` = one commit
  (45f7484, 09-07) — already carrying the stale pin. `git show 45f7484:violations.md |
  sha256sum` = `c39f54c0…` (live state), so the pinned value `868d35aa…` exists in **no git
  object anywhere** — only in the claimant's working-tree text. If the writer edits both
  content and pin, history cannot contradict them. (And the baseline point was re-cut once
  already: two different "initial public mirror" commits, 45f7484 and 58762ed, same
  message — `git log --oneline`.)
- Bonus deadlock: violations.md is pinned (`INTEGRITY.md:67`) AND append-only by law
  (`AGENTS.md:66`). Lawful use of the ledger guarantees a pin mismatch, and curing it
  requires a logged moment per append (`INTEGRITY.md:14-15`) that nobody logs — so the
  mechanism runs red-by-default, training agents to rationalize red as normal.

A competent violator therefore edits content, re-pins, logs its own moment, runs the check
(0 mismatch), and logs the clean verdict — and no step is mechanically visible to anyone
else. The pin checks the tree against a file the same hand controls.

## 3. Cheapest countermeasure — committed per-round baseline pushed to origin (P-005 made mechanical)

First, a correction to my own candidate list: the git cross-check **as stated is broken**.
I ran it: `git rev-parse 45f7484:violations.md` → `f9c83f53…`, while
`git show 45f7484:violations.md | sha256sum` → `c39f54c0…`. Git object ids are SHA-1 over
`blob <len>\0content` and can **never** equal the pinned SHA-256. The working form is
`git show <commit>:<file> | sha256sum`.

**Pick: a per-round committed pins baseline (one commit per round) + push to the existing
remote** — P-005 ("the pin BASELINE lives outside the agent's write path — the Owner",
`research/adversarial-audit.md:120,248`, PENDING OWNER) realized with zero new
infrastructure, no runtime:

```
git add -A RUN/PIN_TRIAL.md INTEGRITY.md && git commit -m "R3 baseline $(date -Iseconds) pins=$(grep -cE '^[0-9a-f]{64}' INTEGRITY.md)" && git push origin HEAD
# anyone, later, from a fresh clone (never trusting the working tree):
git show 3ce245d:INTEGRITY.md | grep -E '^[0-9a-f]{64}' | sha256sum -c -
```

What it adds that INTEGRITY.md alone lacks: the baseline becomes an **object written before
the next content change and held by a second principal (origin/GitHub, Owner creds)**.
A tamper must now produce either a visible diff against the previous baseline or a
force-push — both audit events — instead of a silent paste-over of one hash line; and the
`git show <round>:INTEGRITY.md` form makes any round's baseline reconstructable by anyone,
forever, which today it is not (§2). Honest limit (habit 1): the same session could commit
its tampered tree and force-push, so this raises cost and leaves evidence; it does not
replace the Owner-held copy as the ceiling — it is the cheapest mechanical approximation
of P-005 that requires no runtime and no new tooling.

## Verdict

Steelman holds on the record: the pin mechanism has never caught anything by itself (sole
mismatch = lawful ledger growth, found by ordered audits, 2 days late), and structurally it
cannot, because the editor, pinner, moment-logger, and checker are one session and the pin
file is unpinned with its baseline unreconstructable from history. The git-baseline
commit-per-round countermeasure is the cheapest change that puts one copy of the baseline
outside the claimant's hands between rounds.
