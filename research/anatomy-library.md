# ANATOMY LIBRARY — the board (the shelf, the states, the first-run order)
> 2026-10-20 · agent under the Owner's standing delegation (CONTEXT.md:538-569), revocable
> in one line (R8). Research lane, paper-only — not doctrine; it rises through the Import
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
| **IDEA-001** | anchor checker — re-derive a citation's content, not just its existence | 1 (+5) | **checking** | `ARMED` — **spec ambiguity, must be re-specced** (see §4) | frozen scope **still valid** (2 sha256 match after 40 days) but its named device (`anchors.py`) **never existed**; the built device (`tools/citecheck.sh`) measures a different class | not met (interim gate: ≥3 internal rounds) | yes (§5 of the card) | **second** — it needs a spec decision first |
| **IDEA-002** | the transfer machine — anatomy card → agent preset compiler | **5** (agent templates/plugins) | **authoring** | `ARMED` (paper, NOT EXECUTED) | complete: ground truth (form spec sha256) · commands · 5 thresholds · disinterested refuter by ROLE | not met (interim gate: ≥3 real internal compilations) | yes (§5 of the card) | **FIRST** — see §3 |
| IDEA-003 (draft) | content-anchor deriver — the class `citecheck.sh` cannot see (§5) | 1 | checking | **DRAFT — not born** (no frozen evaluator yet) | missing | — | missing | candidate |
| IDEA-004 (draft) | member-0 consolidation device (D-10, the first-born member) | — | consolidation | **DRAFT — not born** | missing | — | missing | blocked behind GO + Member-0 |

**Library status: 2 born (both ARMED, both paper) · 2 drafts · 0 PROVEN · 0 DEAD.**

## 3) The first-run decision (what runs when the Owner writes the GO)
**Decision (agent, revocable): IDEA-002 runs first; IDEA-001 second, same round.**
Mechanical reasons, each with its evidence:
1. **IDEA-002's spec is unambiguous; IDEA-001's is not.** IDEA-001 froze a device spec
   (`anchors.py` + `anchors.tsv` + an exit-code contract) that was never built, while a
   *different* device (`tools/citecheck.sh`) was built and adopted as doctrine
   (pr-024-C, 2026-09-11) **without the card's claims ever being measured against it**
   (§4). Running a card whose spec names a non-existent instrument would spend the first
   run on an ambiguity instead of a verdict.
2. **IDEA-002's evaluator is self-verifying.** It carries a known-positive/known-negative
   pair (`idea-002-card-preset-compiler.md:29-33, §6`), so the first run's own verdict is
   decidable **without** waiting for any external party — the fastest honest path to a
   first real result.
3. **IDEA-002's artifact lands in an arena the Owner can sell** (arena 5 = agent
   templates/plugins, D-13:13) and its deliverable is exactly the Owner's stated vision:
   the machine that carries human anatomy into agents. IDEA-001's deliverable is an
   internal tool whose arena receipt is the weakest of the six.
4. **The order is not a preference about merit** — both cards stay ARMED and neither may
   claim success; the Owner can reorder with one line, and the second card inherits the
   first's pattern (build → self-test → frozen run → refuted or not).

**The Owner gates, unchanged:** P3 (threshold) · P5 (fuel) · P6 (the written GO) —
`RATIFICATION-BATCH-001.md:17-29`. **No card may run before P6** (D-09). Nothing here
fills an Owner field.

**A conflict with an earlier decision, named (not buried):** D-13
(`anatomy-bridge-arena-candidates.md:16-17`) says *"start with arena 1 (open-source
tools) — cheapest gate"*; this board puts **arena 5** first. Both are agent decisions
under the same delegation, so the conflict is real and it is not the Owner's ruling.
**This board's position, and why:** D-13 chose the cheapest *gate*; this board chooses
the cheapest *verdict*. Arena 1's first candidate (IDEA-001) has an ambiguous spec and
an unmeasurable claim set (§4), so it cannot produce a first verdict without a spec
decision; arena 5's candidate (IDEA-002) carries a frozen, self-verifying evaluator
(known-positive + known-negative) and can. If the Owner prefers D-13's order, that is
one line and no file needs rewriting — the two cards' states do not change either way.
**Filed for ruling as a proposal, not decided here:** `proposals/pr-026-library-and-first-run.md`
(the arena choice and the first-run order are the two things in it the Owner may pick).

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
