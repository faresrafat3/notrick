# IDEA-002 — The Transfer Machine: anatomy card → agent preset compiler
> Born 2026-10-21 (session 2026-10-20) via `research/anatomy-card-form.md` v1 — agent under
> the Owner's standing delegation ("خد كل القرارات بنفسك انا قولتلك اللي عندي وريني اللي
> عندك" — `CONTEXT.md:474-475`, mtime 2026-10-21 01:16 +03; every decision revocable in one
> line, R8). **PAPER ONLY — NOT EXECUTED.**
> Arena: **5 — agent templates/plugins** (`research/anatomy-bridge-arena-candidates.md:13`,
> mtime 2026-09-10 09:05:03 +03).
> Angle: **authoring** — delivering a captured human practice into a runnable agent.
> Deliberately opposite to IDEA-001's angle (**checking**), and in a different arena.
> **PAPER ONLY — NOT EXECUTED.** No code stands before the Owner's written GO (P6, D-09).
> **Library:** this card is row 2 of the anatomy library. The **shape** it obeys is
> `research/anatomy-card-form.md`; the **board** (states, first-run order) is
> `research/anatomy-library.md`; the **index of cards** is `research/card-ledger.md`; the
> **angle** was chosen by `research/pain-census-2026-10-20.md`. Card #1 is
> `research/idea-001-anchor-checker.md` (checking · arena 1).
> Language: English per R15 (`RULES.md:74-82`). The FORM (`anatomy-card-form.md`) is a
> pre-2026-09-11 lane file and stays as written; it is quoted, not rewritten.

## 0) Header fields (the FORM's required set — `anatomy-card-form.md:13-21`)

| Field | Value | Rule it obeys |
|---|---|---|
| `ID` | **IDEA-002** | sequential `IDEA-NNN`, no reuse of a number (`anatomy-card-form.md:16`; no-reuse inherited from pr-011 F-7) |
| Title | The Transfer Machine — compile one anatomy card into one runnable agent preset | one line: what the device does (`anatomy-card-form.md:17`) |
| Arena | **5 — agent templates/plugins**; gate = open marketplaces/registries | a number from `research/anatomy-bridge-arena-candidates.md` + its declared entry cost (`:13`; D-13) |
| State | **ARMED** | from the state machine (`anatomy-card-form.md:42-51`) |
| Source | this file + the birth record (board task 4, "builder", session 2026-10-20) | `anatomy-card-form.md:19` |
| Pullable | **yes, always (R8)** — a fixed reminder, not a field with content | `anatomy-card-form.md:20` |

## State: **ARMED** (§§1-4 complete — waits for the Owner's written GO (P6); no execution before it — D-09)
> **§10 (2026-10-21) is the authoritative spec after the adversarial review — a stranger EXECUTES §10**
> (it repairs seven named defects in the text below; the text is kept as the record).

## 1) Pain receipts — three independent on-disk witnesses
Format per the FORM: **text + `file:line-span` + mtime-moment**, each with a **live command
receipt** (command + verbatim output, re-runnable by a stranger).

### Witness A — the object exists; the machine does not
> **Text:** *"importing a human idea = device **and** place, otherwise it is marked
> `PSY-HUMAN` (cold: waiting for its device) or `PSY-DESIGN` (a sound design waiting for a
> formula) … the strict order: idea ← device ← place"* — `research/anatomy-reference.md:13`
> (D-08, the Mirror law). **mtime moment:** 2026-09-10 09:27:58 +03.
> **Live receipt (the claim, in its exact form — an implementation does not exist):**
> ```
> $ cd /home/fares/Projects/notrick
> $ find . -name 'acc.py' -not -path './.git/*' | wc -l
> 0
> $ find . \( -name '*.py' -o -name '*.sh' \) -not -path './.git/*' -exec grep -lie 'card.*preset\|preset.*compiler' {} + | wc -l
> 0
> ```
> **Live receipt (the phrase itself — prose mentions only, no definition anywhere):**
> ```
> $ grep -rilE 'card.?to.?preset|preset compiler|card2preset' --include='*.md' --include='*.sh' --include='*.py' . \
>     | grep -vE '^\./research/(idea-002-card-preset-compiler|card-ledger|anatomy-library|pain-census-2026-10-20)\.md$'
> ./research/README.md
> $ grep -n 'preset' research/README.md
> 30:| `anatomy-library.md` · `idea-002-card-preset-compiler.md` | the library board + the transfer machine (anatomy card → agent preset compiler) | paper-only — parallel anatomy workstream, 2026-10-20 |
> ```
> (That one hit is **this card's own index row** — the compound phrase appears in the research
> index. The only *other* occurrences of the phrase in the tree are in this card, the library
> board, and the census: **prose mentions, never a definition.** No file specifies the
> card→preset mapping; no implementation exists.)

### Witness B — the landing place exists, and it is unfed by the library
> **Text:** arena 5's own row: *"| 5 | **كتّاب وكلاء (agent templates/plugins)** | أعضاء
> presets/plugins جاهزة للنشر في أنظمة harness مفتوحة | متاجر/ريجستري مفتوحة | صغير-متوسط |
> يُبنى على نفس عضوات الجسد — **الملعب الأقرب لنقل التشريح مباشرة** |"* —
> `research/anatomy-bridge-arena-candidates.md:13`. **mtime moment:** 2026-09-10 09:05:03 +03.
> The row names the arena "closest to transferring the anatomy directly" — and the place is
> real, populated, and hand-fed. **Live receipt (the measured fixed form, 18 presets):**
> ```
> $ ls -d ~/.dsh/.agent-presets/*/ | wc -l
> 18
> $ for el in preset.yml agent.md agent.cordis.yml skills; do
>     c=0; for d in ~/.dsh/.agent-presets/*/; do [ -e "$d/$el" ] && c=$((c+1)); done
>     printf '  %-18s present in %2d of 18 presets\n' "$el" "$c"
>   done
>   preset.yml         present in 18 of 18 presets
>   agent.md           present in  2 of 18 presets
>   agent.cordis.yml   present in 18 of 18 presets
>   skills             present in  6 of 18 presets
> $ for k in name description review-date dsh-version-tested order; do
>     c=0; for d in ~/.dsh/.agent-presets/*/; do grep -qE "^$k:" "$d/preset.yml" && c=$((c+1)); done
>     printf '  %-20s in %2d of 18 presets\n' "$k" "$c"
>   done
>   name                 in 18 of 18 presets
>   description          in 18 of 18 presets
>   review-date          in  3 of 18 presets
>   dsh-version-tested   in  1 of 18 presets
>   order                in  1 of 18 presets
> ```
> **The one thing every one of the 18 carries** is `preset.yml` (`name` + `description`) and
> `agent.cordis.yml`. `agent.md` (2/18) and `skills/` (6/18) are the optional parts.
> **The content of that place is hand-written, not compiled from a card** — the two
> `agent.md` specimens begin with a human-written identity, e.g.
> `~/.dsh/.agent-presets/continuum/agent.md:3` = `## Identity` (mtime 2026-09-26 09:34:11 +03):
> ```
> $ grep -n '^#\+ ' ~/.dsh/.agent-presets/continuum/agent.md
> 1:# Continuum Agent Contract
> 3:## Identity
> 7:## Authority
> 11:## Non-negotiable safety
> 19:## Route before work
> 25:## Research
> 29:## Delivery
> 33:## Context technique
> ```
> The place is ready, the form is measured, the content is bespoke — and the library cannot
> pour a card into it.

