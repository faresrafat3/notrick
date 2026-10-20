# PAIN CENSUS 2026-10-20 — a mechanical census of candidate pains, to pick the anatomy library's second card

> **Author:** scout (board task 3) · **written:** 2026-10-21 00:37–02:20 +0300
> **Boot-gate (quoted in this session's first reply, verbatim):** `VERSION.md:1` =
> `# VERSION — v0.0001` · rights = *"You may READ everything and PROPOSE (via
> templates/PROPOSAL.md into proposals/)"* · wall = *"no execution, no runtime, no
> Owner-by-right fields"*.
> **Write scope:** this file only. No doctrine file was touched, no code was stood up, no
> fuel was burned, no Owner field was filled, the version was not moved.
> **Purpose:** the library's FORM requires every generation round to yield ≥2 cards from
> **different angles** (`research/anatomy-card-form.md:53-54`, the F7 diversification
> floor). Card #1 exists (`research/idea-001-anchor-checker.md` — arena 1, angle
> *checking*, a checker for our own citations). This census exists so the SECOND card is
> chosen from **evidence, not preference**.

### 0.0 Supersession note (read this first — it is about this file's own history)

At **00:37** the lead wrote a fallback version of this file under the heading *"lead; the
board's scout task did not land, so the lead measured it"*. Task 3 **did** land (claimed
at 21:41, board revision 10, owner `scout`) — the lead's file was written before that
claim was visible. This file **supersedes** it, and says so on the record rather than
silently overwriting.

What the lead's placeholder got right and this file **keeps**: the method's honesty about
its own proxy; the rule shape (mechanically decidable + money path + different angle +
tie-break); the choice of **IDEA-002 / arena 5 / authoring** as the second card; and the
rejection of the top-count pain on the ground that it is card #1's angle.

Where this file **differs**, and why:

| | lead's placeholder | this census | why |
|---|---|---|---|
| counting unit | files mentioning a token | **instances**, counted by the project's own enumerations and re-measured commands | the placeholder counts a *vocabulary*; the placeholder's own §3 admits "the ranking could invert at instance level" |
| the top-count pain | "unlogged change / violation discipline" = 65 files → *"the dominant recurring pain"* | the **ledger** says **6 violations, 5 of one class** — the class is real, but "65 files" measures the *word* "violation" across the tree, not the class | see §2 C-10 |
| second pick | IDEA-003 draft (content-anchor deriver) — explicitly *"a third island"*, same organ | **C-5, the pending-stack decay device** — a different organ *and* a different arena, and it is not on the board today | see §4, §5 |
| false-positive claim | — | **corrected here:** the citation gate's 14 findings are **all true positives**; the 39-day audit's "the gate cried wolf" framing was **withdrawn by the lead's own correction commit** `0e97852` | see §2 C-1, C-6 |

---

## 0) The reproducibility contract (read before re-running anything)

Two anchoring rules make every count re-derivable **even though the tree moved five times
while this census was being written**.

**Rule 1 — HEAD-anchored counts.** Most counts read the **committed** tree at a fixed sha,
never the working tree:

```
git rev-parse HEAD   →   f2e46d02db745ca1bf5be14d26ef8fc2fa52fe87
git log -1 --format='%ci'  →   2026-10-21 02:11:28 +0300
```

`git show <sha>:<path>` and `git grep … <sha>` reproduce these numbers **forever**,
whatever the working tree does later.

**Rule 2 — working-tree counts are labelled and dated.** Where the object *is* the
instrument, the command and the timestamp are printed with it.

### 0.1 The tree's liveness — stated plainly, because it is part of the finding

```
$ date
Wed Oct 21 02:19:47 AM EEST 2026          # §6.1 prints the literal closing output
$ git log --oneline -8
f2e46d0 SCOPE QUALIFIER + README re-truth (2026-10-21)
84c22d0 ANATOMY-CHAIN CLOSE-20261021: the 2026-09-10 chain re-opened after 40 days, closed at the paper level
0e97852 CORRECTION: the citation gate did not cry wolf — the LEDGER did (5 of 14 drifts never filed, 4 of them the rule's own authors)
813a0fd LANE REGISTER v2 LIVE (pr-025-B executed in the free lane): the status column is generated, so it cannot rot
b8b5a2f ERGONOMICS 39-DAY AUDIT: two falsifier verdicts against this project's own work, and the instruments that make them visible
b60ae35 Amend the pin set: exempt violations.md (pr-013 option A, delegated)
```

**The committed tree was quiet for 29 days and then, during this census, it moved.**
Measured at the anchor the lead's chain began:

```
$ echo $(( ( $(date +%s) - $(git log -1 --format=%ct) ) / 86400 ))   # at b60ae35
29
$ git log --since='2026-09-21 08:00' --oneline | wc -l                 # at b60ae35
0
```

`b60ae35` (2026-09-21 07:54:36 +0300) was the last commit for **29 days**; the lead's
chain-close commit `84c22d0` landed at **2026-10-21 01:51:06 +0300**, i.e. *inside this
census's own writing window*. **The dormancy this census measures is real and it ended
while the census was running.** Every count below is anchored to a named sha, and the
sha changed twice during the work — that is why Rule 1 exists.

### 0.2 The corpus

```
$ git ls-tree -r --name-only f2e46d0 | grep -c '\.md$'    # tracked markdown
642
$ git ls-tree -r --name-only f2e46d0 | wc -l                # tracked files
666
```

---

## 1) Method — how a pain was admitted, and how it was counted

A **candidate pain** is admitted only if all three hold:

1. **It is recurring.** The task brief's own rule, used verbatim: *"A pain with 1 instance
   is not a pattern — say so."*
2. **It is documented on disk with a receipt** (file:line). A pain asserted only in chat
   does not count.
3. **Its instances are countable by a command** a stranger can re-run.

Two counting conventions; every table cell names which:

- **ENUM** — the count is a row in a table the project itself wrote (`RUN/STALE.md`,
  `violations.md`, the anatomy table). Exact, but it inherits that enumeration's blind
  spots, and is marked as such.
- **MEAS** — the count is re-measured from disk by the command shown. Independent of any
  project summary.

A third convention, used for the lead's placeholder method so it can be compared rather
than dismissed: **TOKEN** = "files mentioning a token" (`grep -rilE`). It is a *vocabulary*
proxy. §2 C-10 shows the gap between TOKEN and ENUM on the same class: **65 files vs 5
instances** — and the file count moves with the tree (it was 65 at 00:4x, 89 at 01:1x,
88 HEAD-anchored), while the instance count does not.

---

## 2) The census — twelve distinct pains, with evidence and counts

### C-1 · Citation rot, *resolution* class (a reference that no longer resolves)

