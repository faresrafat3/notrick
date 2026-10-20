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
    result exists.**
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
acc.py --self-test          # known-positive + known-negative pair (§6), both in one run
```
Fixture extraction (so a stranger never has to trust a copied fixture):
```
$ mkdir -p /tmp/acc-fixtures
$ sed -n '/^### 6\.1 /,/^### 6\.2 /p' research/idea-002-card-preset-compiler.md | sed '1d;$d' > /tmp/acc-fixtures/positive.md
$ sed -n '/^### 6\.2 /,/^### 6\.3 /p' research/idea-002-card-preset-compiler.md | sed '1d;$d' > /tmp/acc-fixtures/negative.md
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
- **The honest limit, stated because the census said it first:** *"arena 5 has no receipt yet,
  and until a card produces one it stays a hypothesis, not a proven path"*
  (`research/pain-census-2026-10-20.md:81`). **No external receipt exists for this card.** The
  arena table's prices are *"تقدير غير مدقق"* — unverified estimates
  (`anatomy-bridge-arena-candidates.md:5`, `:23`); the first execution on any arena begins with
  a pricing/terms check from primary sources.

## 8) Why this angle (the census's decision, re-derived)
The angle was **not** chosen by taste: the pain census
(`research/pain-census-2026-10-20.md`, mtime 2026-10-21 00:37:41 +03) ranked the pains and
then applied a rule stated **before** the choice (`:50-55`): (1) mechanically decidable ·
(2) has a money path · (3) **the angle must differ from card #1's (checking)** · (4)
tie-break by count. Its trap is named in the file itself (`:44-48`): the **highest-count** pain
(65 files) is a *checking* pain, and taking it would have produced two checking cards — the
very violation of the F7 floor. **A census is evidence, not an order.**
- **The census's top-2:** rank 1 = **IDEA-002, the transfer machine** (authoring · arena 5);
  rank 2 = IDEA-003 (draft, content-anchor deriver — not born, no frozen evaluator).
- **I re-ran the census's six commands** at 2026-10-21 01:1x +03 (the tree moved after the
  census was taken — the census itself warns of this at `:80-84`):
  ```
  unlogged|violation 87 · stale|rot 52 · duplicat|collision 44 · false-claim 41 · drift 38 · expiry 34
  ```
  against the census's `65 / 39 / 42 / 31 / 30 / 33`. **The head did not move** (the top-count
  pain is still the top-count pain, and it is still the *checking* pain the rule rejects), so
  **the census's verdict is unchanged by the re-derivation.** The tail reordered, which is
  exactly the instability the census declared about itself — reported here rather than
  smoothed over.

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
