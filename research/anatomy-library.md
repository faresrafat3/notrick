# ANATOMY LIBRARY — the board (the shelf, the states, the first-run order)
> 2026-10-20 · **the anatomy workstream of the 2026-10-20 re-opened session** (board task 2 —
> "decision-maker for the board"), under the Owner's standing delegation
> (CONTEXT.md:474-475, the Owner's own line "خد كل القرارات بنفسك انا قولتلك اللي عندي وريني
> اللي عندك"; foundation-deep's inheritance at CONTEXT.md:538-541) — every decision here is
> revocable in one line (R8). Research lane, paper-only — not doctrine; it rises through the Import
> Mirror only as device + place, or stays research (`anatomy-reference.md:13`, D-08).
> This file exists so the library has **one entrance** and a **decided first run** — the
> gap it closes: the library had one card, no index, and no stated run order, so "the
> Owner writes the GO" had nothing to point at.

## 1) The library law (what a card is, and what may be born)
- A card = **human anatomy → machine mechanism → frozen evaluator → state**
  (`anatomy-card-form.md:23-51`). The form is the law; this board is the shelf.
- **Four birth gates** (`anatomy-card-form.md:6-11`): pain receipt · prior-art scan ·
  frozen evaluator (with commands + thresholds + disinterested refuter) · kill-line.
  A card missing any of the four is **not born** — it is a draft row here.
- **Measure before library** (D-14, `foundation-deep.md:58-63`): a card without a frozen
  evaluator is `COLD`; a card without an external receipt is not `PROVEN`.
- **State machine** (`anatomy-card-form.md:42-51`): `COLD → ARMED → RUNNING → PROVEN`,
  with `DEAD` as the other end. `ARMED→RUNNING` is the Owner's gate (P6) alone.
- **Diversity floor** (`anatomy-card-form.md:53-54`): every generation round yields **≥2
  cards from different angles or different arenas**. The library had **1** card — it was
  below its own floor. This round brings it to 2 (different arena AND different angle).

## 2) THE BOARD
| ID | What it does | Arena (D-13) | Angle | State | gauge B (frozen evaluator) | gauge A (arena receipt) | Kill-line | First-run role |
|---|---|---|---|---|---|---|---|---|
| **IDEA-001** | anchor checker — re-derive a citation's content, not just its existence | 1 (+5) | **checking** | `ARMED` — **spec ambiguity**: H1/H2 are **not expressible** by the tool that exists (`research/idea-001-reconciliation.md:21`, `:797`); H4 **MEASURED** (5.26/6.01/5.59 s, M2) · H3 partially | frozen scope **still valid** (2 sha256 match after 40 days) · the device exists (`tools/citecheck.sh` M2, sha `80defbd4…`) with **≥12 dated rounds** · the card's own named device (`anchors.py`) never existed | interim gate **MET** (≥3 internal rounds; ≥12 exist) — the **unmet** clause is the RUN/ record: `grep -rl citecheck RUN/` → **0** | yes (§5 of the card) | **FIRST** (amended) — see §3 |
| **IDEA-002** | the transfer machine — anatomy card → agent preset compiler | **5** (agent templates/plugins) | **authoring** | `ARMED` (paper, NOT EXECUTED) · **spec repaired 2026-10-21** (7 defects fixed; §10 of the card is the executable spec) | complete: ground truth (7 sha256) · commands V1..V8 with expected outputs · 5 thresholds · exit codes 0/1/2/3 · 3 single-cause fixtures · disinterested refuter by ROLE | not met (interim gate: ≥3 real internal compilations) | yes (§5 of the card) | **second** — see §3 |
| IDEA-003 (draft) | content-anchor deriver — the class `citecheck.sh` cannot see (§5) | 1 | checking | **DRAFT — not born** (no frozen evaluator yet) | missing | — | missing | candidate |
| IDEA-004 (draft) | member-0 consolidation device (D-10, the first-born member) | — | consolidation | **DRAFT — not born** | missing | — | missing | blocked behind GO + Member-0 |

**Library status: 2 born (both ARMED, both paper) · 2 drafts · 0 PROVEN · 0 DEAD.**

## 3) The first-run decision (what runs when the Owner writes the GO)
**Decision (agent, revocable) — REVISED 2026-10-21 after an adversarial review: IDEA-001
(amended) runs first; IDEA-002 second, same round.** The first version of this section had
it the other way round; it was **overruled by a context-isolated reviewer (R6)** whose verdict
was **CHANGE**, and the mechanical grounds for that verdict were then checked against the
disk and **held**. The reasons that survive the check:
1. **IDEA-001's device already exists and has receipts.** `tools/citecheck.sh` was built
   2026-09-11 (adopted as doctrine in pr-024-C) and rebuilt 2026-10-21 00:16 (M2); it has
   **≥12 dated full-tree rounds** with printed verdicts (the receipts are in `LOG.md` and
   `research/idea-001-reconciliation.md`), its **H4 is already MEASURED** (5.26 / 6.01 / 5.59 s
   per round, M2) and its H3 is partially measured. IDEA-002's device **does not exist at
   all** (`find . -name 'acc.py'` → 0) and its specification needed seven repairs before it
   could be executed at all (`research/idea-002-card-preset-compiler.md` §10).
2. **D-13's standing order is arena 1 first**
   (`research/anatomy-bridge-arena-candidates.md:17`) and IDEA-001 is the arena-1 card; the
   earlier version of this section put the arena-5 card first, which inverted the project's
   own ranking for a reason that was partly an appeal to money. The revised order **follows
   D-13** — the conflict named in the paragraph below is therefore resolved in D-13's favour.
3. **What is still true for IDEA-001:** its *specified* device (`anchors.py`) never existed,
   and its H1/H2 are **not expressible** by the tool that was built (the reconciliation
   records: "it **cannot express H1 or H2 at all**" — `research/idea-001-reconciliation.md:21`,
   `:797`). So IDEA-001's first run is **not** a re-run of a finished thing: it needs a
   claims-input mode added to the existing tool, and then H1/H2 measured for the first time.
   Both cards therefore need a build; IDEA-001's is an extension of a tool that already has
   receipts, IDEA-002's is greenfield.
4. **The order is not a preference about merit** — both cards stay ARMED and neither may
   claim success; the Owner can reorder with one line, and the second card inherits the
   first's pattern (build → self-test → frozen run → refuted or not).

**The Owner gates, unchanged:** P3 (threshold) · P5 (fuel) · P6 (the written GO) —
`RATIFICATION-BATCH-001.md:17-29`. **No card may run before P6** (D-09). Nothing here
fills an Owner field.

**A conflict with an earlier decision — named, then resolved in D-13's favour (2026-10-21).**
D-13 (`anatomy-bridge-arena-candidates.md:16-17`) says *"start with arena 1 (open-source
tools) — cheapest gate"*; the first version of this board put **arena 5** first. Both were
agent decisions under the same delegation. **After the adversarial review the board now
follows D-13** (arena 1 first), and the disagreement is recorded rather than erased: the
board's earlier reasons (a cheaper *gate* vs a cheaper *verdict*) were weaker than the
reviewer's cost argument, and the reviewer's own overreach is also recorded — it claimed
IDEA-001's H1/H2 are "expressible today as a pure re-run script", while the reconciliation
says the tool cannot express them at all (`research/idea-001-reconciliation.md:21`, `:797`).
**Filed for ruling as a proposal, not decided here:**
`proposals/pr-026-library-and-first-run.md`.