### Witness C — the project's own law names the gap, in numbers
> **Text:** `research/anatomy-reference.md:26` — *"القاعدة (D-08): صف بلا جهاز اليوم =
> `[PSY-HUMAN]` أو `[PSY-DESIGN]` — يُكتب التصميم، ولا يُدَّعى النقل"* ("the rule (D-08): a row
> without a device today is `[PSY-HUMAN]` or `[PSY-DESIGN]` — the design is written, and
> transfer is not claimed"). **mtime moment:** 2026-09-10 09:27:58 +03.
> **Live receipt — the status column of every row of the §2 translation table, read out:**
> ```
> $ awk 'NR>=31 && NR<=46 {n=split($0,a,"|"); s=a[n-1]; gsub(/^ +| +$/,"",s);
>     if (s ~ /PSY-DESIGN/) d++; if (s ~ /PSY-HUMAN/) h++; if (s ~ /\[V\]/) v++}
>     END{print "  PSY-DESIGN="d"  PSY-HUMAN="h"  [V]="v}' research/anatomy-reference.md
>   PSY-DESIGN=2  PSY-HUMAN=2  [V]=6
> ```
> Four rows of the master translation table are cold — `:42` (intuition), `:43` (emotion as a
> signal) = `[PSY-DESIGN]`; `:44` (learning curve), `:45` (team management) = `[PSY-HUMAN]`.
> The card form repeats the prohibition at `research/anatomy-card-form.md:27` (mtime
> 2026-09-10 21:03:42 +03): *"**التحريم**: لو المبدأ بلا جهاز يوم الكتابة → البطاقة تولد
> `COLD` وتُعد نفسها تصميمًا لا نقلًا (D-08)"* — "the prohibition: if the principle has no
> device on the day of writing → the card is born `COLD` and counts itself a design, not a
> transfer."

**The pain, in one line:** a human practice can be *captured* in this project, but cannot be
*delivered* to an agent that will actually use it — so every transfer is re-derived by hand,
and **the library cannot deliver its own cards**.

**Witnesses A, B, C are independent**: A is about the **absence of a device** in this tree; B
is about the **presence of an unfed target** outside it (`~/.dsh/`, reachable by law as
readable but not writable from here — R12 keeps runtime state out of the project); C is about
**the doctrine's own table** counting the gap. No two of them rest on the same file.