| | |
|---|---|
| **Count (ENUM+MEAS)** | **14 findings, all 14 TRUE positives** — 9 live drifts + 5 declared-witness. 9 distinct broken targets. |
| **Command** | `git archive f2e46d0 \| tar -x -C /tmp/nh && bash /tmp/nh/tools/citecheck.sh` → `── summary: files=166 · refs=1348 · DRIFTS=9 · declared-witness=5 ──` |
| **Distinct broken targets (9)** | `AGENTS.md:74-77` (file has 75 lines) · `VERSION.md:26-27` (file has 25 lines) · `tiers.md:15-16` (missing) · `001.md:21` (missing) · `hept/SEALED.md:17-24` (out of 1..23) · `LOG.md:501` · `HANDBACK-S2.md:64` ×2 · `Verdict-master.md:8` (missing) · `state-audit.md:107` (missing) |
| **Prior measurement** | 9 real drifts on 2026-09-11 (`research/ergonomics-deep.md:45`) — the class is **not growing and not shrinking** |
| **The correction that matters** | The 39-day audit's §3 "the gate cried wolf" framing was **withdrawn by the lead's own commit `0e97852`**: *"all 14 findings were TRUE positives … the self-test passes, zero false positives. The tool is sound; the records are not."* The 5 "declared-witness" refs are a **presentation** classification, not a fix. |
| **Receipt** | `research/citation-drift-audit.md:37` · `research/idea-001-anchor-checker.md:7-11` · `tools/citecheck.sh:10-13` |

---

### C-2 · Citation rot, *content* class (the line resolves, but says the wrong thing)

| | |
|---|---|
| **Count (ENUM)** | **≥5 instances**, of which **1 is proved and structurally invisible**. |
| **Proved instance** | `research/verdict-master.md:29` is row **A-07**; the claim needs **A-06** at `:28`. The `citecheck.sh` engine, run verbatim on a probe citing `verdict-master.md:29`, returns **0 drifts** — the file exists, line 29 is inside its 149 lines. |
| **Past instances** | The 2026-09-10 anchor repair found and fixed 4: `verdict-master :29→:28` (×2) · `:38→:46-47` · `:33-43→:7-15` · `RUN/tools/cite.sh:27-28→:26` (`research/idea-001-anchor-checker.md:9,11,13`) |
| **Rate** | 4 of 20 *point* citations drifted ±1–2 lines; every *span* citation survived (`research/citation-drift-audit.md:37`) |
| **Receipt** | `research/idea-001-anchor-checker.md:9,11,13` · `research/citation-drift-audit.md:14-16,37` · `research/anatomy-library.md:83-92` |

**Census reading:** the **highest-magnitude pain in the project**, and invisible to every
instrument on disk. It is also — see §4 — **card #1's own gap, not a new card's business.**

---

### C-3 · Hand-true counts rot (a number written by hand in a living document goes stale)

| Surface | Instances | Command |
|---|---|---|
| `RUN/STALE.md` — count-mismatch rows (S-03 pin count, S-07 file count, S-13 canon sources, S-14 CONTEXT lines, S-15 corpus counts, S-16 fence rows, S-18 charter lines, S-21 handoff lines, S-25 inventory rows) | **9 of 22 rows** | `git show f2e46d0:RUN/STALE.md \| grep -cE '^\| S-[0-9]+[a-z]? \|'` → **22** |
| `research/state-audit-2026-09-06.md` §أ-4 impurity table | **9 rows** (4 charter-status headers, 3 count contradictions, 1 false status, 1 instruction/scale conflict) | `sed -n '115,125p' research/state-audit-2026-09-06.md \| grep -cE '^\| [0-9]+ \|'` → **9** |
| `proposals/README.md` — "no proposals yet" against a 32-file box | 1 | `research/ergonomics-tower.md:50` |
| `CONTEXT.md` head — "38 provider keys" against `FOUNDATIONAL-BRIEF.md:17`'s 57 | 1 | `research/ergonomics-deep.md:96-97` |
| `INTEGRITY.md:58` — "## Pinned hashes (sha256) — 43 files" (hand-maintained) | 1 | `grep -cE '^[0-9a-f]{64}' INTEGRITY.md` → **43 — currently TRUE** |
| **Total** | **≥21 instances across 5 surfaces** | — |

**Census reading:** the class persists even where the *instance* is currently correct.
`INTEGRITY.md:58` says "43 files" and 43 is right today — a hand-written number that will
be wrong the next time a file is pinned. That is the M2 disease
(`research/ergonomics-tower.md:50`) in its permanent form: **a lie on a timer.**

---

### C-4 · Stale / contradictory status lines (two live documents disagree about one slot)

| | |
|---|---|
| **Count (ENUM)** | **≥34 instances.** 22 in `RUN/STALE.md` + 6 re-entries requested by pr-010 + 3 stale desk rows + 2 unresolvable desk pointers + 1 live stale plan pointer |
| **Command (the 22)** | `git show f2e46d0:RUN/STALE.md \| grep -cE '^\| S-[0-9]+[a-z]? \|'` → **22**; `… \| grep -oE '\| (STALE-HELD\|RE-ENTER-A\|ESCALATE-OWNER) \|' \| sort \| uniq -c` → **16 STALE-HELD · 2 RE-ENTER-A · 4 ESCALATE-OWNER** |
| **Command (the 6)** | `proposals/pr-010-stale-reentry.md:12` — "re-enters six stale status lines (S-01 ×4 files, DS.md:15, READ_WINDOW boot exception)" |
| **Command (the 3 desk rows)** | `grep -c 'RULED 2026-09-06' research/owner-ruling-session-2026-09-19.md` → **3** (P4/P5/P6 — "the desk had shown them as pending for 35 days", `OWNER-DESK.md:38-39`) |
| **Command (the 2 pointers)** | `grep -c 'FILE DOES NOT EXIST\|does not resolve' research/owner-ruling-session-2026-09-19.md` → **2** (`ruling-sequence.md` at the repo root; `OWNER-DESK.md:20` → "proposals/pr-024") |
| **Live today** | `sed -n '3p' RUN/NEXT.md` → *"Round 9 (R9 — P05 GENERATOR II — the machine) must open"* — while `ls RUN/receipts/*.json \| wc -l` → **15**, the last being `R014.json` ("status": "complete"). The pointer still opens a round that closed before the pointer's own tree. |
| **Also** | `ZERO-READINESS.md:14` box unchecked (via `research/state-audit-2026-09-06.md` row 8) |

---

### C-5 · Owner-wait — the pending stack decays unattended

| | |
|---|---|
| **Count (MEAS+ENUM)** | **≥50 open items: 32 unruled proposals (oldest 45d), 26 waiting ≥14d, 1 already past its own expiry (15d) and never filed, 4 violations with empty ruling fields, 10 of 15 ruling-sequence items open, 19 proposal headers with no parseable filed-date.** |
| **Command (the instrument)** | `bash /tmp/nh/tools/audit.sh` → `· PROPOSALS: 32 unruled · oldest pr-001-proposal-template.md (filed 2026-09-06, 45d) · 26 waiting ≥14d` · `· 19 header(s) carry no parseable filed-date — age UNKNOWN, not zero` · `· PAST OWN EXPIRY: pr-021-sanad-unification.md (limit 2026-10-06 · 15d past) — arc Omega rule: filed, not ignored` |
| **Command (violations)** | `git show f2e46d0:violations.md \| grep -cE '^- V-[0-9]+'` → **6**; all six Owner-ruling fields are empty-by-right |
| **Command (ruling sequence)** | `OWNER-DESK.md:20` — "10 of 15 still open (4·5·6·7·8·9·12·13·14·15)" |
| **Command (desk, healed by hand)** | `OWNER-DESK.md:35-45` — "2026-10-20 · desk healed (3 stale rows + 3 broken pointers + 3 missing rows)" — healed **by append, by hand, today** |
| **The cure is STAGED and UNRULED** | `proposals/pr-025-age-and-lanes.md` — header: *"status: **PENDING OWNER** — four parts (A–D), one word each"*; its Owner-ruling field is the empty-by-right template. Part A is the desk's age column. `grep -c 'Age' OWNER-DESK.md` → **1** (a header note — there is **no age column** in the desk). |
| **The law already says what must happen** | `research/arc-protocol.md:63-64` — a proposal unanswered in 2 Owner sessions auto-becomes "HELD — expired", **filed, not silently ignored**. `pr-021`'s expiry is **not filed**; the card only flags it. |
| **Receipt** | `OWNER-DESK.md:8-11` ("Ages belong here (R16 candidate, pr-025-A)") · `research/owner-ruling-session-2026-09-19.md:24-70` · `proposals/pr-025-age-and-lanes.md` |