## 4) IDEA-001's state reconciliation (dated; the card itself carries the long form)
Measured 2026-10-20 with live receipts:
- **The frozen scope survived 40 days intact**: `anatomy-reference.md` sha256
  `fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc` and
  `anatomy-verification.md` sha256
  `207b75b506f4c8d4261d4303fe854c832299fd978cdbaa4a6b9e851a7e7482e8` — **both match the
  freeze exactly**, and both mtimes are still the freeze moment (09:27:58 / 09:29:54).
  Gauge B's ground truth is **valid**; the card did not rot where it claimed to.
- **The named device never existed**: `anchors.py` and `anchors.tsv` → 0 hits tree-wide.
  What exists is `tools/citecheck.sh`, adopted as the citation gate in pr-024-C. Different
  instrument, different failure class (§5). The card's own dated section and the full
  receipt live in `research/idea-001-anchor-checker.md` §8 and
  `research/idea-001-reconciliation.md`; the receipts index is
  `research/card-ledger.md` (one home per fact — the board holds the STATES, the ledger
  holds the RECEIPTS).
- **Therefore the card's claims are partly unmeasurable against what was built**: H1/H2
  (byte-content derivation) are not testable with a resolution checker; H3 (determinism)
  and H4 (cost) are device-independent and remain testable.
