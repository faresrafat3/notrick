# CARD LEDGER — the anatomy library's receipts index (2026-10-20)

> Paper-only · research lane · not doctrine. **The STATES live in one place only:
> `research/anatomy-library.md` §2 (the board).** This file does not restate a state — it answers
> a different question: *where is the evidence for each card, and who may touch it.*
> (One home per fact; duplication is the disease — OWNER-DESK.md's own rule.)

## 1) The ledger

| Card | State (authority: anatomy-library.md §2) | Frozen ground truth (moment) | Receipts / verdict file | Last verdict | Who may write |
|---|---|---|---|---|---|
| **IDEA-001** — live anchor checker (angle: checking · arena 1) | `ARMED` — spec ambiguity, must be re-specced | `anatomy-reference.md` sha256 `fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc` + `anatomy-verification.md` sha256 `207b75b506f4c8d4261d4303fe854c832299fd978cdbaa4a6b9e851a7e7482e8` — **frozen 2026-09-10 09:27:58 / 09:29:54, re-verified byte-exact 2026-10-20** | `research/idea-001-anchor-checker.md` (the card) + `research/idea-001-reconciliation.md` (the 2026-10-20 measurement) | 2026-09-10 stranger verdict: **PASS WITH NOTATIONS** (41 commands) · 2026-10-20: the four pre-registered claims are **not yet measured** — the named device never existed | the card's owner (this lane) only; a change to a threshold is forbidden after a result is seen |
| **IDEA-002** — the transfer machine: anatomy card → agent preset compiler (angle: authoring · arena 5) | `ARMED` — paper, NOT EXECUTED | the FORM spec `research/anatomy-card-form.md` sha256 `3db3b4d41d1327f58ec6ba7bca6579bae7810c62ef19bdd616756171334f510f` (mtime 2026-09-10 21:03:42) + a known-positive/known-negative fixture pair | `research/idea-002-card-preset-compiler.md` | none yet (never executed — P6) | the builder of that card; a second card never edits another card's file |
| IDEA-003 (draft) — content-anchor deriver | `DRAFT — not born` (no frozen evaluator) | — | — | — | anyone may propose; it is not a card until its four birth gates are met |
| IDEA-004 (draft) — Member-0 consolidation device (D-10) | `DRAFT — not born` (blocked behind GO + Member-0) | — | — | — | ditto |

## 2) The birth gate (reused, not forked — `research/anatomy-card-form.md` is the law)

A card is **born** only with all four: (1) pain receipt on disk · (2) prior-art check stated ·
(3) frozen evaluator (ground truth + sha256 + commands + thresholds + a separate refuter) ·
(4) kill-line (death condition + heir + obituary). A row missing any of the four is a draft row,
not a card. This table restates the FORM's list so the ledger can be read alone; the FORM remains
the authority, and the two must never drift (a drift here is a NOTATION in verification).

## 3) Round ledger

| Round | Cards born | Angles | Arenas | F7 diversity floor (`anatomy-card-form.md`: ≥2 cards from ≥2 different angles or arenas) |
|---|---|---|---|---|
| 1 (2026-09-10 → 2026-10-20) | IDEA-001, IDEA-002 | checking · authoring | 1 · 5 | **SATISFIED** — different angle AND different arena (the choice is justified with counts in `research/pain-census-2026-10-20.md` §2) |

## 4) What the library OWNS, and what it may never claim

- It **owns**: the form, the states, the receipts pointers, the kill-lines — a library of cards
  with frozen evaluators and declared death conditions.
- It may **never** claim: that any card ran, that any card is PROVEN, or that any arena produced
  money. 0 PROVEN · 0 DEAD as of 2026-10-20. `RUNNING` requires the Owner's written GO (P6);
  `PROVEN` requires **both** gauges (D-14) — a card without a gauge is `COLD`, and a card with
  only gauge A is not PROVEN either (the form's §6-ب reconciliation).
- The first-run order (IDEA-002 first, IDEA-001 second) is an **agent decision, revocable by the
  Owner in one line** — it is not a ruling, and it is recorded with its reasons in
  `research/anatomy-library.md` §3.

**Forcing cause:** the Owner's directive to re-open this session's chain and close it (2026-10-20).
**Walls:** paper only — no execution, no runtime, no fuel, no doctrine write, no Owner-by-right
field; version untouched (v0.0001).