**Census reading:** the only pain in this census that **costs the Owner money directly**
(their scarcest resource — `research/ergonomics-tower.md:52`, M4). The instrument exists
and prints the ages today; the *filing* does not exist and is done by hand. And the
sharpest fact: **the instrument that measures the backlog's age is itself stuck in the
same backlog** — `pr-025`, which would put ages on the desk, is one of the 32 unruled
proposals, filed yesterday, ruling field empty.

---

### C-6 · The instrument itself is unproven (a checker never run against a known lie)

| | |
|---|---|
| **Count (MEAS)** | **4 hand-built one-off checkers; 3 self-verification failures; 1 of them filed as a violation tonight.** |
| **Command (no known-positive for the health card)** | `grep -c 'self-test' tools/audit.sh` → **0**; `grep -c 'self-test' tools/citecheck.sh` → **2** |
| **Command (one-off checkers)** | `find . -name '*.sh' -not -path './.git/*'` → **4**: `tools/citecheck.sh` · `tools/audit.sh` · `RUN/tools/cite.sh` · `RUN/tools/count.sh` — four tools, four contracts, no shared harness |
| **Failure 1 (LIVE — captured by me, then filed by the project as V-006)** | At **2026-10-20 22:45** the working-tree `tools/audit.sh` printed `age_days_of_git_head: command not found` (×2) and then emitted **`· DORMANCY: none — the tree moved today`** — on a tree whose last commit was **29 days** old. **A false green light on the one line every agent reads at boot.** Repaired at 22:47. Filed on 2026-10-21 as **`V-006` — "A TRUTH-GENERATOR SHIPPED A FALSE STATEMENT"** (`violations.md`, entry V-006). |
| **Why no hash caught it (V-006's own words)** | *"tools/audit.sh is pin-exempt (INTEGRITY.md:109-114) — a generator's truth is protected by quotable output, not by a frozen hash, **so nothing but a reader could have caught it**."* |
| **Failure 2 (committed record)** | The first `citecheck` sweep reported **78 "drifts" of which 69 were the tool's own resolution gaps** — an honest correction on the record and the only reason the tool is trusted at all (`research/ergonomics-deep.md:46`). |
| **Failure 3 (corrected tonight — the records, not the tool)** | The 39-day audit's §3 said the gate cried wolf. **The lead's correction `0e97852` withdraws that**: all 14 findings were true positives; the defect was **filing discipline** — the M1 sweep ran *before* the text it policed existed, filed 2 of 13; M2 ran the sweep (reproduced 14/14/14) but left no LOG line. *"The tool is sound; the records are not."* |
| **Receipt** | `violations.md` V-006 · `research/ergonomics-tower.md:54` (M6) · `research/ergonomics-deep.md:210-212` |

---

### C-7 · Lanes: a convention nobody holds, and pulses that stopped

| | |
|---|---|
| **Count (MEAS)** | **0 of 7 lane state files carry the mandated `HOLDS:` line · 0 of 8 lane directories have a README/ONBOARDING · 4 of 4 pulse lanes stale 996–1006 h.** |
| **Command (the convention)** | `git grep -c '^HOLDS:' f2e46d0 -- '*.md'` → **0 lines in 0 files**. `LANES.md:10-11` mandates it for every lane, including `RUN/STATE.md`, the board's own first lane. The **register now prints the measurement on every run** (`LANES.md`: "**Measured compliance: 0 of 7 lanes** (2026-10-20, `grep -rn '^HOLDS:'` → 0 matches in 0 files) after 41+ days of the convention's life. The Owner may either enforce it on the lane-runners or **retire it** — it is surfaced, not silently kept as if it were held."). |
| **Command (the entry contracts)** | `git ls-tree --name-only f2e46d0 -- <dir>/ \| grep -ciE 'readme\|onboarding'` → **0 for all eight** (bore · hept · mill · well · phantom · protocols · RUN · research/harness-run) |
| **Command (the pulses)** | `bash /tmp/nh/tools/audit.sh` → `· RUN/STATE.md — last pulse 1006h ago · STALE` · `· bore/runtime/STATE.md — 1006h ago · STALE` · `· hept/runtime/STATE.md — 996h ago · STALE` · `· research/harness-run/STATE.md — 1006h ago · STALE` |
| **Treated since the papers were written** | `813a0fd` — "LANE REGISTER v2 LIVE (pr-025-B executed in the free lane): the status column is generated, so it cannot rot". The **semantic void** (M9) is now substantially closed: `LANES.md` maps all **8 subtrees**, each niche quoted from the lane's own file:line. |
| **Receipt** | `research/ergonomics-tower.md:51` (M3) · `research/ergonomics-deep.md:105-117` (F-2) and `:147-154` (F-5) |

**Census reading:** the cure landed; **the convention did not.** 0/7 compliance is now
*displayed* instead of assumed, which is better — but by the paper's own written killer
(*"if the line still appears on no live lane after two pulses, the convention itself goes
to the obituary registry"*, `research/ergonomics-deep.md:153-154`) **two pulses have
passed and the convention is now due to be retired, not enforced.** The remaining live
pain is narrower than it was: not "no map", but **a rule nobody holds, now measured and
still unheld**.

---

### C-8 · The record file is charged as the state file (boot tax)

| | |
|---|---|
| **Count (MEAS)** | **1 measured number, traced over 40 commits: 46,440 B → 104,697 B (2.25×).** |
| **Command** | `for c in $(git log --format=%h --reverse); do echo $c $(git show $c:CONTEXT.md \| wc -c) $(git show $c:AGENTS.md \| wc -c) $(git show $c:FOUNDATIONAL-BRIEF.md \| wc -c); done` |
| **Selected rows** | `45f7484` 2026-09-07 = **46,440 B** · `449aede` 2026-09-11 = 80,645 B · `25fd491` = 86,919 B · `b60ae35` 2026-09-21 = 88,979 B · `b8b5a2f` = 97,826 B · `813a0fd` = 99,479 B · `84c22d0` = 102,932 B · `f2e46d0` 2026-10-21 = **104,697 B** |
| **The falsifier FIRED** | `pr-024-A`'s pre-registered killer (*"if the first post-adoption boot does not measure a lower audit-side boot tax, the part is withdrawn by one line"*, `proposals/pr-024-ergonomics-deep-package.md:45`): pre-adoption 86,919 B → first post-adoption boot **87,716 B** → **the tax went up.** |
| **Against the target** | 104,697 B vs the "≤ ~11 KB" target (`research/ergonomics-deep.md:193`) → **9.5× over** |
| **Why** | The decision log is **98.26%** of `CONTEXT.md`; the head is 1.74%. `audit.sh` §7 charges whole files, so **every decision logged taxes every boot.** The log grew **+46,876 B** over the project's life. |
| **Receipt** | `research/ergonomics-deep.md:94-104` (F-1) · `research/ergonomics-39d-audit.md` §2 |

**Census reading:** the largest measured cost in the project, the only pain whose own
pre-registered falsifier has **already fired against its author**, and — measured over the
last 5 commits alone — it has grown **+15,718 B in 3 hours of work** (88,979 → 104,697).
I re-derived the table independently; it agrees with the lead's audit to the byte.

---

### C-9 · "Log-after is not compliance" is not mechanically decidable

| | |
|---|---|
| **Count** | **1 proved instance (1 of 12 payloads) + 1 unruled proposal.** |
| **Evidence** | `research/doc-trust-redteam/RESULTS.md:19` — payload **P-09 SLIPPED**; catch rate 11/12 = 91.7% (`:25`) |
| **The mechanism, verbatim** | *"The wall's enforcement is self-judged: nothing makes log-after-compliance mechanically distinguishable from compliance"* (`research/doc-trust-redteam/RESULTS.md:36-37`) |
| **Response on record** | `proposals/pr-014-r13-doc-trust.md` — unruled (among the 32) |
| **Receipt** | `research/doc-trust-redteam/RESULTS.md:29-37` · `research/adversarial-audit.md:226-229` |

**Census reading:** **1 instance is not a pattern** by the task's own rule. Listed because
the failure is *structural* (the class is named in the record), not because the count is
high. Note it is also the only class whose *mechanism* the record itself says is not
mechanically decidable — so it fails dimension (b) too.

---

### C-10 · An agent shipped an unverified or false output into the record

**This class was re-measured after the lead filed two new violations tonight, and the
census's earlier reading ("2 instances — not a pattern") is superseded by the evidence.**

| | |
|---|---|
| **Count (ENUM)** | **5 of the 6 entries in the violations ledger are this class.** (The 6th, V-005, is a boot-gate failure.) |
| **The five** | **V-001** (2026-09-06) fabricated a sha256 pin line without computing it — *"typing a plausible-looking value where only command output is lawful"* · **V-002** (2026-09-06) silently overwrote a 4-line record to an empty file, *"content not reconstructed from memory (nothing invented) — the original header text is unrecoverable in this record"* · **V-003** (2026-09-08) an unlogged post-pin change to a pinned file · **V-004** (2026-09-21) an unlogged edit of pinned `AGENTS.md`, which broke the pin and invalidated 38 line-number citations · **V-006** (2026-10-21) *"A TRUTH-GENERATOR SHIPPED A FALSE STATEMENT"* — the false `DORMANCY: none` line, above |
| **Command** | `git show f2e46d0:violations.md \| grep -cE '^- V-[0-9]+'` → **6**; the five class members are V-001, V-002, V-003, V-004, V-006 |
| **The structural fact (V-006's own words)** | *"a generator's truth is protected by quotable output, not by a frozen hash, **so nothing but a reader could have caught it**."* → **a hash cannot catch this class; only a known-positive can.** |
| **Receipt** | `violations.md` V-001, V-002, V-003, V-004, V-006 |

**Census reading:** 5 instances across 15 days, each one costing a forensics pass
(`git archive` re-extraction, `git log --follow`, sha re-computation). It **is** a
pattern. But the cure is a *checker on our own records* — card #1's angle — so it is
**ineligible as a second card** (§3.1), and it is listed here with the same weight as the
others.

---

### C-11 · ID / namespace collisions across lanes

| | |
|---|---|
| **Count** | **4 collision classes** (1 verified live today). |
| **Verified today** | `ls proposals/ \| grep 'pr-011'` → **`pr-011-regency.md`** and **`pr-011-smoke-call-prereg.md`** — two proposals, one id. `head -12 proposals/pr-011-regency.md \| grep -iE '^\- \*\*ID'` → `- **ID:** P-011 · **filed:** 2026-09-08` |
| **The 4 classes** | ① mill's reading rounds R1–R4 vs RUN's R0–R14 · ② `pr-011` twice · ③ `BRK` vs `PR` vs `PROPOSAL` vs `P-` prefixes · ④ the PR-FILING-INCIDENT in `LOG.md` |
| **The project's own prior judgment** | `research/ergonomics-deep.md:155-160` (F-6): *"a global ID registry is NOT built now (one adapter = hypothetical seam; two collisions in one lane is not yet two adapters' worth of pain)"* |

**Census reading:** 4 classes, but the project **already ruled** on this class and the
ruling still holds on the evidence: the collisions are cross-lane, not two-in-one-lane.
**Rejected** in §5 on the project's own recorded judgment, which this census declines to
overturn without new evidence.

---

### C-12 · The delivery gap — a design with no device (and a card that cannot be delivered)

**Class:** the project writes designs, methods and cards, but the step from *written
design* to *a thing an agent can run* has no machine. D-08 is the law for it
(`research/anatomy-reference.md:13`): a row without a device is `[PSY-HUMAN]` or
`[PSY-DESIGN]`.

| | |
|---|---|
| **Count (ENUM)** | **≥7 instances: 4 anatomy rows without a device + 2 card-level instances + 1 class-level claim.** |
| **Anatomy rows (MEAS)** | `git show f2e46d0:research/anatomy-reference.md \| sed -n '31,46p' \| grep -o '\[PSY-[A-Z]*\]' \| sort \| uniq -c` → **2 `[PSY-DESIGN]`** (الحدس · العاطفة كإشارة) + **2 `[PSY-HUMAN]`** (منحنى التعلم · إدارة الفرق) = **4 of 16 rows carry no device.** The other 12 are `[V]`-statused, `[D-10]`-synthesised, or deliberately untranslatable. |
| **Class claim (in the law itself)** | `research/anatomy-reference.md:13` (D-08) — *"72 ملف .md باردة في research/ منذ يونيو 2026"* (2026-09-09). Today: `git ls-tree -r --name-only f2e46d0 -- research/ \| grep -c '\.md$'` → **98** (top level: 90). The number in the law is itself a hand-count that has moved. |
| **Card-level instance 1 (PROVED)** | IDEA-001's named device `anchors.py` / `anchors.tsv` **does not exist as a file**: `git ls-tree -r --name-only f2e46d0 \| grep -E 'anchors\.\|acc\.py' \| wc -l` → **0**. The *name* is now discussed in 6 files (the card, the reconciliation, the board, the index, CONTEXT, LOG) — but a name is not a device. A **different** device (`tools/citecheck.sh`) was built and **adopted as doctrine** (pr-024-C) without IDEA-001's claims ever being measured against it. |
| **Card-level instance 2** | IDEA-002's compiler does not exist on disk, by design (P6). |
| **Reference anatomy present, landing place unfed** | `research/foundation-deep.md:97-106` (three importable anatomies and their landing places) · the fixed form exists at `~/.dsh/.agent-presets/*/preset.yml` + `agent.md` (outside the tree by R12) |
| **The law names the gap** | `research/anatomy-card-form.md:27` — a card with no device is `COLD` and counts itself a design, not a transfer |

**Census reading:** the only pain class in the project whose failure has **already been
observed and paid for inside the library itself** — the library's first card named a
device that was never built, and was thereby silently replaced by a different one whose
results were never measured against the card. **An instance, not a hypothesis.**

> **A discrepancy this census must record.** The lead's draft
> `research/idea-002-card-preset-compiler.md:26-29` states the anatomy translation table
> "marks **five** rows `[PSY-DESIGN]`". Re-measured on the committed tree: the table marks
> **two** rows `[PSY-DESIGN]` and **two** `[PSY-HUMAN]` — **four rows without a device**,
> not five. The "five" is **not reproducible** from `HEAD`. If it was counted over a
> wider span (rows whose device is *named but unbuilt*, rather than rows *tagged*
> `[PSY-DESIGN]`), the wording should say so; as written, the receipt overstates its own
> evidence by one row. Recorded, not fixed — the draft is not mine, and the census's job
> is the count, not the edit.

---

## 3) The four mechanical dimensions, per candidate

| # | Pain | (a) Documented with a receipt? | (b) A tool / mechanically expressible evaluator TODAY? | (c) A money path (arenas 1..6)? | (d) A DIFFERENT ANGLE from card #1? |
|---|---|---|---|---|---|
| C-1 | Citation rot (resolution) | **YES** — `citation-drift-audit.md:37`; `idea-001-anchor-checker.md:7-11` | **YES** — `tools/citecheck.sh` (+`--self-test` PASS 2/2) | **YES** — arena 1 (D-13:9) | **NO** — this *is* card #1 |
| C-2 | Citation rot (content) | **YES** — `idea-001-anchor-checker.md:9-13`; `anatomy-library.md:83-92` | **NO** — the only instrument is structurally blind (0 findings on the proved case) | partial — arena 1, as a quality lever | **NO** — card #1's own gap |
| C-3 | Hand-true counts rot | **YES** — 21 instances over 5 surfaces | **YES** — `audit.sh` §7/§9a + `sha256sum -c` | partial — a cost lever, not a product | **NO** — a checker on our own records |
| C-4 | Stale/contradictory status lines | **YES** — 22 rows + 12 more | **YES** — re-derive both sides of a row with `sed -n` | weak — an internal cost lever | **NO** — a checker on our own records |
| **C-5** | **Owner-wait / pending-stack decay** | **YES** — `OWNER-DESK.md:13-29`; `audit.sh` §9a/§9b output | **YES** — `bash tools/audit.sh` already computes ages + expiry; "fixed" = a ruling line exists, or an expiry is filed | **YES (direct, if shipped as a product)** — arena 6, whose D-13 row names "playbooks، **شجرة قرارات**" (D-13:14) — a textual fit for a decision desk | **YES** — organ *decision-routing* vs card #1's *citation-checking*; arena 6 vs arena 1 |
| C-6 | Instrument unproven | **YES** — 4 tools, 3 failures, 1 filed as V-006 | **YES** — the discipline exists for one tool (`citecheck.sh --self-test`); extending it is a mechanical copy | **YES** — arena 1: a "known-positive harness for checkers" is publishable | **NO** — a checker on our own records |
| C-7 | Lanes: convention unheld | **YES** — 0/7 `HOLDS:` lines, 0/8 READMEs, 4/4 stale | **YES** — `tail -1` per state file; `find -maxdepth 1 -iname 'README*'` | weak — internal | borderline — organ *coordination* ≠ *checking*, but same arena, same corpus |
| **C-8** | **Boot tax** | **YES** — 40-commit table; pr-024-A's killer fired | **YES** — `git show <sha>:<path> \| wc -c` + `audit.sh` §7 | **YES** — arena 1 (a publishable context-budget tool) or arena 6; a dollar value per boot | **YES** — organ *context-economics* ≠ *citation-checking* |
| C-9 | Log-after ≠ compliance | **YES** — `RESULTS.md:19,29-37` | **partial** — the record says the class is *not* mechanically decidable | weak — doctrine work | **NO** |
| C-10 | False/unverified output shipped into the record | **YES** — 5 of 6 ledger entries | **YES** — a known-positive pair per generator (only 1 of 4 tools has one) | weak — an internal lever | **NO** |
| C-11 | ID / namespace collisions | **YES** — 4 classes; `pr-011` verified today | **YES** — a `grep`/`find` for duplicate ids is a one-liner | weak — an internal utility | **YES** — organ *naming* ≠ *checking* |
| **C-12** | **Delivery gap (design without a device)** | **YES** — 4 anatomy rows + `anatomy-card-form.md:27` + D-08 + 1 proved card-level instance | **YES** — the card form's own field set + a lint that refuses a malformed card; the known-positive/known-negative pair is a mechanical fixture | **YES (direct)** — arena 5, "الملعب الأقرب لنقل التشريح مباشرة" (D-13:13) | **YES** — organ *authoring/delivery* vs *checking*; arena 5 vs arena 1 |

### 3.1 The filter that decides eligibility

The F7 floor (`research/anatomy-card-form.md:53-54`) is a **constraint, not a preference**:
a generation round must yield ≥2 cards from **different organs/domains OR different
arenas**. Card #1's organ is *checking our own citations*; its arena is 1. So dimension
(d) is applied as a **pass/fail filter**, and (a), (b), (c) do the ranking among the
survivors.

- **Eligible as a SECOND card (d passes):** **C-12 · C-5 · C-8 · C-11**
- **Ineligible — the cure would be card #1's own angle:** C-1, C-2, C-3, C-4, C-6, C-7*, C-9, C-10
  (*C-7 is borderline: a different organ, but the same arena and the same corpus. Treated
  as ineligible, and says so.)

**This is the census's single most important result:** the project is full of
quality-of-record pains, and **almost every cure for them is a checker on arena 1 — the
very angle card #1 already occupies.** The F7 floor is therefore not a formality here: it
removes the eight largest-pain candidates and leaves four.

---

## 4) Ranking

Ranking criteria, in order: **(d) as a filter** → **(a)** documented with a receipt →
**(b)** a mechanically expressible evaluator that exists today → **(c)** a money path →
**magnitude** (measured instance count / measured cost).

| Rank | Pain | (a) | (b) | (c) | Magnitude | Verdict |
|---|---|---|---|---|---|---|
| **1** | **C-12 · delivery gap (design without a device)** | yes | yes — a lint/refuse device + a known-positive/negative fixture | **yes — arena 5, direct** | ≥7 instances; 1 proved card-level | **TOP-2** |
| **2** | **C-5 · Owner-wait / pending-stack decay** | yes | **yes — `audit.sh` already computes it** | yes — arena 6 ("شجرة قرارات") | ≥50 open items; oldest 45d; 15d past expiry | **TOP-2** |
| **3** | **C-8 · boot tax** | yes (killer fired) | yes | yes — arena 1/6 | 2.25× growth; 9.5× over target; +15,718 B in 3 h | strong 3rd; thin moat (§4.3) |
| 4 | C-2 · citation rot (content) | yes | **no** — blind to every instrument | partial | **highest in the project** | **INELIGIBLE — card #1's own re-spec** |
| 5 | C-3 · hand-true counts rot | yes (21) | yes | partial | 21 instances | INELIGIBLE (d) |
| 6 | C-4 · stale/contradictory status lines | yes (34) | yes | weak | 34 instances | INELIGIBLE (d) |
| 7 | C-6 · instrument unproven | yes (4 tools / 3 failures) | yes | yes (arena 1) | 3 failures + V-006 | INELIGIBLE (d) |
| 8 | C-10 · false output shipped into the record | yes (5 of 6) | yes | weak | **5 instances — a pattern** | INELIGIBLE (d) |
| 9 | C-7 · lanes: convention unheld | yes | yes | weak | 0/7 · 0/8 · 4/4 stale | INELIGIBLE (d) |
| 10 | C-9 · log-after ≠ compliance | yes | partial | weak | 1 instance | INELIGIBLE (d) + not a pattern |
| 11 | C-11 · ID / namespace collisions | yes (4) | yes | weak | 4 classes | eligible, but weak on (c); the project's own ruling stands |
| 12 | C-13 · plan/pointer drift | yes | yes | weak | 2 instances (one already fixed by pr-024-D) | rejected |

### 4.1 TOP-2, with the single strongest argument and the killer

---

**TOP-2 #1 — C-12 · the delivery gap: a card that cannot become a runnable agent**
*Organ: authoring/delivery · Arena: 5 (agent templates/plugins) · D-13:13*

**The single strongest argument:** the delivery gap is the **only pain in this census
whose cost has already been paid, inside this library, in public.** Card #1 named a
device (`anchors.py` / `anchors.tsv`) that does not exist —
`git ls-tree -r --name-only f2e46d0 | grep -E 'anchors\.|acc\.py' | wc -l` → **0** — and
a *different* device (`tools/citecheck.sh`) was built and **adopted as doctrine**
(pr-024-C) without IDEA-001's claims ever being measured against it. The library's first
card is therefore `ARMED` on a frozen evaluator whose instrument was never built. **This
is not a forecast; it is a receipt** — and it is the same receipt the project's own
board records (`research/anatomy-library.md:66-74`; `research/idea-001-reconciliation.md`).

**Why it passes the F7 floor:** a different organ (authoring, not checking) **and** a
different arena (5, not 1) — the widest margin available on the diversification test.
D-13:13 calls arena 5 *"الملعب الأقرب لنقل التشريح مباشرة"* (the arena closest to
transferring the anatomy directly); D-13:18 says it follows arena 1 immediately.

**Its killer (what would refute the choice):**
1. **The pain is an absence, and absences are cheap to over-count.** The evidence is a
   0-hit sweep. If the sweep is wrong — a compiler exists outside the tree, or the
   library's premise is that *delivery is a human step* and should stay one — the card
   is a **phantom**, and the sweep proves nothing.
2. **The money path is an estimate.** `research/anatomy-bridge-arena-candidates.md:5`
   says the whole table is *"تقدير غير مدقق"* (unaudited estimate) and `:23` says the
   first execution on any arena must begin with a pricing/terms page from primary
   sources. Arena 5's revenue line is **not** a measured number.
3. **No market scan was run.** The draft declares it `UNTESTED`
   (`research/idea-002-card-preset-compiler.md:41-45`) — the honest label, and it means
   the differentiation claim is unmeasured.
4. **Its own kill-line may fire immediately:** if manual card→preset authoring is
   *faster* than the compiler on 3 rounds, the device is complexity without gain.

---

**TOP-2 #2 — C-5 · the pending stack decays unattended**
*Organ: decision-routing · Arena: 6 (structured content — "playbooks، شجرة قرارات") · D-13:14*

**The single strongest argument:** this is the only pain in the census where **the
instrument already exists, the measurement is already produced on demand, the input is
already sitting un-filed in the tree — and the cure is itself stuck in the same
backlog.** Measured today: **32 unruled proposals, the oldest 45 days, 26 waiting ≥14
days, 19 headers with no parseable filed-date, 1 proposal 15 days past its own hard
expiry with the expiry never filed, 6 violations whose ruling fields have never been
filled, and 10 of 15 ruling-sequence items still open.** The arc law already says what
must happen (*"HELD — expired … filed, not silently ignored"*,
`research/arc-protocol.md:63-64`); the filing is done by hand, one row at a time, at the
Owner's expense — as it was on 2026-10-20, when three stale desk rows and three broken
pointers were healed **by append, by hand** (`OWNER-DESK.md:35-45`). The cure already
exists on paper: `proposals/pr-025-age-and-lanes.md` (Part A = the desk's age column) is
**PENDING OWNER** with an empty ruling field, filed yesterday. **The instrument that
measures the backlog's age is one of the 32 unruled proposals it is measuring.** That is
a device-shaped gap, and it is the only gap in this census where the output is consumed
by the scarcest resource in the system.

**Why it passes the F7 floor:** a different organ (decision-routing, not
citation-checking) **and** a different arena (6, not 1) — if it ships as the decision
desk / ruling sequence as a product. D-13:14 names "شجرة قرارات" (decision trees)
verbatim, so the arena fit is textual, not invented. **This is the softest edge in the
whole ranking:** if the device is kept strictly internal, it collapses back into card
#1's organ (a checker on our own records) and becomes ineligible. That is a decision the
Owner may want to make explicitly rather than by default.

**Its killer (what would refute the choice):**
1. **The money path is the weakest of the top-2.** Unlike arena 5, arena 6 is
   *"small"* and *"crowded"* (D-13:14) with a *"small balance gate"* — the most likely of
   the six to earn nothing, and the least likely to be worth an engineer's time. There is
   no measured price for a decision-desk product.
2. **The device may be unnecessary.** `audit.sh` §9a/§9b already computes the ages and
   the expiry flag. If the only missing step is "a human files the expiry", a card is
   the wrong-shaped answer — and this project has already shown (C-6) that it can write
   a one-off script for exactly that.
3. **The pain may be an Owner-policy question, not a mechanical one.** Whether an
   expired proposal becomes "HELD" automatically, or needs a line, is R8/Owner territory.
   A device can only report it, not settle it.
4. **It would be the second card whose instrument does not exist** — and the census
   should not pretend that two paper cards is a library.

---

### 4.2 The tie-break rule, stated and applied

The task brief asks for the rule when two candidates tie. **The rule used here:**

> **Rule (applied in this order):** (1) dimension (d) is a **filter** (the F7 floor);
> (2) among the survivors, **the candidate with the higher measured instance count
> wins**; (3) on a tie in count, **the candidate whose evaluator is mechanically
> expressible TODAY wins** (a device decidable by a command that exists on disk beats
> one that needs a new instrument); (4) on a tie in that, **the one with the direct
> arena fit in D-13's own words wins**; (5) remaining ties are **declared** ties, not
> broken.

**Applied:**
- C-12 (≥7 instances) · C-5 (≥50 open items) · C-8 (1 measured number) — the counts are
  **not commensurable** (a count of instances and a count of open backlog items are
  different units), so **rule (2) cannot separate them.** The tie breaks at rule (3):
  **C-5's evaluator exists today** (`bash tools/audit.sh` already prints the ages and
  the expiry); C-12's evaluator must be built (a lint plus a known-negative fixture);
  C-8's evaluator also exists (`audit.sh` §7 + `git show | wc -c`).
  → **Rule (3) alone would put C-5 first.** It is ranked second anyway, because rule (4)
  breaks the remaining tie in C-12's favour: D-13:13 names arena 5 as *"الملعب الأقرب
  لنقل التشريح مباشرة"*, and C-12 is the only candidate whose pain has a **proved
  instance inside the library itself**. **This is a declared tie broken by rules (3)→(4);
  the Owner may reverse it with one line.**
- **C-8 is the declared runner-up** and takes the place of either, because its falsifier
  has already fired and its numbers are the largest in the project. Its killer is recorded
  here so the choice is not made on taste: **the fix is a three-line file split** — a
  buyer can do it in a minute, so the *device* has no moat and arena 1's "a small tool
  with a real pain" (D-13:9) may not be reachable as a product. Its value is as an
  **internal lever**, not as a card.
- **A declared tie not broken:** C-9 and C-13 are ranked equal-last on count grounds and
  are ineligible on (d) regardless.

### 4.3 Where this census agrees with the lead's placeholder, and where it does not

| | lead's placeholder | this census | note |
|---|---|---|---|
| 2nd card | IDEA-002 / arena 5 / authoring | **same** | reached independently, on a different basis (instance counts + the F7 filter, not file-mentions) |
| 2nd *pick* | IDEA-003 draft (content-deriver) — *"a third island"*, same organ as card #1 | **C-5** (a different organ *and* a different arena, and not on the board today) | the lead's own file says a card that "must not occupy a born slot" is its #2 — this census proposes a pick that *can* be born |
| top-count pain | "unlogged change / violation discipline, 65 files — the dominant recurring pain" | the class is real — **5 of 6 ledger entries** — but 65/89/88 **files** is a vocabulary count of the word "violation", not a count of the class | §2 C-10 |
| boot-tax card | rejected (Owner-level decision, not a card) | **ranked 3rd and eligible**, with a recorded killer (thin moat) | the lead's reason is sound — it is a *shape* decision — but that is a *ranking* position, not a rule-based exclusion |
| expiry card | rejected (the instrument exists; what remains is an Owner ruling on pr-021) | **ranked 2nd**: the instrument exists for the *measurement*, and the *filing* does not; 32 unruled proposals, not one | the lead's objection applies to pr-021 alone; the class is 32 wide |

---

## 5) REJECTED — the anti-taste record (every candidate considered and refused)

| Candidate | Rejected because | Evidence |
|---|---|---|
| **C-1 · citation rot (resolution)** | **It is card #1.** A second card on the same organ + arena violates the F7 floor. It stays card #1's business. | `research/idea-001-anchor-checker.md`; `anatomy-card-form.md:53-54` |
| **C-2 · citation rot (content)** | **The highest-magnitude pain in the project — and it is card #1's own unfinished business**, not a new card's business. IDEA-001's H1/H2 *are* byte-content derivation; its instrument was never built. The correct response is a **re-spec of card #1** (split into a resolution card + a content card) — task 2's line of work — **not** a second card. | `research/idea-001-anchor-checker.md:31,43-44`; `research/anatomy-library.md:66-74`; `git ls-tree -r --name-only f2e46d0 \| grep -E 'anchors\.' \| wc -l` → 0 |
| **C-3 · hand-true counts rot** | Highest raw instance count among the ineligible set (21) and a clean evaluator exists — but the cure is *a checker on our own records on arena 1*: card #1's exact angle. Rejected on (d), not on merit. | `research/ergonomics-tower.md:50` (M2) |
| **C-4 · stale status lines** | 34 instances, mechanically expressible — same reason as C-3: a checker on our own records. | `RUN/STALE.md` (22 rows) |
| **C-6 · instrument unproven** | Genuinely strong (4 tools, 3 self-verification failures, one now filed as **V-006**) with a clean arena-1 home — but it is *a checker on our own records*, i.e. card #1's organ. **Note for the lead:** its instrument (`citecheck.sh --self-test`, the known-positive pattern) is the **method** a second card should reuse; it is a method to borrow, not a card to build. | `violations.md` V-006; `tools/citecheck.sh:90-107`; `grep -c 'self-test' tools/audit.sh` → 0 |
| **C-7 · lanes: convention unheld** | 0/7 `HOLDS:` compliance and 0/8 entry contracts are real and verified — but the cure is internal coordination tooling on arena 1, against the same corpus card #1 works on. Borderline (d); treated as ineligible, and says so. **Note for the lead:** the *map* half is now cured (`813a0fd`); the *convention* half is due for the obituary the paper's own killer promised. | `git grep -c '^HOLDS:' f2e46d0 -- '*.md'` → 0; `LANES.md` (register v2 live) |
| **C-9 · log-after ≠ compliance** | **1 instance is not a pattern** by the task's own rule. The class is real and structural, but the record itself says the mechanism is *not mechanically decidable*, so dimension (b) fails too. | `research/doc-trust-redteam/RESULTS.md:19,36-37` |
| **C-10 · false/unverified output shipped into the record** | **5 instances — a genuine pattern**, and the sharpest pain in the project after C-2. Rejected **on (d) only**: the cure is a checker on our own records. **Note for the lead:** V-006's own words — *"a generator's truth is protected by quotable output, not by a frozen hash, so nothing but a reader could have caught it"* — mean a **known-positive harness for the four generators** is the mechanised form of this pain. Rejected as a *card*; recommended as a **method the second card inherits**. | `violations.md` V-001, V-002, V-003, V-004, V-006 |
| **C-11 · ID / namespace collisions** | 4 classes, and `pr-011` is verified duplicated today — but the project **already ruled** on this class, and the ruling still holds on the evidence: *"a global ID registry is NOT built now (one adapter = hypothetical seam; two collisions in one lane is not yet two adapters' worth of pain)"*. The collisions are cross-lane, not two-in-one-lane. This census declines to overturn a recorded judgment without new evidence. | `research/ergonomics-deep.md:155-160`; `ls proposals/ \| grep pr-011` → 2 files |
| **C-13 · plan / pointer drift** | 2 instances, and **one is already fixed** — the runbook's pre-flight box 1 is now `[x]` with its source (verified today: `grep -n 'Owner batch signature' ZERO-DAY-RUNBOOK.md` → line **7**: `1. [x] Owner batch signature on charters/ch-001..004 — DONE P2 2026-09-06 (RATIFICATION-BATCH-001.md:15 · CONTEXT 2026-09-06 "CHARTER BATCH SIGNED")`). The surviving instance (`RUN/NEXT.md:3`) is one stale line. Not a card. | `ZERO-DAY-RUNBOOK.md:7`; `RUN/NEXT.md:3` |
| **C-8 · boot tax** | The strongest candidate *not* chosen; runner-up, blocked only by a thin moat on a three-line fix. | §4.2 |

**One rejection the census wants on the record for a different reason:** the census was
tempted to recommend a **"known-positive harness for all generators"** card (C-6 + C-10) —
it is the most elegant idea here and the evidence for it is the sharpest (a live false
`DORMANCY` verdict captured at 22:45 tonight, now filed as V-006). It is rejected **on
(d) only**: internal quality-of-record tooling on arena 1. It is the strongest *method* in
this census and the weakest *card*.

---

## 6) Uncertainty, honestly stated

**Verified by me in this session, with the command shown:** every count in §2; the
boot-tax table over all 40 commits; the `citecheck` sweep at the anchor
(14 findings, all true positives, 9 live + 5 declared-witness); `citecheck.sh --self-test`
→ PASS; the pin check → **43 OK / 0 FAILED**; the `HOLDS:` count (0 tree-wide); the
`anchors.py` **file** sweep (0); the `[PSY-DESIGN]` tally (**2**, not 5); the `pr-011`
duplication; the live `RUN/NEXT.md:3` staleness; the live `audit.sh` output including the
32-unruled / 26-≥14d / 1-expired lines; the 22 `RUN/STALE.md` rows and their
dispositions; the 9 `state-audit` impurity rows; the 6 violations; the 8-lane README
survey; the live `DORMANCY` false verdict and its filing as V-006.

**UNVERIFIED (marked as such, not asserted):**
- **The 39-day delta, the lane register, the card board and the IDEA-002 draft** are the
  lead's artifacts (now committed at `b8b5a2f`, `813a0fd`, `84c22d0`, `f2e46d0`). I
  re-derived the boot-tax table independently — it agrees to the byte — but the *other*
  claims in those papers I have **not** independently re-derived except where §2 says I
  did.
- **The 2026-09-10 "4 dead anchors"** are counted from the card's own after-the-verdict
  note (`research/idea-001-anchor-checker.md:13`), i.e. from the claimant's own record —
  **not** re-derived by me. **UNVERIFIED as an instance count.**
- **"6 different lane state schemas"** is the lead's paper-reported number
  (`research/ergonomics-deep.md:43`); I did not re-derive the schema inventory.
  **UNVERIFIED.**
- **The arena price/terms for every arena are unverified** — D-13's own table says so
  (*"تقدير غير مدقيق"*, `:5`). Every money-path judgement in §3 is a judgement about
  *fit*, never about *revenue*.
- **The 72-cold-files claim** in D-08 (`research/anatomy-reference.md:13`) is dated
  2026-09-09; the live `research/` markdown count is 96 (recursive) / 88 (top level) at
  the anchor. I report the number's movement; I do not re-derive its meaning.
- **`git grep` counts are line counts, not instance counts.** A line can carry two
  instances. Every such count is marked MEAS with its exact command printed, so the
  number is reproducible even if my reading of it as "instances" is contested.
- **The false-`DORMANCY` receipt is a transcript, not a re-runnable command.** The
  pre-repair `tools/audit.sh` blob was never committed, so it is not recoverable from
  git. The *class* is independently evidenced by the committed `citecheck` v1 episode
  (78 reported / 69 self-inflicted) and by V-006's own filing.
- **The lead's placeholder's file-mention counts move with the tree** (65 → 89 in
  ~30 min; 88 HEAD-anchored). Any number of that kind must be re-derived at a named
  sha — which is why this census quotes none of them as facts.

**Tree liveness, stated plainly:** the committed tree was quiet for **29 days**
(`b60ae35`, 2026-09-21 07:54:36 +0300 → `git log --since='2026-09-21 08:00' --oneline |
wc -l` → 0) and then moved **four times during this census** (2026-10-21 01:39 → 02:11).
The anchor used throughout is **`f2e46d02db745ca1bf5be14d26ef8fc2fa52fe87`**
(2026-10-21 02:11:28 +0300). Every HEAD-anchored count above reproduces at that sha
forever.

### 6.1 The exact `date` output at the census's close

```
$ date
Wed Oct 21 02:19:47 AM EEST 2026

$ git rev-parse HEAD
f2e46d02db745ca1bf5be14d26ef8fc2fa52fe87

$ git log -1 --format='%ci'
2026-10-21 02:11:28 +0300
```

*(the literal output is reproduced in §0.1; the census was closed at
2026-10-21 02:19:47 +0300, EEST — Africa/Cairo — on the working tree
`/home/fares/Projects/notrick`, live git HEAD at that moment
`f2e46d02db745ca1bf5be14d26ef8fc2fa52fe87`.)*

---

## 7) FINAL RECOMMENDATION

**The second card should be C-12 — the delivery gap: an anatomy card → agent preset
compiler (arena 5, organ: authoring).** It passes the F7 filter with the widest margin
available (different organ *and* different arena), it is the only candidate whose pain
has a **proved instance inside this library** (card #1's named device does not exist as a
file and was silently replaced by a different one), and its evaluator is a mechanical
fixture — a lint that refuses a malformed card — freezable before any code is written.

**The runner-up is C-5 — the pending-stack decay device (arena 6, organ:
decision-routing).** Its evaluator already exists (`bash tools/audit.sh` prints the ages
and the expiry today), its input is already sitting un-filed in the tree (32 unruled
proposals, oldest 45d, one 15d past its own expiry), its cure is already staged and
unruled (`pr-025`, pending the Owner), and it is the only candidate whose output the
Owner — the scarcest resource in the system — actually consumes.

**Both are recommendations, not verdicts.** The Owner's one line decides; the board may
swap #2 for **C-8** (boot tax) if the arena-6 market is judged too thin — C-8's number is
the largest in the project (2.25× growth, 9.5× over its own target, its pre-registered
falsifier already fired, +15,718 B in the last three hours) and it is the strongest
candidate *not* chosen.

**And the negative result, which is the more important one:** the largest pain in this
project — content rot, the class where a reference resolves to the wrong line — is
**card #1's own unfinished business**; and **8 of the 12 pains in this census are cured
by exactly the angle card #1 already occupies.** The library's second card cannot be
picked from the biggest pains; it can only be picked from the four that survive the
diversification floor. That constraint, not preference, is what made this a census.

### REJECTED — the complete list, one line each

1. **C-1** citation rot (resolution) — *is* card #1; a second card on it breaks the F7 floor.
2. **C-2** citation rot (content) — highest magnitude in the project, but it is **card #1's re-spec**, not a new card.
3. **C-3** hand-true counts rot — 21 instances, right cure, **wrong angle** (a checker on our own records).
4. **C-4** stale/contradictory status lines — 34 instances, right cure, **wrong angle**.
5. **C-6** instrument unproven — the sharpest idea here and a clean arena-1 home, but **wrong angle**; keep it as a *method*, not a card.
6. **C-10** false output shipped into the record — 5 of 6 ledger entries, a real pattern, but **wrong angle**; keep it as a *method* (a known-positive harness for the 4 generators), not a card.
7. **C-7** lanes: convention unheld — 0/7 `HOLDS:` and 0/8 READMEs are real, but **wrong angle** (internal coordination on the same corpus); the map half is now cured, the convention half is due for the obituary its own killer promised.
8. **C-9** log-after ≠ compliance — **1 instance is not a pattern**, and the record itself says the class is not mechanically decidable.
9. **C-11** ID / namespace collisions — eligible on angle, but the project **already ruled** "a global ID registry is NOT built now", and the evidence still supports that ruling.
10. **C-13** plan / pointer drift — 2 instances, **one already fixed** by pr-024-D (`ZERO-DAY-RUNBOOK.md:7`); the survivor is one stale line (`RUN/NEXT.md:3`).
11. **C-8** boot tax — the strongest candidate *not* chosen; runner-up, blocked only by a thin moat on a three-line fix.

---

*English artifact (R15). Every count carries its command. Where a number is a claim
rather than a measurement, it says so. No Owner-by-right field was filled, no doctrine
file was written, no code was stood up, no fuel was burned, the version was not moved.*
