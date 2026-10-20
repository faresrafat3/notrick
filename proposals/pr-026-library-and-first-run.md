# PROPOSAL — P-026
> the ONLY thing a guest may create. Filed in proposals/. Never edited after filing
> (corrections = a new proposal citing the old one). Owner reads, rules, and only an
> approved-docs moment moves its content into doctrine.

## Meta
- **ID:** P-026 · **filed:** 2026-10-21 · **by:** agent (anatomy workstream), under the Owner's standing delegation ("خد كل القرارات بنفسك" — CONTEXT.md:538-569) and the 2026-10-20 re-open directive
- **boot-gate quote (must match the agent's first reply):** `# VERSION — v0.0001` · rights: `guest: read+propose` · wall: `no execution, no runtime, no Owner-by-right fields` — **NOTE (filed, not hidden):** the session's first reply quoted `v0.00001` from a pre-restart snapshot read; the true version was `v0.0001` since 2026-09-19. The wall and the rights were quoted correctly. Filed as a boot-gate accuracy defect (violations ledger, V-007) — the rule is that a correction without a record did not happen.
- **type:** ADR challenge + rot report
- **status:** PENDING OWNER

## The proposal (one sentence)
**Make the anatomy-card library the decidable first run: (a) adopt the library board as the single home of the cards' states, (b) confirm the first-run order — IDEA-001 (arena 1, checking) first, IDEA-002 (arena 5, authoring) second, which follows D-13's "arena 1 first" — and (c) add the two missing recording fields (arena + money receipt) to the DS template so a first run can actually record its own gauge A.**

## What the Owner is asked to pick
1. **The first-run order — now following D-13.** The board's first version put arena 5 (IDEA-002) first; a context-isolated reviewer (R6) attacked that on mechanical grounds and returned **CHANGE**, and the check against the disk held: IDEA-001's device already exists with ≥12 dated rounds and a measured H4, IDEA-002's device does not exist and its spec needed seven repairs. The board now follows **D-13's "arena 1 first"** (`research/anatomy-bridge-arena-candidates.md:17`). The Owner's line may confirm it or overrule it — either way no file needs rewriting: the cards' states do not change, only the order does. (`research/anatomy-library.md` §3.)
2. **The DS fields** — (c) above: `templates/DS.md` has no arena row and no money-receipt row, so a first run **cannot record its own gauge A**. Adding them is an approved-docs moment (templates are doctrine) and needs the Owner's line; the fields' shape is already specified in the card's §3 (fixed form: `preset.yml` + `agent.cordis.yml`; moving content: the card's fields, each traced to a card line).

## Evidence (R10 — every claim crosses an existing entry)
- **The first-run order was decided by an adversarial review, not by taste (R6 in action):** a context-isolated reviewer attacked the board's first version of the order and returned **CHANGE**; the claim that IDEA-001's H1/H2 were "expressible today" was itself checked against the disk and **overruled** (`research/idea-001-reconciliation.md:21`, `:797` say the tool cannot express them). Both halves are recorded: `research/anatomy-library.md` §3, and the card's §10.6-§10.8 (seven spec defects, repaired).
- **The library is real and is a library, not one card:** 2 born cards (IDEA-001, IDEA-002) + 2 draft rows + the diversity floor of `research/anatomy-card-form.md:53-54` now satisfied (different angle AND different arena) — `research/anatomy-library.md` §1-§2, `research/card-ledger.md` §3.
- **IDEA-001's named device never existed** (`anchors.py`/`anchors.tsv` → 0 hits tree-wide) while the device that WAS built (`tools/citecheck.sh`, adopted pr-024-C) measures a different failure class — `research/anatomy-library.md` §4, `research/idea-001-reconciliation.md`, `research/idea-001-anchor-checker.md` §8.
- **A whole failure class is uncaught, proved with the tool's own engine** (extracted verbatim, run on a probe): a reference that *resolves* but says the wrong row passes the sweep — `research/anatomy-library.md` §5 (two builds: M1 2026-09-11 sha `d0c8b5c8…`, M2 2026-10-21 00:16 sha `80defbd4…`; the probe returns 0 drifts on both).
- **The first run has no subject, no arena and no money field in the doctrine:** `ZERO-DAY-RUNBOOK.md:22` still ends in the literal placeholder `Task: {...}`; `templates/DS.md:1-29` has no arena field and no money-receipt field (grep for arena/dollar/receipt → 0 hits); P3 is empty (`RATIFICATION-BATCH-001.md:18`) and P4 is ruled "TEXT-UNTIL-THEN — lessons carry text, never a metric" (`:21`).
- **The Owner has no row for any of it:** `OWNER-DESK.md` carried no anatomy/arena/first-run row before this filing (grep → 0 hits) — the vision was a research file with no decision surface.
- **Nothing is overclaimed:** 0 cards PROVEN, 0 cards DEAD, 0 money, no fuel, no runtime, no Owner field touched — `research/anatomy-library.md` §6, `research/card-ledger.md` §4.

## What adopting it would change (and what it would NOT)
- **Would:** give the library a decision surface + a ruling field; make the first run decidable; put the money measurement into a form the DS page can carry.
- **Would NOT:** authorize anything. P5 (fuel) and P6 (the written GO) stay exactly as ruled (HOLD / NOT YET); `RUNNING` remains the Owner's gate alone (`research/anatomy-card-form.md:50`).
- **Reversible:** the arena choice and the order are one line each.

## Owner ruling
- *(empty-by-right — the guest NEVER fills this)*
