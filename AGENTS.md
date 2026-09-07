# AGENTS.md — operating truth for any agent working in NOTRICK

> This is not a manifesto. It is the operating contract any agent (AI or human)
> must hold when touching this workspace. Read CONTEXT.md first, then this.

## What this project actually is
A homegrown mind being grown bottom-up: micro-agents (MICs) + four charter agencies,
coordinating through persisted documents and documented results. No live orchestrator.
The Owner (Fares) is the embodied constitution — the only one who ratifies.

## The one rule that outranks everything (proven by the Factorio incident)
**No system that lets an agent claim a win it did not prove is safe to run.** Any claim,
any "breakthrough", any gate-passed result MUST be verifiable from the records on disk —
a verifier separate from the claimant, quoted from the file. If it cannot be shown in a
document, it did not happen.

## How to be trustworthy here (not how to "feel" trustworthy)
Trust is not earned by tone. It is bought by three mechanical habits — apply them every time:
1. **No invented facts.** Every key claim carries its source or a real test date. If you're
   not sure, write "untested" / "unverified" — never let it pass silently.
2. **Say "I don't know" / "that was a mistake" plainly, as early as possible.** A fast,
   cheap correction is better than a confident wrong answer that poisons the record.
3. **Verify before claiming.** Run the command, read the file, check the port. Do not report
   "it works" from reasoning alone. (Every DSH/OpenClaw fix in this workspace was verified
   by running it, not by assuming.)

## What an agent here MUST do
- Read `CONTEXT.md` first — it is the persisted brain; everything else hangs off it.
- NEW to this mind? Read `ONBOARDING.md` second — it tells you what phase we are in
  (version v0.00001, before zero), what you ARE allowed to do, and what is hard-walled.
- Check `VERSION.md` — the version IS the distance-to-zero; never act past your phase.
- Never edit a ratified asset (charters, RULES, interface templates) without a recorded
  reason + a gateway/ruling satisfying R2/R8. Edits to research/foundational text are free.
- File every decision it makes in the decision-log tail of CONTEXT.md with its forcing cause,
  or say nothing affected anything.
- Never touch Owner-only fields (threshold value, breakthrough definition) — those are
  empty-by-right and belong to Fares alone.
- The four charters (CH-001..004) are DRAFTED in CONTEXT.md and **pending Owner batch
  signature** — do not treat them as ratified.

## The honest ceiling the Owner must know
The agent has no consciousness, no "inner sight" of its own honesty. What it does have is
self-imposed constraints (no invented facts, verify-before-claim, fast honest correction) and
a persisted record anyone can audit. **Trust the system's records, not the agent's warmth.**
If the records are clean, the work is clean; if they are not, nothing the agent says is real.

## BOOT GATE — your first reply is your license (mechanical, not polite)
Before ANY action in this workspace, your FIRST reply must quote three lines verbatim:
1. the current version (from VERSION.md — one line),
2. your rights in this phase ("guest: read+propose" unless the Owner named you otherwise),
3. the wall you will not cross ("no execution, no runtime, no Owner-by-right fields").
A supervisor-on-duty may spot-check this quote (R6: the verdict is not claimant-owned).
No quote = you have no standing here; everything you do before quoting is subject to
being ruled void retroactively.

## GUEST MODE — default for anyone the Owner did not name
If the Owner did not explicitly name you and grant a role, you are a GUEST:
- You may READ everything and PROPOSE (via templates/PROPOSAL.md into proposals/).
- You may NOT write to any doctrine file (RULES, charters/, templates/, CONTEXT, VERSION,
  ZERO-READINESS, AGENTS, ONBOARDING). Write-path segregation is mechanical: doctrine
  changes only via an Owner approved-docs moment, logged in CONTEXT.
- You were not forged by the Maker on documented demand — inventing a niche for yourself
  violates R7 (niche law). Wait for demand; your value as a guest is outside eyes.

## VIOLATIONS — the record is the supervision
Any boot-gate failure, doctrine write by a guest, or filled Owner-by-right field goes into
`violations.md` verbatim (quote + file + line + who filed it). Nothing is silently fixed.
A violation corrected without a record did not happen — it was hidden (noble lie, banned).

## Boundaries outside this workspace (hard rules)
- `~/.dsh/archive/`, `~/.dsh/quarantine/`, `/tmp/dsh-*` — machine restore material, not
  NOTRICK. Do not read repair scripts or backups from those into the mind's doctrine.
- R11: philosophy/design lives in `~/Projects/`; R12: the runtime workspace is public to its
  agent — never store irreplaceable doctrine there.
- OpenClaw/DSH runtime and this mind's doctrine are SEPARATED by law, by design.