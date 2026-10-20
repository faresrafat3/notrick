# CARD LEDGER — the anatomy library's receipts index (2026-10-20; revised 2026-10-21 02:1x +03)

> Paper-only · research lane · not doctrine. **The STATES live in one place only:
> `research/anatomy-library.md` §2 (the board).** This file does not restate a state — it answers
> a different question: *where is the evidence for each card, and who may touch it.*
> (One home per fact; duplication is the disease — OWNER-DESK.md's own rule.)
> **Reconciliation of that rule with the table below (2026-10-21):** a row may *name* a state
> only as a **pointer that re-derives itself** — the state cell carries the file and the command
> that reads it (§0.1). A reader who wants the state opens the card; a reader who wants the
> board's decision opens the board. Neither fact is stored twice.
> **Cross-links:** the shape every card obeys is `research/anatomy-card-form.md` (**the FORM —
> binding, reused below and never forked**); the board (states · first-run order · draft rows)
> is `research/anatomy-library.md`; the angle of card #2 was chosen by
> `research/pain-census-2026-10-20.md`; the cards are `research/idea-001-anchor-checker.md`
> and `research/idea-002-card-preset-compiler.md`.
> **R14 (why there are no hand-kept numbers here):** every status and every count in this file
> is generated from the records at read time — each one carries the command that produced it.
> A hand-kept tally on an index is a lie on a timer (`RULES.md:61-72`). This file is a **witness
> of a moment**; where a row and a record disagree, **the record wins**. English per R15
> (`RULES.md:74-82`).

## 0) How to re-derive this file (run these; they are the ledger's own receipts)

### 0.1 The state of every card (one command; no row is hand-typed)
```
$ cd /home/fares/Projects/notrick
$ grep -n -m1 -E '^## (الحالة|State): ' research/idea-001-anchor-checker.md research/idea-002-card-preset-compiler.md
research/idea-001-anchor-checker.md:5:## الحالة: **ARMED** (الأقسام 1-4 مكتملة — تنتظر GO المكتوب P6، لا تنفيذ قبلها — D-09)
research/idea-002-card-preset-compiler.md:30:## State: **ARMED** (§§1-4 complete — waits for the Owner's written GO (P6); no execution before it — D-09)
```
IDEA-001 carries a second, dated state statement in its own §8.7 (the 2026-10-20
reconciliation): `research/idea-001-anchor-checker.md:135` — *"**State: ARMED — and NOT
EXECUTED, as before.**"*

### 0.2 The four birth gates, per card (the FORM's test, applied live)
The FORM's gates are the law (`research/anatomy-card-form.md:6-11`); this is the same test
applied to each file — not a fork of it:
```
$ for f in research/idea-001-anchor-checker.md research/idea-002-card-preset-compiler.md; do
    k=$(grep -c -iE 'kill-line|خط القتل' "$f"); p=$(grep -c -iE 'prior-art|فحص السابقين' "$f")
    q=$(grep -c -iE 'pain receipt|إيصال الوجع' "$f"); e=$(grep -c -iE 'sha256' "$f")
    echo "  $(basename $f): kill=$k prior=$p pain=$q sha256=$e"
  done
  idea-001-anchor-checker.md: kill=4 prior=1 pain=2 sha256=7
  idea-002-card-preset-compiler.md: kill=9 prior=3 pain=3 sha256=12
```
All four gates are present in both cards. A card missing any one of them **is not born** — it
is a draft row on the board, not a row here. (The numbers are grep hit-counts, not a score:
they say *the gate is present*; the gate's content is read in the card.)

### 0.3 No card claims a state it has not earned
```
$ grep -nE '^## (الحالة|State): \*\*(RUNNING|PROVEN|DEAD)' \
    research/idea-001-anchor-checker.md research/idea-002-card-preset-compiler.md | wc -l
0
```
No card is RUNNING, PROVEN, or DEAD. Both are ARMED, both are NOT EXECUTED.

### 0.4 The frozen fixture hashes (IDEA-002 §6.1 / §6.2) — recorded here, not in the card
The card is the *object* being hashed, so it cannot carry its own hash; this ledger is written
after the card, which removes the circularity without weakening the freeze. A stranger
re-derives them with the card's own extraction commands
(`research/idea-002-card-preset-compiler.md` §4.2):
```
$ mkdir -p /tmp/acc-fixtures
$ sed -n '/^### 6\.1 /,/^### 6\.2 /p' research/idea-002-card-preset-compiler.md | sed '1d;$d' > /tmp/acc-fixtures/positive.md
$ sed -n '/^### 6\.2 /,/^### 6\.3 /p' research/idea-002-card-preset-compiler.md | sed '1d;$d' > /tmp/acc-fixtures/negative.md
$ sha256sum /tmp/acc-fixtures/positive.md /tmp/acc-fixtures/negative.md
58a5557c5eb1c0482a259d9ab7db23b2b37c657c5efa6481d2b8e9e71cdc8733  /tmp/acc-fixtures/positive.md
7a5d377c0a205d44d7a0044b59e2dc433f4d8ee25c0f8ed9f17c85ff5d7bcd7f  /tmp/acc-fixtures/negative.md
```
(858 B and 901 B at the moment above. **If these two hashes no longer match, the card was
edited after this ledger was written** — re-read the card before trusting any row below; the
ledger does not win over the card.)

## 1) The ledger

| Card | State (pointer: card's own state line · re-derive: §0.1) | gauge B — frozen evaluator | gauge A — external receipt | Kill-line + heir | Frozen ground truth (moment) | Receipts / verdict file | Last verdict | Who may write |
|---|---|---|---|---|---|---|---|---|
| **IDEA-001** — live anchor checker (angle: checking · arena 1) | `ARMED` — spec ambiguity, must be re-specced · card `research/idea-001-anchor-checker.md:5` | **present** — frozen 2026-09-10 ~09:45 +03; 2 files; 4 pre-registered claims H1..H4. **Caveat measured 2026-10-20:** the named device `anchors.py` never existed, so H1/H2 are unmeasurable *as specified* (H3/H4 are device-independent) — the card's §8 | **absent** — no external receipt; interim gate declared in the card's §7 (≥3 real internal rounds); the final judge stays external money/user (D-14) | card §5 (`research/idea-001-anchor-checker.md:35-38`): death = H1+H2 fail in two consecutive rounds after one fix, **or** manual re-derivation beats the device on 3 rounds · **heir = the citation tool that already exists** (`tools/citecheck.sh`) | `anatomy-reference.md` sha256 `fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc` + `anatomy-verification.md` sha256 `207b75b506f4c8d4261d4303fe854c832299fd978cdbaa4a6b9e851a7e7482e8` — **frozen 2026-09-10 09:27:58 / 09:29:54, re-verified byte-exact 2026-10-20** | `research/idea-001-anchor-checker.md` (the card) + `research/idea-001-reconciliation.md` (the 2026-10-20 measurement) | 2026-09-10 stranger verdict: **PASS WITH NOTATIONS** (41 commands) · 2026-10-20: the four pre-registered claims are **not yet measured** — the named device never existed (H4 measured · H3 partially measured · H1/H2 UNTESTED) | the card's owner (this lane) only; a change to a threshold is forbidden after a result is seen |
| **IDEA-002** — the transfer machine: anatomy card → agent preset compiler (angle: authoring · arena 5) | `ARMED` — paper, NOT EXECUTED · card `research/idea-002-card-preset-compiler.md:30` | **present** — frozen **2026-10-21 01:16:41 +0300**; 6 files; 5 pre-registered claims H1..H5; commands V1..V6; refuter named by **ROLE**, not by name (the card's §4.4). The device `acc.py` does not exist — the card is paper about a machine that has not been built | **absent** — no external receipt; card-scoped interim gate declared in the card's §7 (≥3 real internal compilations recorded in `RUN/`); the final judge stays external money/user (D-14) | card §5: death = H1+H2 fail in two consecutive rounds after one fix, **or** manual card→preset authoring beats the compiler on 3 rounds · **heir = the FIXED FORM + the 8-field mapping table** (card field → preset field) — the mapping outlives the compiler | the FORM spec `research/anatomy-card-form.md` sha256 `3db3b4d41d1327f58ec6ba7bca6579bae7810c62ef19bdd616756171334f510f` (mtime 2026-09-10 21:03:42) + 5 more files (the card's §4.1) + a known-positive/known-negative fixture pair (hashed in §0.4) | `research/idea-002-card-preset-compiler.md` (the card carries its own receipts: §1 pain · §2 prior art · §4 the freeze) | none yet (never executed — P6). **No verdict can exist**: a verdict is not the claimant's to issue (R6, `RULES.md:24-25`) | the builder of that card; a second card never edits another card's file |
| IDEA-003 (draft) — content-anchor deriver | `DRAFT — not born` (no frozen evaluator) | missing | — | missing | — | — | — | anyone may propose; it is not a card until its four birth gates are met |
| IDEA-004 (draft) — Member-0 consolidation device (D-10) | `DRAFT — not born` (blocked behind GO + Member-0) | missing | — | missing | — | — | — | ditto |

**Draft rows are not cards.** They live on the board (`research/anatomy-library.md` §2) and are
**not** counted here: a row enters this ledger when it passes the four-gate test in §0.2, and
the promotion edits *both* files — never this one alone.

## 2) The birth gate (reused, not forked — `research/anatomy-card-form.md` is the law)

A card is **born** only with all four: (1) pain receipt on disk · (2) prior-art check stated ·
(3) frozen evaluator (ground truth + sha256 + commands + thresholds + a separate refuter) ·
(4) kill-line (death condition + heir + obituary). A row missing any of the four is a draft row,
not a card. This table restates the FORM's list so the ledger can be read alone; the FORM remains
the authority, and the two must never drift (a drift here is a NOTATION in verification).

**The FORM's own text, byte-exact (the binding words; the English above is a reading aid, and
the Arabic governs)** — `research/anatomy-card-form.md:6-11`:
```
## 0) قانون الولادة (بوابة ALPHA-7 المصغرة — لا بطاقة بلا الأربعة)
كل بطاقة جديدة تُرفض عند الولادة إلا إذا حملت:
1. **إيصال وجع** — وثيقة موجودة على القرص توثق الوجع الذي تحلها (file:line-span + mtime-لحظة).
2. **فحص سابقين** — نص صريح: ما فُحص، ما وُجد، وما لم يُفحص (`UNTESTED` مسموح كتصريح، ممنوع كغياب).
3. **مقيّم مجمد** — §3 مكتمل بالأوامر والعتبات *قبل* أي تنفيذ (D-14: التجميد قبل الجولة).
4. **خط قتل** — §4 مكتمل (شرط موت + وريث). بلا موت مسجل مسبقًا = ممنوعة الولادة.
```
**The rest of the FORM, pointed at, not copied** (so a second copy can never drift):
| What | Where it lives (binding) |
|---|---|
| the six header fields (ID · title · arena · state · source · pullable) | `research/anatomy-card-form.md:13-21` |
| the anatomy section (source · byte-exact principle · mechanism with powers ≤3 · prohibition) | `research/anatomy-card-form.md:23-27` |
| the frozen evaluator's five parts (ground truth + sha256 · commands · thresholds · refuter · execution state) | `research/anatomy-card-form.md:29-39` |
| the kill-line (death condition · heir · announcement, no deletion) | `research/anatomy-card-form.md:41-42` |
| the five-state machine (COLD · ARMED · RUNNING · PROVEN · DEAD) and the Owner's-only `ARMED→RUNNING` gate | `research/anatomy-card-form.md:42-51` |
| the diversity floor (≥2 cards from different angles or arenas per round) | `research/anatomy-card-form.md:53-54` |
| the two-gauge reconciliation (no frozen evaluator → COLD; gauge A is impossible before GO, so it never blocks ARMED, and blocks only PROVEN) | `research/anatomy-card-form.md:56-57` |
| the walls (not a charter · not an execution permit · not a success claim) | `research/anatomy-card-form.md:59-62` |

## 3) Round ledger

| Round | Cards born | Angles | Arenas | F7 diversity floor (`anatomy-card-form.md`: ≥2 cards from ≥2 different angles or arenas) | How the round was decided |
|---|---|---|---|---|---|
| 1 (2026-09-10 → 2026-10-20) | IDEA-001, IDEA-002 | checking · authoring | 1 · 5 | **SATISFIED** — different angle AND different arena (so the floor is met twice over) | IDEA-001 was born 2026-09-10 (its own §4). IDEA-002's angle was **not** chosen by taste: the pain census ranked the pains, then applied a rule stated *before* the choice (`research/pain-census-2026-10-20.md:50-55`) — mechanically decidable · has a money path · **the angle must differ from card #1's** · tie-break by count. The census named its own trap (`:44-48`): the **highest-count** pain (65 files) is a *checking* pain, and taking it would have produced two checking cards — the floor's own violation. **A census is evidence, not an order** (`:48`). |

**The census's counts were re-derived** (the tree moved after they were taken — the census
warns of this at `:80-84`): re-run 2026-10-21 01:1x +03, the six classes read
`unlogged|violation 87 · stale|rot 52 · duplicat|collision 44 · false-claim 41 · drift 38 ·
expiry 34`, against the census's `65 / 39 / 42 / 31 / 30 / 33`. **The head did not move** — the
top-count pain is still the top-count pain, and it is still the *checking* pain the rule
rejects — so **the round's decision is unchanged by the re-derivation.** The tail reordered;
that is reported, not smoothed over. The commands are in the census itself (`:34-39`).

**Round 2 is not open yet.** The board's draft rows (IDEA-003, IDEA-004) are **not born**; a
new round needs ≥2 born cards from different angles or arenas
(`research/anatomy-card-form.md:53-54`), and its selection rule must be stated **before** its
choice — the same discipline the census used for round 1.

## 4) What the library OWNS, and what it may never claim

- It **owns**: the form, the states, the receipts pointers, the kill-lines — a library of cards
  with frozen evaluators and declared death conditions.
- It may **never** claim: that any card ran, that any card is PROVEN, or that any arena produced
  money. `RUNNING` requires the Owner's written GO (P6); `PROVEN` requires **both** gauges (D-14)
  — a card without a gauge is `COLD`, and a card with only gauge A is not PROVEN either (the
  form's §6-ب reconciliation). **The count is generated, not kept** (R14): §0.3's command
  returns **0** cards whose state line claims RUNNING / PROVEN / DEAD — re-run it and read the
  number; do not trust this sentence over it.
- **The money paths are hypotheses, not paths.** The arena table states its own numbers are
  unverified estimates — *"كل الأرقام تحت 'تقدير'"*
  (`research/anatomy-bridge-arena-candidates.md:5`) and *"أول تنفيذ على أي ملعب يبدأ بصفحة دقّق
  (تسعير/شروط) من مصادر أولية"* (`:23`). The census says the same of arena 5: *"arena 5 has no
  receipt yet, and until a card produces one it stays a hypothesis, not a proven path"*
  (`research/pain-census-2026-10-20.md:81`).
- **The census ranks pains by file-mentions, not instances** — a labelled proxy
  (`research/pain-census-2026-10-20.md:15-19`, `:79`).
- **The library is paper.** No card is RUNNING; the device named by IDEA-002 does not exist
  (`find . -name 'acc.py' | wc -l` → 0); IDEA-001's own named device never existed (0 hits
  tree-wide).
- **This ledger is not law.** It is a **witness of a moment** (R14). Where a row and a record
  disagree, **the record wins**.
- The first-run order (**IDEA-001 first, IDEA-002 second** — revised 2026-10-21 after an
  adversarial review, and now following D-13's arena-1-first) is an **agent decision, revocable
  by the Owner in one line** — it is not a ruling, and it is recorded with its reasons in
  `research/anatomy-library.md` §3.

**Forcing cause:** the Owner's directive to re-open this session's chain and close it (2026-10-20).
**Walls:** paper only — no execution, no runtime, no fuel, no doctrine write, no Owner-by-right
field; version untouched (v0.0001).

## 5) Ammanat (honesty, `AGENTS.md`)
- Every status in this file is re-derivable by opening the file it names and running the
  command printed beside it (§0.1-§0.4). **No row is a claim about a file nobody opened.**
- The two states reported are the cards' own words: IDEA-001 `ARMED` (Arabic state line,
  `research/idea-001-anchor-checker.md:5`) and IDEA-002 `ARMED`
  (`research/idea-002-card-preset-compiler.md:30`). Neither is this file's opinion.
- The two fixture hashes in §0.4 are a **witness of a moment**; a mismatch is a signal to
  re-read the card, not a defect of the card.

## 6) What this revision changed (2026-10-21 02:1x +03 — dated, declared, not silent)
The ledger was first written by the lead at 2026-10-21 01:11; this revision **keeps its
structure and its rulings** and adds what a reader cannot do without:
- **§0 (new)** — the re-derivation commands, so every cell below is a pointer that regenerates
  itself, and no count is hand-kept (R14).
- **Two columns added to §1:** `gauge B — frozen evaluator` and `gauge A — external receipt`
  (the two gauges of D-14, `research/foundation-deep.md:58-63`), plus `Kill-line + heir`.
- **§2** now carries the FORM's **byte-exact** four gates (`anatomy-card-form.md:6-11`) and a
  pointer table for the FORM's other sections, so the checklist is reused rather than forked.
- **§3** now says **how** the round was decided (the census's rule and its named trap) and
  records the counts' re-derivation.
- **§4** replaces the hand-kept "0 PROVEN · 0 DEAD" with the command that produces the number,
  and adds the ceilings the census stated (unverified arena prices · file-mention proxy).
- **§5 (new)** — the ammanat, in the house style.