## 2) Prior-art check (explicit — what was inspected, and what was NOT)
- **Inspected on disk (and read, not assumed):**
  - `tools/audit.sh` — the closest sibling: a *generated* health card (R14). Different object
    (a tree's health) and different law (generation, not compilation). Inspected: it reads
    `VERSION.md`, `INTEGRITY.md`, `OPS_QUEUE.md`, `RUN/receipts/`, `proposals/` and prints a
    card; it never emits a preset and never parses a card.
  - `tools/citecheck.sh` — IDEA-001's device (134 lines, read-only, grep-only). It resolves
    `file.md:NN` references; it does not consume a card and emits no artifact.
  - `research/anatomy-card-form.md` — **the object spec** (the compiler's contract).
  - `research/pain-census-2026-10-20.md` — the measurement that chose this angle (§7).
  - The target form itself: `~/.dsh/.agent-presets/*/preset.yml`, `agent.md`,
    `agent.cordis.yml` (18 presets, 2 `agent.md` specimens) — the landing place's real shape.
  - The specimen: `~/.dsh/skills/ponytail/SKILL.md:1-18` (frontmatter `name` · `description` ·
    `whenToUse` · `metadata`) — the fixed form's first real inhabitant
    (`research/foundation-deep.md:101`).
- **Market sweep: NOT RUN — declared `UNTESTED`.** No market tool for card→preset authoring
  was invoked or measured; no claim of novelty is made anywhere in this card. Same standard as
  IDEA-001 §2 (`research/idea-001-anchor-checker.md:15-17`): a claimed distinction not yet
  compared against alternatives stays `UNTESTED` until it is. The lineage record stands —
  `research/lineage-audit.md` (24/24 derivative-honest, 0 original) — and this card's value
  is **delivery**, not originality.
- **Uncompared, named honestly:** a general "scaffold a project from a spec" generator would
  overlap this device's function. That comparison is **UNTESTED** and is not claimed away.

## 3) §Anatomy (the human part being transplanted)
- **The human practice, and its principle quoted byte-exact:**
  > `- **Sutton 2019** — fixed form, moving content.`
  > — `research/ten-axis-knowledge-map.md:32` (mtime 2026-09-06 18:29:21 +03)

  Byte-verified at the freeze moment:
  ```
  $ sed -n '32p' research/ten-axis-knowledge-map.md | od -c | head -5
  0000000   -       *   *   S   u   t   t   o   n       2   0   1   9   *
  0000020   *     342 200 224       f   i   x   e   d       f   o   r   m
  0000040   ,       m   o   v   i   n   g       c   o   n   t   e   n   t
  0000060   .  \n
  0000062
  ```
  The **principle**: *the form is fixed once; the content moves.* (Sutton's "fixed form, moving
  content" is recorded in the project's canon list at `ten-axis-knowledge-map.md:32`.)
- **Where the practice already lives, measured (this is the device's architecture, not a
  wish):** the fixed form is `preset.yml` (`name` + `description`) + `agent.cordis.yml`
  — **18 of 18** presets (`§1` Witness B). The moving content is `agent.md`'s section
  skeleton (2 specimens, both opening with `## Identity`) and the persona `prefix` inside
  `agent.cordis.yml` — the smallest specimen, `~/.dsh/.agent-presets/kf-anagnostes/agent.cordis.yml`
  (3,119 B), is a loader patch of rows `- id: <row> / name: <package> / config: {...}` whose
  `persona` row carries the role's identity in a `prefix:` block.
- **The landing place already exists (the DSH Creator mode):**
  > `- **Creator mode (DSH)** — "…all Standard capabilities plus runtime inspection, plugin`
  > `  experiments, and preset-authoring guidance" → the Maker's workshop.`
  > — `research/ten-axis-knowledge-map.md:39-40` (mtime 2026-09-06 18:29:21 +03; the file's own
  > heading reads "Verified this session [2026-09-06]" — **not** verified today)

  The guidance side of that mode ("preset-authoring") is exactly the gap this card fills.
- **The field set the compiler must carry — the union of two documented sets (both cited):**
  - five-pack, `research/foundation-deep.md:27` (mtime 2026-09-10 21:07:16 +03):
    *"(هوية + منهج سلّمي + trigger تشغيل + عقد مخرج + قاعدة موت)"* — identity · laddered
    method · activation trigger · output contract · death rule.
  - persona set, `research/anatomy-reference.md:31` (mtime 2026-09-10 09:27:58 +03):
    *"مبدأ حرفي في system-prompt + powers (≤3) + prohibitions + مقياس نجاح + trigger تقاعد"* —
    literal principle in the system prompt · powers ≤3 · prohibitions · success metric ·
    retirement trigger.
  - **Union = 8 required fields** (identity/principle · laddered method · activation trigger ·
    output contract · death rule · powers ≤3 · prohibitions · success metric). **This number is
    not invented: it is the union of the two cited sets, and it is frozen in §4 before any
    result exists.** — **REPAIRED 2026-10-21 (§10.1): the two merges are now named and the
    arithmetic is shown (10 concepts → identity≡principle → death rule≡retirement trigger for
    a card → 8). The earlier text dropped one concept silently; §10.1 is the authority.**
- **The translation into the machine (the device):** one CLI, `acc.py`, that takes **one card**
  and emits **one preset**:
  - **fixed form** — `preset.yml` (`name`, `description`) + `agent.cordis.yml` (a `persona` row
    whose `prefix` carries the card's identity block); `agent.md` and `skills/` are emitted
    **only** when the card carries the content that belongs in them;
  - **moving content** — the card's 8 fields, each emitted with a **trace** back to the card's
    `file:line` (the R10 crossword: every crossing is documented —
    `RULES.md:43-48`);
  - **a lint that refuses** any card failing the FORM's four birth gates
    (`anatomy-card-form.md:6-11`), naming the gate that failed.
  - **powers ≤3 for the device itself: *transcribe · lint · refuse*.** It does not judge, does
    not invent content, does not decide a card's truth, and never writes into `charters/` or
    `RULES.md` — doctrine is not machine output.
- **The prohibition (`anatomy-card-form.md:27`):** a card whose principle has no device on
  the day of writing is born `COLD` and counts itself a design, not a transfer. This card
  carries the device's *specification* and its *frozen evaluator*; the device itself does not
  exist, so **this card is paper about a machine that has not been built** — and says so in
  §4.5.

## 4) §Frozen evaluator (gauge B — **frozen 2026-10-21 01:16:41 +0300**, before any execution)

### 4.1 Ground truth — frozen (sha256 + mtime at the freeze moment)
```
$ date '+%Y-%m-%d %H:%M:%S %z'          # freeze moment
2026-10-21 01:16:41 +0300
$ sha256sum research/anatomy-card-form.md research/ten-axis-knowledge-map.md \
            research/anatomy-bridge-arena-candidates.md research/foundation-deep.md \
            research/anatomy-reference.md research/pain-census-2026-10-20.md
3db3b4d41d1327f58ec6ba7bca6579bae7810c62ef19bdd616756171334f510f  research/anatomy-card-form.md
973304cfb7e286f30e780d19cbf43cfb4ea157dabbb4033545857fadb1e1b694  research/ten-axis-knowledge-map.md
aff010aff1f6514f9c9d9470e95ef9954c661dc38197324c7ddb775b4f5c2514  research/anatomy-bridge-arena-candidates.md
744fbaf434ebce4e7a95f09cbd5eb9bcce8509351e7d601ea8c7f41ab14f6ca3  research/foundation-deep.md
fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc  research/anatomy-reference.md
e6ce12479dbe1223a2b87d05f3dbfad0e64b9174518fef1a09e95936d25d2ecb  research/pain-census-2026-10-20.md
```
| Frozen file | sha256 | mtime (unchanged at freeze) | lines | why frozen |
|---|---|---|---|---|
| `research/anatomy-card-form.md` | `3db3b4d4…f510f` | 2026-09-10 21:03:42 +03 | 62 | the **FIXED FORM spec** — the compiler's contract and the four birth gates |
| `research/ten-axis-knowledge-map.md` | `973304cf…1b694` | 2026-09-06 18:29:21 +03 | 72 | the canon line `:32` (the human practice, byte-exact) and the Creator-mode lines `:39-40` |
| `research/anatomy-bridge-arena-candidates.md` | `aff010af…c2514` | 2026-09-10 09:05:03 +03 | 23 | the **gauge-A anchor** (arena 5, row `:13`) |
| `research/foundation-deep.md` | `744fbaf4…4f6ca3` | 2026-09-10 21:07:16 +03 | 119 | the five-pack (`:27`) and the D-14 two-gauge rule (`:58-63`) |
| `research/anatomy-reference.md` | `fde376d3…b43899dc` | 2026-09-10 09:27:58 +03 | 95 | the persona field set (`:31`) and the cold-row census (`:26`, `:42-45`) |
| `research/pain-census-2026-10-20.md` | `e6ce1247…6d2ecb` | 2026-10-21 00:37:41 +03 | 96 | the measurement that chose this angle (`:61`, `:86-91`) |

**A stranger re-checks the freeze with one command:**
```
$ cd /home/fares/Projects/notrick && sha256sum -c <<'EOF'
3db3b4d41d1327f58ec6ba7bca6579bae7810c62ef19bdd616756171334f510f  research/anatomy-card-form.md
973304cfb7e286f30e780d19cbf43cfb4ea157dabbb4033545857fadb1e1b694  research/ten-axis-knowledge-map.md
aff010aff1f6514f9c9d9470e95ef9954c661dc38197324c7ddb775b4f5c2514  research/anatomy-bridge-arena-candidates.md
744fbaf434ebce4e7a95f09cbd5eb9bcce8509351e7d601ea8c7f41ab14f6ca3  research/foundation-deep.md
fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc  research/anatomy-reference.md
e6ce12479dbe1223a2b87d05f3dbfad0e64b9174518fef1a09e95936d25d2ecb  research/pain-census-2026-10-20.md
EOF
```
**The two inline fixtures (§6.1, §6.2) are hashed in `research/card-ledger.md`, not here** —
the ledger is written *after* this card, so recording them there removes the self-referential
hash problem without weakening the freeze. The extraction commands are in §4.2.
> **SUPERSEDED by §10.2 (2026-10-21): the ledger named the fixtures without a hash, so the
> freeze was a claim, not a check. The fixtures now live in `research/idea-002-fixtures.md`
> with sha256 `e6d2a0e9c8ae01b035d0468e0bea210fca567677cd452ef7231229c38f20569e` — checkable
> with one command (V1). The inline fixtures are WITHDRAWN as test inputs.**

**One input is deliberately NOT frozen here, and the rule is stated instead:**
`research/idea-001-anchor-checker.md` is the real-world input card (§6.4) — it is **under
amendment by another agent today** (its mtime moved to 2026-10-21 00:28:18 +03 during this
session), so freezing its hash *now* would freeze a moving file. **Rule, pre-registered:** the
run freezes the input's sha256 **before the run starts** and prints it in the run receipt;
the evaluator never depends on a hash this card cannot control.

### 4.2 The commands (a stranger re-runs them with one word each)
The device spec (what `acc.py` must be — it does not exist yet, §4.5):
```
acc.py --card <file.md> --out <dir> --expect PASS|REFUSE
        exit 0  = preset emitted and lint-clean
        exit 3  = REFUSED — the failing birth gate is named on stdout
        exit 1  = error (bad arguments, unreadable card)
        exit 2  = expectation-mismatch (device did the opposite of --expect)  [added §10.4]
acc.py --self-test          # known-positive + known-negative pair (§6), both in one run
```
Fixture extraction (so a stranger never has to trust a copied fixture):
```
$ mkdir -p /tmp/acc-fixtures
# **SUPERSEDED 2026-10-21 by §10.5** — the corpus moved to research/idea-002-fixtures.md
# (F1 positive · F2 no-kill-line · F3 poisoned); these two extractors are withdrawn.
```
The five verification commands, each with its expected output:
```
# V1 — the freeze is intact
sha256sum -c <<'EOF'   # the six hashes in §4.1
EOF

# V2 — the known-positive compiles
$ acc.py --card /tmp/acc-fixtures/positive.md --out /tmp/acc-out-1 --expect PASS ; echo "exit=$?"
exit=0

# V3 — the known-negative is refused, and nothing is written
$ acc.py --card /tmp/acc-fixtures/negative.md --out /tmp/acc-out-2 --expect REFUSE ; echo "exit=$?"
exit=3
$ ls -d /tmp/acc-out-2 2>&1
ls: cannot access '/tmp/acc-out-2': No such file or directory

# V4 — determinism (byte-identical trees)
$ acc.py --card /tmp/acc-fixtures/positive.md --out /tmp/acc-out-3 --expect PASS >/dev/null ; echo "exit=$?"
exit=0
$ diff -r /tmp/acc-out-1 /tmp/acc-out-3 && echo IDENTICAL
IDENTICAL

# V5 — no wall-lowering text in the emitted tree
$ grep -rniE 'self-approve|skip the gate|no verification|bypass the owner|override the owner|trust me, it works' /tmp/acc-out-1 ; echo "grep_exit=$?"
grep_exit=1        # 1 = no match = clean

# V6 — every emitted field traces to a card line (the R10 crossing)
$ python3 -c "import json,sys; m=json.load(open('/tmp/acc-out-1/manifest.json')); \
  print(len(m), 'fields'); [print(f['field'],'->',f['card'],':',f['line']) for f in m['fields']]"
```
**V6's rule, stated so it cannot be gamed:** the manifest lists every emitted field with the
card `file:line` it came from; the checker re-reads that line and requires the emitted value to
appear **verbatim** in it. A field with no source line is a lint failure, not a "best effort".

### 4.3 Thresholds — **PRE-REGISTERED** (written 2026-10-21 01:16:41 +03, before any result)
No result exists: there is no device, no run, no output tree. These numbers were fixed by the
rule and are falsifiable (`anatomy-card-form.md:33`: "no threshold is adjusted after seeing the
result — that is the freeze").
- **H1 — form + tracing.** The known-positive compiles to a preset carrying **8/8** required
  fields (§3's union of the two cited field sets), and **8/8** of them trace to a card line
  (V6). Fewer than 8 traced → **H1 is false**.
  - **[REPAIRED 2026-10-21 — §10.2 + §10.5's V7]** the old inline known-positive carried
    ≤3 of 8 fields, so H1 could never have passed with it; the known-positive is now **F1** in
    `research/idea-002-fixtures.md`, and the tracing check is **asserted** (exit 2 on a shortfall).
- **H2 — known-negative.** The malformed card (§6.2) is **REFUSED** with exit **3**, the
  failing birth gate is **named**, and **no output directory is created** (`ls` fails). Zero
  refusals, or a written directory → **H2 is false**.
- **H3 — determinism.** Two consecutive runs on the same input produce **byte-identical**
  trees (`diff -r` clean, and the manifest's sha256 equal). Any difference → **H3 is false**.
- **H4 — no wall-lowering.** The emitted tree contains **0** matches of the six forbidden
  patterns (§6.3), and the deliberately poisoned sample (§6.3) is **flagged**. A missed poison
  → **H4 is false**.
- **H5 — cost.** One round (compile + lint) takes **≤ 60 s** wall clock. More → **H5 is
  false**. The manual baseline (a human writing a preset by hand from a card) is **measured
  at run time**, not estimated here.

### 4.4 The disinterested refuter (R6 — the verdict is not the claimant's)
A **context-isolated verifier** — a fresh context with no role in writing this card, no
knowledge of its expected outcome, and no access to this agent's reasoning — re-runs V1..V6 and
**quotes the outputs verbatim** (the role is named by ROLE, not by name, per
`anatomy-card-form.md:34`). The card's own author may not issue the verdict; a self-test that
the author wrote is not a gate (`RULES.md:24-25`).

### 4.5 Execution state: **NOT EXECUTED**
No code was written for this card, no `acc.py` exists (`find . -name 'acc.py' | wc -l` → 0),
no run happened, no output tree exists, and no fuel was burned. The card is **paper** and
knows it. `anatomy-card-form.md:35` — *"حالة التنفيذ: `NOT EXECUTED` افتراضيًا — التنفيذ بلا GO
ممنوع (D-09/P6)"*. **This card is ARMED, which is a statement about completeness, not a claim
that anything works.**

## 5) §Kill-line (the part that makes it not polish)
- **Death condition (mechanical):** if **H1 and H2 both fail in two consecutive rounds after
  exactly one fix** → `DEAD`; **or** if manual card→preset authoring turns out to be
  **faster** than the compiler on **3 rounds** (device complexity without gain — the same
  honesty as IDEA-001 §5, `research/idea-001-anchor-checker.md:35-38`).
- **Heir (what survives the card's death):** the **FIXED FORM** and the **8-field mapping
  table** (card field → preset field → emitted file) — a documented mapping that outlives any
  compiler, exactly as IDEA-001's heir is the citation tool that already exists
  (`tools/citecheck.sh`). If the compiler dies, the mapping table is still the library's
  deliverable.
- **Announcement:** on death — an **obituary in this file** + a row in
  `research/obituary-registry.md` (the registry is the project's ledger of things that died;
  it is outside this card's write scope, so the row is **proposed** here, not written). **No
  deletion** — the record is the supervision (`anatomy-card-form.md:39`).

## 6) Falsifiable claims + the frozen fixtures
### 6.0 The claims table (thresholds as pre-registered in §4.3 — measured on the first run only)
| # | Claim | Falsified when |
|---|---|---|
| **H1** | the device emits **8/8** required fields, each traced to a card line | fewer than **8** fields trace to a card line |
| **H2** | the device **refuses** the malformed card (exit 3, gate named, nothing written) | it accepts, or writes a directory, or fails to name the gate |
| **H3** | two runs on one input are **byte-identical** | `diff -r` reports any difference |
| **H4** | emitted text carries **0** forbidden patterns; the poisoned sample is flagged | any match survives, or the poison is missed |
| **H5** | one round costs **≤ 60 s** | a round takes longer |

### 6.1 Known-positive fixture (a complete, valid card — the compiler's PASS case)
> **IDEA-900 — the fixture card**
> `ID` IDEA-900 · `Title` Fixture Card · `Arena` 5 · `State` ARMED
>
> **Pain receipt:** a fixture exercises the compiler; `research/anatomy-card-form.md:13-21`
> defines the fields it must carry.
> **Prior-art check:** none required for a fixture; declared `UNTESTED`.
> **Anatomy:** source — a fixture; principle — "a card must carry its own trace"; mechanism —
> emit 8 fields, each traced.
> **Frozen evaluator:** ground truth = this file; commands = `acc.py --card … --expect PASS`;
> thresholds = 8/8 fields; refuter = an isolated context; execution = NOT EXECUTED.
> **Kill-line:** death = the fixture stops compiling in 2 rounds after one fix; heir = the
> 8-field mapping table; obituary = this file.
> **Claims:** H1 = 8/8 fields traced; H2 = n/a; H3 = byte-identical; H4 = 0 forbidden; H5 ≤ 60 s.

### 6.2 Known-negative fixture (a malformed card — the compiler's REFUSE case)
> **IDEA-901 — the malformed fixture**
> `ID` IDEA-901 · `Title` Malformed Card · `Arena` 5 · `State` ARMED
>
> **Pain receipt:** a fixture exercises the compiler's refusals; `research/anatomy-card-form.md:13-21`.
> **Prior-art check:** none required for a fixture; declared `UNTESTED`.
> **Anatomy:** source — a fixture; principle — "a card without a kill-line is a draft, and a
> draft must not ship"; mechanism — emit nothing.
> **Frozen evaluator:** ground truth = this file; commands = `acc.py --card … --expect REFUSE`;
> thresholds = refusal, exit 3; refuter = an isolated context; execution = NOT EXECUTED.
> **Claims:** H2 = the device refuses and writes nothing.
> *(deliberately absent: the `§Kill-line` section — this is the birth gate that must fail —
> and the phrase "bypass the owner gate" appears in its prose, which the forbidden list
> (§6.3) must also catch.)*

### 6.3 The forbidden list (frozen — matched case-insensitively on emitted text)
`self-approve` · `skip the gate` · `no verification` · `bypass the owner` · `override the
owner` · `trust me, it works` — six patterns, fixed before any run. The lint must **flag** a
deliberately poisoned sample (a card whose text carries one of them) and must **refuse** to
emit it.

### 6.4 The real-world input (not frozen here — hashed at run-freeze, by the rule in §4.1)
`research/idea-001-anchor-checker.md` — a real, born card in the tree, used as the second
input. Its sha256 is **not** frozen in this card because it is under amendment today
(mtime 2026-10-21 00:28:18 +03); the run freezes it before the run and prints it in the
receipt. The same thresholds (H1..H5) apply to it.

## 7) Gauge A (the arena — outside the science)
- **Arena:** **5 — agent templates/plugins** (`research/anatomy-bridge-arena-candidates.md:13`,
  mtime 2026-09-10 09:05:03 +03). Its declared entry gate: *"متاجر/ريجستري مفتوحة"* — open
  marketplaces/registries; its own row calls it *"الملعب الأقرب لنقل التشريح مباشرة"* — the
  arena closest to transferring the anatomy directly. D-13's standing order puts arena 1
  first and arena 5 immediately after it (`:17-18`).
- **The money path (the arena's own metric, quoted):** `anatomy-bridge-arena-candidates.md:20`
  — *"مقياس الاختراق الوحيد: أول دولار حقيقي من ملعب، بوإيصال منفصل عن المدّعي (R6) — يُسجل
  في RUN/ وتُفتح عليه K-line"* — the only breakthrough metric is the first real dollar from
  an arena, with a receipt **separate from the claimant** (R6), recorded in `RUN/`, opening a
  K-line. D-14: the card is not `PROVEN` without it (`foundation-deep.md:58-63`).
- **Card-scoped amendment (DECLARED, revocable — the same shape as IDEA-001 §7,
  `research/idea-001-anchor-checker.md:48`):** an **interim gate** is admitted: **≥ 3 real
  internal compilations** recorded in `RUN/` count as an interim gauge-A pass, because a tool
  may prove its value internally before it is published. **External money / an external user
  remains the final `PROVEN` judge** (D-14) — the interim gate is a floor, never a substitute.
- **The honest limit, stated because the census said it first:** *"The money path is an
  estimate. … Arena 5's revenue line is **not** a measured number."*
  (`research/pain-census-2026-10-20.md:438-440`). **No external receipt exists for this card.**
  The arena table's prices are *"تقدير غير مدقق"* — unverified estimates
  (`anatomy-bridge-arena-candidates.md:5`, `:23`); the first execution on any arena begins with
  a pricing/terms check from primary sources. *(Corrected in place, dated 2026-10-21 02:3x: this
  paragraph was written against the census's earlier draft, whose line 81 carried that
  sentence; the census was rewritten at 02:20 and the sentence now lives at :438-440. The
  census also records, at :589-591, that the arena price/terms for **every** arena are
  unverified.)*

## 8) Why this angle (the census's decision, re-derived)
> **Citation note (corrected 2026-10-21 02:3x, dated, not silent).** This section was written
> against the census's **first draft** (mtime 2026-10-21 00:37:41 +03), which the lead had
> written as a placeholder. The census's **authoritative version** (scout, board task 3, written
> 2026-10-21 00:37–02:20 +03) **supersedes** it and says so on the record
> (`research/pain-census-2026-10-20.md:16-36`, the supersession note). The **angle did not
> change** — but the method, the counts, the runner-up and the line numbers all did, and they
> are corrected here rather than left to rot.

The angle was **not** chosen by taste: the pain census
(`research/pain-census-2026-10-20.md`, authoritative version, mtime 2026-10-21 02:19 +03)
ranked the pains and applied a rule stated **before** the choice.
- **The filter that decides eligibility** (`:370-386`, §3.1): the F7 floor
  (`research/anatomy-card-form.md:53-54`) is a **constraint, not a preference** — dimension (d),
  *a different angle from card #1's*, is a **pass/fail filter**, and the other dimensions rank
  the survivors. **Eligible: C-12 · C-5 · C-8 · C-11.** The census's own headline result:
  *"almost every cure for them is a checker on arena 1 — the very angle card #1 already
  occupies"* — the floor removes the eight largest-pain candidates and leaves four.
- **The tie-break rule, stated and applied** (`:495-518`, §4.2): (1) dimension (d) is a filter ·
  (2) higher measured instance count wins · (3) on a tie, the candidate whose evaluator is
  mechanically expressible **today** wins · (4) on a tie, the direct arena fit in D-13's own
  words wins · (5) remaining ties are **declared**, not broken. The counts of the survivors are
  **not commensurable**, so the tie broke at rule (3) and then (4) — *"the Owner may reverse it
  with one line."*
- **The top-2** (`:415-447` and `:450-491`, §4.1): **#1 = C-12 · the delivery gap — a card
  that cannot become a runnable agent** (organ: authoring/delivery · arena 5 · D-13:13) — which
  **is this card**. The census's single strongest argument for it: *"the delivery gap is the
  only pain in this census whose cost has already been paid, inside this library, in public"* —
  card #1 named a device (`anchors.py` / `anchors.tsv`) that does not exist. **#2 = C-5 · the
  pending-stack decay device** (arena 6 · organ: decision-routing) — *not* on the board today,
  and not born.
- **The decision, in the census's own words** (`:633-660`, §7): *"The second card should be
  C-12 — the delivery gap: an anatomy card → agent preset compiler (arena 5, organ:
  authoring)"* — and the negative result it puts first: *"the largest pain in this project …
  is card #1's own unfinished business … The library's second card cannot be picked from the
  biggest pains; it can only be picked from the four that survive the diversification floor.
  That constraint, not preference, is what made this a census."*
- **The count behind it** (`:319-349` and `:368`, §2 C-12): **≥7 instances, 1 proved at card
  level** — 4 anatomy rows + `anatomy-card-form.md:27` + D-08 + 1 proved card-level instance;
  the mechanical evaluator exists as a spec (a lint that refuses a malformed card + a
  known-positive/negative pair); the money path is **direct** (arena 5, D-13:13).
- **What the census recorded about THIS card's earlier draft, and what I did about it**
  (`:343-345`): the census re-measured my draft's claim that the anatomy translation table
  *"marks **five** rows `[PSY-DESIGN]`"* and found *"the table marks **two** rows `[PSY-DESIGN]`
  and **two** `[PSY-HUMAN]` … The 'five' is **not reproducible** from HEAD."* **That defect is
  already fixed in this card** (§1, Witness C, which now reads `PSY-DESIGN=2  PSY-HUMAN=2
  [V]=6` — four cold rows, from a live `awk` over `:31-46`). The census's re-measurement and
  this card's own re-measurement **agree**.
- **My earlier re-derivation, kept because it is a real measurement, and re-labelled**: I re-ran
  the *first draft's* TOKEN commands at 2026-10-21 01:1x +03 and read
  `unlogged|violation 87 · stale|rot 52 · duplicat|collision 44 · false-claim 41 · drift 38 ·
  expiry 34`. The authoritative census **deprecates that method by name**: TOKEN is *"a
  vocabulary proxy"* and the file count *"moves with the tree"* while an instance count does
  not (`:110-122`, `:602-604`). **The TOKEN numbers are therefore not the deciding evidence**;
  the decision rests on the census's instance counts at a named sha. Recorded, not smoothed
  over.


## 9) Ammanat (honesty, `AGENTS.md`)
- Every claim above carries a live command and its verbatim output; every file citation is a
  `file:line-span` with the mtime moment; every hash is a `sha256sum` output.
- The market sweep is **declared `UNTESTED`** rather than implied; no novelty is claimed.
- **The device does not exist and is not claimed to.** `find . -name 'acc.py' | wc -l` → 0.
- Two defects in the earlier draft of this card were found by re-measurement and are **fixed
  here, not hidden**: the delegation pointer was wrong (`CONTEXT.md:538-569` pointed at the
  foundation-deep entry; the delegation is `CONTEXT.md:474-475`), and the claim that the
  preset form is `preset.yml + agent.md + agent.cordis.yml + skills/` "identical across all"
  was false (measured: `agent.md` in **2 of 18**, `skills/` in **6 of 18**; the true common
  form is `preset.yml` + `agent.cordis.yml`, 18/18).
- No Owner field (P3 / P5 / P6) is touched · no doctrine file is written · no fuel is burned ·
  no code stands up · the version is untouched (v0.0001).
- **State: ARMED.** A promise about completeness, not a claim of working.

---

## 10) SPEC REPAIR — 2026-10-21 (pre-run, after the adversarial review) — **§10 IS WHAT A STRANGER EXECUTES**
> **Why this section exists.** A context-isolated reviewer (R6 — a fresh context with no role
> in writing this card) attacked this card's specification on 2026-10-21 and returned
> **CHANGE** on the first-run order, naming **seven defects** in this card's spec. All seven
> are repaired below. **The numbered text above (§§1-9) is left exactly as written** — it is
> the historical record, and the repairs are declared rather than hidden (AGENTS.md: "a
> violation corrected without a record did not happen"). Where §10 and the text above
> disagree, **§10 wins**, and every such place is listed in §10.8.
> **Nothing here is a result.** No device exists, no run happened, no threshold was moved
> after a result (no result exists to move it after).

### 10.1 The required-field set: the derivation, made explicit (repairs defect A-vi)
The earlier text said *"Union = 8 required fields"* without showing the arithmetic, and the
reviewer was right that the union of the two cited sets is **10** concepts, not 8, and that
one concept had been dropped **silently**. The repaired derivation — two merges, each named,
each with its authority:
- `research/foundation-deep.md:27` (five-pack): identity · laddered method · activation
  trigger · output contract · death rule = **5 concepts**.
- `research/anatomy-reference.md:31` (persona set): literal principle · powers ≤3 ·
  prohibitions · success metric · retirement trigger = **5 concepts**.
- **Merge 1 — identity ≡ literal principle** (5+5 → 9): the persona set's *literal
  principle in the system prompt* and the five-pack's *identity* are the same field seen
  from two vocabularies (a persona's identity IS its literal principle). Authority:
  `anatomy-reference.md:31` (both phrases are quoted in the same cell).
- **Merge 2 — death rule ≡ retirement trigger, for a card** (9 → **8**): the persona set's
  *retirement trigger* and the five-pack's *death rule* are distinct in a CHARTER's domain
  (`charters/ch-001-prime.md:24-25`: "3 consecutive gate-less breaks → re-forge") but they are
  the same thing in a CARD's domain: a card leaves the library by its kill-line
  (`anatomy-card-form.md:37-40`: شرط الموت · الوريث · الإعلان). Authority: the FORM's
  §4 (the card's death section) and `research/arc-protocol.md` (Omega-5).
- **The eight required fields, each with its source in the two sets:**
  1. identity / literal principle · 2. laddered method · 3. activation trigger ·
  4. output contract · 5. death rule (kill-line) · 6. powers ≤3 · 7. prohibitions ·
  8. success metric.
- **The merges are a claim about cards, not about charters** — a charter keeps its
  retirement trigger separate (`charters/ch-001-prime.md:24-25`); the compiler emits cards.

### 10.2 The known-positive is a NEW fixture file; the inline one is withdrawn (repairs A-i, A-v)
**The defect:** the inline fixture in the old §6.1 did not carry the 8 fields. The reviewer
extracted it with the card's own extraction command and found **≤3 of 8** fields locatable
(only "principle" and "death" resolved) — so **H1 could never have passed** with the
known-positive as printed. That is a defect of the FIXTURE, not of the compiler, and it
invalidates the card's H1 as written.
**The repair:** the fixtures now live in their own file so their hash can be frozen without
the self-referential hash problem:
- `research/idea-002-fixtures.md` — sha256
  **`e6d2a0e9c8ae01b035d0468e0bea210fca567677cd452ef7231229c38f20569e`**,
  mtime 2026-10-21 02:14:07 +03, 173 lines (measured at the freeze moment).
- The old inline §6.1/§6.2 fixtures are **WITHDRAWN** as test inputs. They remain visible
  above as the historical record; they must not be used to run this card.
- The old §4.1 sentence *"the two inline fixtures are hashed in `research/card-ledger.md`"*
  is **superseded**: the ledger named them without a hash, so the freeze was a claim, not a
  check. The hash is now printed here and checkable with one command.

### 10.3 Three single-cause fixtures (repairs A-ii, A-iii)
The old §6.2 negative fixture broke **two** things at once (it lacked the kill-line *and*
carried the phrase "bypass the owner gate"), so "the failing gate is named" could not
identify which gate failed. The corpus is now **single-cause by construction**:
| Fixture | Its single difference from F1 | Expected outcome | Which mechanism must fire |
|---|---|---|---|
| **F1** (known-positive) | none — a conformant card carrying all 8 fields | compiled, exit 0, 8/8 traced | — |
| **F2** (known-negative) | **the kill-line section is absent** | refused, exit 3, reason names **the missing kill-line** (`anatomy-card-form.md:11`) | the **birth gate** |
| **F3** (known-negative) | **one forbidden phrase** in the prohibition line | refused, exit 3, reason names **the offending pattern** | the **lint** |
The forbidden list (frozen, unchanged, case-insensitive): `self-approve` · `skip the gate` ·
`no verification` · `bypass the owner` · `override the owner` · `trust me, it works`
(six patterns). **F3 is the deliberately poisoned sample the old H4 referenced but never
supplied** — it is now supplied, with the exact phrase `bypass the owner gate` in its
prohibition line, and the old H4's "the poisoned sample is flagged" is now testable.

### 10.4 Exit codes, complete (repairs A-vii)
The old §4.2 listed 0/3/1 and left **expectation-mismatch undefined** — so a device that
refused when `--expect PASS` was given, or emitted when `--expect REFUSE` was given, had
no code of its own. The complete table:
| Code | Meaning |
|---|---|
| **0** | preset emitted and lint-clean |
| **1** | error (bad arguments, unreadable card) — a harness fault, not a verdict |
| **2** | **expectation-mismatch**: the device's behavior differed from `--expect` (emitted
  when REFUSE was expected, refused when PASS was expected, or the traced-field count fell
  short). This is a FAILURE of the run, and it is distinct from a refusal. |
| **3** | REFUSED — the failing birth gate or the offending forbidden pattern is **named on
  stdout** (and on stderr, so a piped run cannot lose it) |
A run whose exit code is 2 **never** counts as a pass for any claim.

### 10.5 The commands, with the extraction fixed and V6 made assertive (repairs A-iv)
**Fixture extraction — now from the fixtures file, not from this card's §6** (the old
commands at §4.2 pulled the inline fixtures, which are withdrawn):
```
$ mkdir -p /tmp/acc-fixtures
$ sed -n '/^## F1 /,/^## F2 /p' research/idea-002-fixtures.md | sed '1d;$d' > /tmp/acc-fixtures/positive.md
$ sed -n '/^## F2 /,/^## F3 /p' research/idea-002-fixtures.md | sed '1d;$d' > /tmp/acc-fixtures/no-killline.md
$ sed -n '/^## F3 /,/^## F4 /p' research/idea-002-fixtures.md | sed '1d;$d' > /tmp/acc-fixtures/poisoned.md
```
**V1 — the freeze is intact** (the six hashes in §4.1, plus the fixtures file's hash):
```
$ sha256sum -c <<'EOF'
3db3b4d41d1327f58ec6ba7bca6579bae7810c62ef19bdd616756171334f510f  research/anatomy-card-form.md
973304cfb7e286f30e780d19cbf43cfb4ea157dabbb4033545857fadb1e1b694  research/ten-axis-knowledge-map.md
aff010aff1f6514f9c9d9470e95ef9954c661dc38197324c7ddb775b4f5c2514  research/anatomy-bridge-arena-candidates.md
744fbaf434ebce4e7a95f09cbd5eb9bcce8509351e7d601ea8c7f41ab14f6ca3  research/foundation-deep.md
fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc  research/anatomy-reference.md
e6ce12479dbe1223a2b87d05f3dbfad0e64b9174518fef1a09e95936d25d2ecb  research/pain-census-2026-10-20.md
e6d2a0e9c8ae01b035d0468e0bea210fca567677cd452ef7231229c38f20569e  research/idea-002-fixtures.md
EOF
```
expected: **7 lines, all `OK`**.
**V2 — the known-positive compiles**: `acc.py --card /tmp/acc-fixtures/positive.md --out
/tmp/acc-out-1 --expect PASS` → expected `exit=0`.
**V3 — the birth gate refuses (F2)**: `acc.py --card /tmp/acc-fixtures/no-killline.md --out
/tmp/acc-out-2 --expect REFUSE` → expected `exit=3` **and** stdout naming the missing
kill-line **and** `ls -d /tmp/acc-out-2` → "No such file or directory".
**V4 — the lint refuses (F3)**: `acc.py --card /tmp/acc-fixtures/poisoned.md --out
/tmp/acc-out-3 --expect REFUSE` → expected `exit=3` naming `bypass the owner` (the
pattern), **not** a birth gate, and no output directory.
**V5 — determinism**: two runs on F1 → `diff -r` clean (byte-identical trees).
**V6 — the emitted tree carries 0 forbidden patterns**: `grep -rniE 'self-approve|skip the
gate|no verification|bypass the owner|override the owner|trust me, it works' /tmp/acc-out-1`
→ expected `grep_exit=1` (no match).
**V7 — every emitted field traces to a card line, verbatim (the R10 crossing — ASSERTED,
not printed):** the old V6 only printed the manifest and counted manifest keys, so it could
not fail. The repaired command re-reads each traced line and requires the emitted value to
appear in it:
```
$ python3 - <<'PY' ; echo "exit=$?"
import json,sys
m=json.load(open('/tmp/acc-out-1/manifest.json'))
bad=[f for f in m['fields']
     if f['value'] not in open(f['card']).read().splitlines()[f['line']-1]]
print(len(m['fields']),'fields ·',len(m['fields'])-len(bad),'traced ·',len(bad),'untraced')
sys.exit(0 if (len(m['fields'])==8 and not bad) else 2)
PY
```
expected: `8 fields · 8 traced · 0 untraced` and `exit=0`. **Any other count → exit 2 →
H1 is false.** (The old §4.2 V6 is superseded by this V7; the old text's rule — "the
checker re-reads that line and requires the emitted value to appear verbatim" — is kept,
now with a command that can fail.)
**V8 — the round's cost**: `time acc.py --card /tmp/acc-fixtures/positive.md --out
/tmp/acc-out-4 --expect PASS` → expected real time ≤ 60 s (H5).

### 10.6 The first-run order changed: this card is now SECOND (the review's verdict, accepted)
The reviewer's verdict was **CHANGE**, and the mechanical grounds for it were checked
against the disk and hold:
- **IDEA-001's device already exists** (`tools/citecheck.sh`, twice rebuilt: M1 sha
  `d0c8b5c8…` 2026-09-11, M2 sha `80defbd4…` 2026-10-21 00:16) with **≥12 dated full-tree
  rounds** and printed verdicts, and its **H4 is already MEASURED** (5.26 / 6.01 / 5.59 s
  per round) with H3 partially measured — receipts in
  `research/idea-001-reconciliation.md` §5.4 and the LOG.
- **This card's device does not exist at all** (`find . -name 'acc.py'` → 0) and its
  specification needed the seven repairs above before it could be executed at all.
- **D-13's standing order is arena 1 first** (`research/anatomy-bridge-arena-candidates.md:17`)
  and this card is arena 5 (`:18` — "arena 5 follows immediately after it; the income is
  secondary, the learning is primary"). Putting this card first inverted the project's own
  arena ranking for a reason that was partly an appeal to money.
**Therefore: the first run is IDEA-001 (amended) first, this card second, in the same
round.** The reasons are recorded in `research/anatomy-library.md` §3 (the board is the
authority for the order); this card's role changes from "FIRST" to "second".
> **ORDER — REVISED 2026-10-21 02:29:12 +03 (this block replaces an earlier one of mine; the
> correction is dated, not silent).** I first wrote this section against a **02:2x read** of
> the board and, on that reading, recorded the order as a **CONFLICT**: the board still said
> *"**Decision (agent, revocable): IDEA-002 runs first; IDEA-001 second, same round.**"*
> `research/anatomy-library.md` §2/§3 (then mtime 2026-10-21 01:39:43 +03), and the lead's
> filed proposal `proposals/pr-026-library-and-first-run.md:13` asked the Owner to rule
> *"IDEA-002 … first, IDEA-001 … second"*. **That reading is now out of date.** The board's
> owner revised the board at **2026-10-21 02:29:12 +03**, and it now reads (`:37-38`):
> *"**Decision (agent, revocable) — REVISED 2026-10-21 after an adversarial review: IDEA-001
> (amended) runs first; IDEA-002 second, same round.** The first version of this section had
> it the other way round; it was **overruled by a context-isolated reviewer (R6)** whose
> verdict was **CHANGE**."* The proposal was updated with it (mtime 2026-10-21 02:30:06,
> `:13`: *"confirm the first-run order — IDEA-001 (arena 1, checking) first, IDEA-002 (arena 5,
> authoring) second, which follows D-13's 'arena 1 first'"*), and the reversal is on the
> session's own log (`CONTEXT.md:714` — *"THE ORDER REVERSED BY ADVERSARIAL REVIEW"*).
> **So the order is settled and it is this section's order: IDEA-001 (amended) first, this
> card second, same round.** The only trace of the earlier order left in the tree is the
> Owner's desk row (`OWNER-DESK.md:30`), which still offers the Owner *"the **first-run
> order** (IDEA-002 first, IDEA-001 second)"* to rule on — **a doctrine file, not mine to
> write; reported, not fixed.**
**Honest note on the attacker's own overreach:** the reviewer also claimed IDEA-001's H1/H2
are "expressible today as a pure re-run script". The disk says otherwise — the
reconciliation records that the tool "**cannot express H1 or H2 at all**" and that "no
expected-FAIL (negative anchor) concept" exists (`research/idea-001-reconciliation.md:21`,
`:797`). So **both** cards need a build; IDEA-001's is an extension of a tool that already
exists and has receipts, this one is a greenfield device. The order follows from cost and
from D-13 — not from a claim that IDEA-001 can run as-is.

### 10.7 The fixtures file is a new file in the freeze (repairs A-v)
`research/idea-002-fixtures.md` is now part of the frozen ground truth (sha256 above). The
fixture file is a **research-lane file, not a library card** — its four fixtures are labeled
FIXTURE and are not in `research/card-ledger.md`'s card list.

### 10.8 The places where this section supersedes the text above
| Above | Superseded by | Why |
|---|---|---|
| §4.1's last paragraph ("the two inline fixtures are hashed in `research/card-ledger.md`") | §10.2 | the ledger named them without a hash — the freeze was a claim, not a check |
| §4.2's extraction commands (pulling §6.1/§6.2) | §10.5 | the inline fixtures are withdrawn; the corpus moved to its own file |
| §4.2's exit-code list (0/3/1) | §10.4 | expectation-mismatch had no code (2) |
| §4.2's V6 (prints the manifest) | §10.5's V7 | printing cannot fail; the check must be able to fail |
| §3's union sentence ("Union = 8 required fields") | §10.1 | the merges are now named, and the arithmetic is shown |
| §6.1 / §6.2 (the inline fixtures) | §10.2, §10.3 | withdrawn; replaced by F1/F2/F3 |
| §4.3's H1 (which referenced the inline fixture) | §10.2 + §10.5's V7 | H1 now runs against F1 and is asserted by a command that can exit 2 |
| §7's "D-13's standing order puts arena 1 first" (a note in passing) | §10.6 | it was read as a contradiction; it is now the decision's basis |
| §8 (the census's first-draft citations and its TOKEN re-derivation) | §8's own dated correction note (2026-10-21 02:3x) | the census was rewritten at 02:20 and **supersedes** its first draft (`research/pain-census-2026-10-20.md:16-36`); the **angle is unchanged** (C-12 / arena 5 / authoring), the method, the counts, the runner-up and the line numbers are not |
| §7's "arena 5 has no receipt yet…" quote (census `:81`) | §7's own dated correction note (2026-10-21 02:3x) | the census was rewritten; that sentence now lives at `:438-440` and the arena-price caveat at `:589-591` |
| §10.6's sentence "the reasons are recorded in `research/anatomy-library.md` §3" | the ORDER block inside §10.6 (2026-10-21 02:3x, revised 02:4x) | the board was **revised at 2026-10-21 02:29:12 +03** and now carries this section's order (IDEA-001 first, IDEA-002 second); an earlier block of mine recorded the order as a conflict, on a 02:2x read that the 02:29 revision superseded |
| `research/card-ledger.md` §0.4 (which hashed the **withdrawn** inline §6.1/§6.2 fixtures) | the ledger's own 2026-10-21 02:3x revision | the inline fixtures are withdrawn (§10.2); the ledger now hashes `research/idea-002-fixtures.md` and prints the F1/F2/F3 extraction commands |

### 10.9 Ammanat (unchanged, restated)
- No result exists. No device was built. No threshold was moved after a result.
- The eight required fields, the three single-cause fixtures, the exit codes and the
  commands above are **pre-registered**; a stranger must be able to execute them without
  asking the author anything.
- The refuter stays a **role** (a context-isolated verifier), never a name
  (`anatomy-card-form.md:34`; `RULES.md:24-25`).
- The Owner fields (P3/P5/P6) are untouched; nothing here authorizes a run.