- **The card therefore stays `ARMED` and is marked "spec ambiguity"** — it needs an
  amendment (re-spec the device, or split into a resolution card + a content card), not a
  run. The amendment is proposed in the card's own dated section, not applied silently.

## 5) The instrument inventory (what can catch what — the measured finding)
| Failure class | Real example | Caught by | Blind spot? |
|---|---|---|---|
| dead file | `RUN/tools/cite.sh:27-28` (missing, per IDEA-001 §2) | `citecheck.sh` ✓ | — |
| line out of range | `AGENTS.md:74-77` (file has 75 lines) | `citecheck.sh` ✓ | — |
| ambiguous basename | `proposals/BRK-004.md:27` | `citecheck.sh` ✓ (flags ambiguity) | — |
| quoted / fenced refs (witness text) | the quotation rule | `citecheck.sh` ✓ | — |
| **declared witness drifted** (a registered `(file,line,ref)` triple no longer matches the line) | `tools/witness.list` entries | `citecheck.sh` ✓ (the STALE-DECL class) | partial — only for entries a human registered; `grep -c "verdict-master" tools/witness.list` = **0** today |
| **content rot: the line resolves but says the wrong thing** | `verdict-master.md:29` = row **A-07** while the claim wants **A-06** (at `:28`) | **nothing on disk** | **BLIND — proved on two builds** |

**The proof (2026-10-20/21, live):** the engine was extracted **verbatim** from
`tools/citecheck.sh` and run on a probe citing `verdict-master.md:29`. Verdict: **0
drifts** — the file exists, line 29 is inside the file's 149 lines, so the tool passes it.
The claim it would support is false: `:29` is row A-07, the claim needs A-06 at `:28`.
**This is the exact failure class IDEA-001 was born to catch** (and the class of the
2026-09-10 repair itself) — and the built tool is structurally blind to it. Hence the
IDEA-003 draft row: the content-deriver is a real gap, not a duplicate of what exists.

**The instrument moved under the measurement — both receipts are named (honesty rule):**
- **M1** — `tools/citecheck.sh` sha256 `d0c8b5c80ff91a52196f665793d73faf03a082b56d002f97332d5ef17ed31f2b`,
  mtime 2026-09-11 06:27:39, 134 lines; engine at `:46-88`. The first probe (2026-10-20
  ~21:3x) was taken against M1.
- **M2** — sha256 `80defbd4483bf48cd93c61322d7f3727f3042bd5e97df8e29405eff90e1a14b3`,
  mtime **2026-10-21 00:16:31**, 175 lines; engine at `:60-101`; adds a three-class
  contract (LIVE / WITNESS / STALE-DECL) and the register `tools/witness.list`. The probe
  was **re-run against M2** (engine extracted from `:38-101`): **0 drifts again** — the
  blind spot survives the rewrite. M2's own self-test: `SELF-TEST PASS` (5 checks, incl.
  "declared witness found · undeclared not found").
- **The disease, one level up:** the instrument changed while the measurement was open.
  Neither build is hidden; both receipts are quoted, and the claim above is the one that
  holds on **both**.

**Ceiling, stated plainly:** a resolution checker cannot be a content checker. Making the
content class measurable is the open device work; until then, "the sweep is clean" means
**"every reference resolves"** and never "every reference is true".

## 6) What the library needs next (the honest gaps, unranked by taste)
- IDEA-002's device does not exist (by design — no code before P6). Its evaluator is
  frozen, so the moment GO lands the run is decidable.
- IDEA-001 needs a **spec decision** (re-spec or split) before it can be a run at all.
- IDEA-003 (content deriver) needs a frozen evaluator to be born.
- No card has a gauge-A receipt; no card is PROVEN; the library has produced **zero**
  measurable breakthroughs so far, and this board does not pretend otherwise.
- The arena table (`anatomy-bridge-arena-candidates.md`) is still **price-and-terms
  unverified** ("تقدير غير مدقق") — it must be re-checked against primary sources before
  any time is spent on any arena.

## 7) Ammanat
- Every number in this board carries a live receipt from 2026-10-20 (sha256 comparisons,
  `find`/`grep`/`sed` outputs, the extracted-engine probe). The two draft rows are
  labelled drafts; the state machine is quoted from the card form, not invented.
- No Owner field touched · no doctrine file written · no fuel burned · no code stood up.
  The wall held: paper only.
