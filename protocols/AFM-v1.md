# AFM v1 — Arc-Fed MIC Methodology
> Methodology: **Arc-Fed MIC (AFM)** — a seed MIC activates ONLY when an ARC-compliant event enters its slot. Each activation answers ARC Alpha-7 Q1–Q7 (per `~/Projects/notrick/research/arc-protocol.md` §19–28; T1 PROPOSAL-T1-HEIR-CLAUSE.md §2, §5) and declares a HEIR per the T1 clause (`~/Projects/notrick/proposals/PROPOSAL-T1-HEIR-CLAUSE.md` §2, §3, §4). If MIGRATED → Prime (ch-001-prime.md); if RETIRED → closing record in `~/Projects/notrick/violations.md` (T1 closing format: `CLOSE — V-{NN} · {date} · {verdict} · {lesson} · {heir}`; `PROPOSAL-T1-HEIR-CLAUSE.md` §2, §3).
> Status: PROTOCOL — proposed-in-file, T4 of NOTRICK series v2 (after T1 HEIR clause, T2 CWVP, T3 ADHA, verified by `~/Projects/notrick/protocols/AFM-DESIGN-NOTES.md`).
> File: ~/Projects/notrick/protocols/AFM-v1.md
> Methodology name (mandatory): **Arc-Fed MIC**.

---

## 1. What this methodology does (unique contribution)
Per `AFM-DESIGN-NOTES.md` (§2): each of 4 verified seed MIC files (`~/Projects/notrick/mics/mic-07-budget-counter.md`, `mic-11-id-formatter.md`, `mic-23-gate-runner.md`, `mic-31-axis-tagger.md` — all verified read, 21 lines each; no descriptions invented) activates ONLY when an ARC event of its defined type enters the MIC's slot. No initiative, no chat, no judgment — the MIC fires, acts (echo/format/re-run/tag per card), or refuses (per card).

Activation is NOT automatic: it requires the ARC event to cross the slot boundary (budget event / doc-without-ID / gate claim / 3 same-axis tags per `mics/` trigger lines). Once triggered, the MIC answers Alpha-7 Q1–Q7 (the 7 questions of `arc-protocol.md` §19: HOLE / CLAIM / BUDGET / OBITUARY / MEASURER / SLOT / HEIR — same format as T1 §5 and T3 ADHA-v1.md §6) so birth completes with an obituary (retirement trigger + heir named at birth, per `PROPOSAL-T1-HEIR-CLAUSE.md` §2, §3, §4; `arc-protocol.md` §6–7). The HEIR clause is mandatory: a MIC that activates without declaring an heir is incomplete (T1 §3 — charter v2 insertion applies per-entity here).

---

## 2. The 4 seed MICs — activation conditions (verified from disk, not invented)

| MIC | File (verified) | Trigger (verbatim from card, line 5) | ARC event that enters slot |
|---|---|---|---|
| MIC-07 budget-counter | `~/Projects/notrick/mics/mic-07-budget-counter.md` (21l, id=MIC-07) | "a budget is written in a DS/CH (tokens · time · attempts)" (l.5) | Budget event (token/time/attempt count written to a DS/CH record) → enters `mics/mic-07` slot |
| MIC-11 id-formatter | `~/Projects/notrick/mics/mic-11-id-formatter.md` (21l, id=MIC-11) | "a document enters the system without a valid ID (CH/RJ/DS/MIC-{NNN})" (l.5) | Document without valid ID enters record index → enters `mics/mic-11` slot |
| MIC-23 gate-runner | `~/Projects/notrick/mics/mic-23-gate-runner.md` (21l, id=MIC-23) | "a gate verdict is claimed anywhere (\"passed\", \"verified\", \"broke through\")" (l.5) | Gate verdict claim in any claim / result / proposal → enters `mics/mic-23` slot |
| MIC-31 axis-tagger | `~/Projects/notrick/mics/mic-31-axis-tagger.md` (21l, id=MIC-11) | "an attempt is logged in a result record" (l.5) | Attempt logged (axis-tag required to name dimension); 3 same-axis tags on same axis → migration signal (card l.17: "3 = Prime migration signal, R3") → enters `mics/mic-31` slot; on 3rd same-axis tag → MIGRATE (see §3.4) |

Seed descriptions above are copied/verbatim from the verified files — not invented (verified: `read` of all 4; `grep -n "Trigger (exact):"` confirms l.5 on each).

---

## 3. Activation chain — the 4 seed MICs (each: activation event + file reference + Q1–Q7 + own falsifier + HEIR)

### 3.1 MIC-07 budget-counter — budget event → MIC-07
- **Activation event (ARC-compliant):** a budget line is written in a DS/CH (tokens/time/attempts) — event enters `mics/mic-07-budget-counter.md` slot (trigger l.5 verified).
- **File references (verification chain, exact paths):** event document (DS/CH result file under workspace) → `~/Projects/notrick/mics/mic-07-budget-counter.md` (trigger, l.5; act, l.7; refusal, l.8; K-line format, l.17) → `~/Projects/notrick/charters/ch-001-prime.md` (Prime charter, wall-break / budget reference, retirement trigger l.25) if MIGRATED; else `~/Projects/notrick/violations.md` closing entry if RETIRED.
- **Alpha-7 Q1–Q7 (answered for this MIC activation, same format as T1 §5 / T3 ADHA-v1.md §6 / `arc-protocol.md` §19):**
  1. HOLE (Gause): unfilled burrow = budget-counter has no mechanical budget-echo mechanism; only Phase A (manual, card note l.20) — the gap is the missing pure-code echo (open item 6, card l.21).
  2. CLAIM (R10): asserts that a budget event triggers an exact echo (no interpretation) into the result K-line (`budget-echo: {N/N/N}`, card l.17); crosses `mics/mic-07`, result record, `ch-001-prime.md` budget reference, and CWVP gate (§2).
  3. BUDGET (R3): near-zero (card l.11) — reads only guarded doc; stops when falsifier (§3.1.5 below) fires after 5 runs with zero budget-echo K-lines.
  4. OBITUARY (Omega-draft): retirement when budget-echo count = 0 over 5 runs (falsifier); verdict = retire (not dissolve — design is sound, enforcement failed, lesson inherits per T1 §4); closing record in `violations.md` if RETIRED (§3.1.6).
  5. MEASURER (disinterest): supervisor-on-duty or Owner-deputy (`PROPOSAL-T1-HEIR-CLAUSE.md` §5 Q5 / `CWVP-v1.md` §4 / `arc-protocol.md` §19.5) — NOT the author of this activation; author is subagent (this session), measurer = Owner / deputy.
  6. SLOT (R5): lives in `~/Projects/notrick/mics/mic-07-budget-counter.md` (verified, line 1 header); K-line reference = `budget-echo: {N/N/N}` (l.17); lesson inherits to next V-entry (if RETIRED) or to Prime charter budget line (if MIGRATED, `ch-001-prime.md` l.25 reference verified).
  7. HEIR (continuity — mandatory per T1 clause): **HEIR = Prime charter (`ch-001-prime.md`)** if MIGRATED (budget-echo feeds wall-break evidence); else **HEIR = closing record in `violations.md`** (`CLOSE — V-{NN}` format per T1 §2 / §3) if RETIRED, with lesson = "budget-echo not enforced — pure-coded Phase B unimplemented" (card l.20–21). Named at birth (before activation) per `PROPOSAL-T1-HEIR-CLAUSE.md` §2.
- **Own falsifier (observed from disk, count of activated MICs vs expected after 5 runs):** `FALSIFIER: if after 5 real budget-event runs, the count of "budget-echo:" lines in result records = 0 → verdict: retire; lesson: budget-counter echo not enforced; heir: closing record in violations.md (HEIR=retired) or ch-001-prime.md (HEIR=Prime, if MIGRATED). Observable: grep -n "budget-echo" across result records; compare to 5 budget events (expected 5 echoes; if 0 → falsifier fires). MEASURER: supervisor-on-duty (not author).`
- **Activation result (HEIR declared):** if MIGRATED → heir = `~/Projects/notrick/charters/ch-001-prime.md` (budget-echo feeds wall-break evidence, per retirement trigger l.25); if RETIRED → heir = closing entry in `~/Projects/notrick/violations.md` (format from T1 §2 / §3; `CLOSE — V-{NN} · {date} · retired · {lesson} · heir: violations.md (next entry) or orphan-declared` — if no next V-entry exists and Owner does not respond in 2 sessions, declare orphan per T1 §2 / `arc-protocol.md` §10 / Omega-5 duty #4).

### 3.2 MIC-11 id-formatter — doc without ID → MIC-11
- **Activation event:** document enters system without valid ID (`CH/RJ/DS/MIC-{NNN}` per card l.5) — enters `mics/mic-11-id-formatter.md` slot.
- **File reference chain:** un-ID'd doc (any new file under workspace, missing header ID) → `~/Projects/notrick/mics/mic-11-id-formatter.md` (trigger l.5; act l.7 "refuse to index it; state missing ID format once"; refusal l.8; K-line `id-check: pass|refused`, l.18).
- **Alpha-7 Q1–Q7:**
  1. HOLE: missing-ID documents enter index silently — no refusal mechanism in Phase B (card l.20–21).
  2. CLAIM: asserts any doc without `CH/RJ/DS/MIC-{NNN}` is refused, quoted once (card l.7), with `id-check: refused` in K-line (l.18).
  3. BUDGET: near-zero (card l.11) — reads doc header only; stops when falsifier (§3.2.5) fires.
  4. OBITUARY: retire if after 5 un-ID'd docs, count of `id-check: refused` = 0; verdict = retire; closing record in violations.md if RETIRED.
  5. MEASURER: supervisor / deputy (`T1 §5 Q5`; `CWVP-v1.md` §4).
  6. SLOT: `~/Projects/notrick/mics/mic-11-id-formatter.md`; K-line = `id-check: pass|refused`; inheritance to next V-entry (RETIRED) or to `ch-002-council.md` (MIGRATED — indexed docs needed for council seats, `ch-002-council.md` verified).
  7. HEIR: MIGRATED → `~/Projects/notrick/charters/ch-002-council.md` (indexed docs feed seat records, `ch-002` lines 1–8 verified); RETIRED → `~/Projects/notrick/violations.md` closing entry (`CLOSE — V-{NN}` per T1 §2/§3).
- **Own falsifier:** `FALSIFIER: if after 5 un-ID'd doc attempts, grep "id-check: refused" count = 0 → retire; lesson: id-formatter refusal not enforced; heir: violations.md (RETIRED) or ch-002-council.md (MIGRATED). Observable: grep count in result K-lines vs 5 attempts.`
- **Activation result:** HEIR declared at birth — `ch-002-council.md` (MIGRATED) or violations closing entry (RETIRED); none left blank (T1 §3 mandate: "never leave blank").

### 3.3 MIC-23 gate-runner — gate claim → MIC-23
- **Activation event:** gate verdict claimed ("passed" / "verified" / "broke through") — enters `mics/mic-23-gate-runner.md` slot (trigger l.5).
- **File reference chain:** claim text → `~/Projects/notrick/mics/mic-23-gate-runner.md` (trigger l.5; act l.7 — "re-run gate's exact criterion ... quote output verbatim"; refusal l.8 — "claimed verdict with no re-runnable criterion → UNVERIFIED (R6)"; K-line `gate: {re-run output | UNVERIFIED}`, l.19) → `~/Projects/notrick/protocols/CWVP-v1.md` (verification gate §2–§3 — 3-intersection check, required for any claim) → charter/gate file being claimed.
- **Alpha-7 Q1–Q7:**
  1. HOLE: gate verdicts claimed without re-runnable criterion (R6 gap, `arc-protocol.md` §27; `adversarial-audit.md` X-04 gate-capture).
  2. CLAIM: asserts every "passed/verified/broke through" claim must quote its criterion's re-run output; crosses `mics/mic-23`, claim file, `CWVP-v1.md` §2, and target charter (`ch-001..004`).
  3. BUDGET: near-zero; stops when falsifier (§3.3.5) fires after 5 gate claims with zero `gate:` K-lines.
  4. OBITUARY: retire if `grep -c "gate: UNVERIFIED\|gate: {re-run"` = 0 over 5 claims; closing record in `violations.md`.
  5. MEASURER: supervisor / deputy (`CWVP-v1.md` §4 / `arc-protocol.md` §19.5).
  6. SLOT: `~/Projects/notrick/mics/mic-23-gate-runner.md`; K-line = `gate: {re-run | UNVERIFIED}`; inherits to `violations.md` (RETIRED) or to verdict file (MIGRATED — verified claim survives).
  7. HEIR: MIGRATED → target claim file / charter (verified verdict inherits); RETIRED → `~/Projects/notrick/violations.md` closing entry (`CLOSE — V-{NN}` per T1 §2/§3 / `PROPOSAL-T1-HEIR-CLAUSE.md` §2).
- **Own falsifier:** `FALSIFIER: if after 5 gate-claim attempts, count of "gate: UNVERIFIED" + "gate: {re-run" = 0 → retire; lesson: gate-runner verification not enforced; heir: violations.md closing entry (RETIRED) or verified claim file (MIGRATED). Observable: grep K-line count vs 5 attempts.`
- **Activation result:** HEIR declared at birth (before any gate claim activates — per T1 §2, "heir declared at birth, before activation").

### 3.4 MIC-31 axis-tagger — 3 same-axis tags → MIGRATE to Prime
- **Activation event:** attempt logged in result record (card l.5); specifically: 3 same-axis tags accumulate on one named axis (card l.17: `collision-count: {N same-tag}`; "3 = Prime migration signal, R3"). Enters `mics/mic-31-axis-tagger.md` slot.
- **File reference chain:** result record (attempt + axis tag) → `~/Projects/notrick/mics/mic-31-axis-tagger.md` (trigger l.5; act l.7 — tag axis, append to axis ledger; refusal l.8 — no nameable axis → flagged; K-line `axis: {tag}` + `collision-count: {N same-tag}` l.17) → axis ledger (under `mics/` or result record) → `~/Projects/notrick/charters/ch-001-prime.md` (Prime charter, retirement trigger l.25 — "3 consecutive gate-less breaks → re-forge"; the 3-axis-collision IS that trigger — verified line cross-reference). This is the MIGRATION path.
- **Alpha-7 Q1–Q7:**
  1. HOLE: same-axis collisions not tracked → wall-break attempts reuse the same axis; `ch-001-prime.md` retirement trigger (l.25) unmonitored.
  2. CLAIM: asserts 3 same-tag attempts = migration to Prime (per card l.17); crosses `mics/mic-31`, result records (axis tags), axis ledger, and `ch-001-prime.md` retirement trigger.
  3. BUDGET: near-zero; stops when falsifier (§3.4.5) fires if 3-tag signal never triggers migration.
  4. OBITUARY: MIGRATED (not retired) when `collision-count = 3`; verdict = migrate; level = Prime (`ch-001-prime.md`); closing not in violations.md — migration writes a migration entry (see §3.4.6). If never reaches 3 → RETIRED (violations.md closing entry).
  5. MEASURER: supervisor / deputy (`T1 §5 Q5`; `arc-protocol.md` §19.5).
  6. SLOT: `~/Projects/notrick/mics/mic-31-axis-tagger.md`; K-line = `axis: {tag}` + `collision-count: {N}`; inheritance = Prime charter `ch-001-prime.md` (MIGRATED, per card note l.17 "3 = Prime migration signal") or violations closing (RETIRED).
  7. HEIR: **HEIR = `~/Projects/notrick/charters/ch-001-prime.md` (Prime)** — declared at birth (before any activation, per T1 §2); migration means the axis-tagger's ledger inherits into Prime's wall-break map (the broken axis is replaced, per T1 §2 heir clause for ch-001: "the new axis replaces the broken wall in the next DS burrow map"). If never reaches 3 → RETIRED, heir = `violations.md` closing entry (`CLOSE — V-{NN}`; orphan declared if no next V-entry + 2 Owner sessions unresponded, per T1 §2 / `arc-protocol.md` §10).
- **Own falsifier:** `FALSIFIER: if after 5 axis-tag attempts, count of "collision-count: 3" in axis ledgers = 0 (i.e., no MIGRATION triggered) → verdict: retire; lesson: axis-collision migration to Prime not triggered; heir: violations.md closing entry if RETIRED; if MIGRATED (collision-count=3 reached once) → heir = ch-001-prime.md (Prime), closing = migration entry (not retirement). Observable: grep "collision-count" in result records / axis ledger; compare to 5 attempts; count 3-occurrences vs expected .`
- **Activation result (MANDATORY — MIGRATED path, per design notes):** on 3rd same-axis tag → Migrate to Prime (`ch-001-prime.md`). The axis-tagger's ledger line (`axis: {tag}` + `collision-count: 3`) is filed as input to Prime's retirement-trigger review (l.25: "3 consecutive gate-less breaks"). The HEIR is declared at birth (before activation): `ch-001-prime.md`. This is the only activation among the 4 that ALWAYS declares MIGRATION at the 3-tag threshold; others declare RETIRED if falsifier fires.

---

## 4. The HEIR clause applied (mandatory — per T1 PROPOSAL-T1-HEIR-CLAUSE.md §2, §3, §4; `arc-protocol.md` §6 Q7 / §30 Omega-5 duty #4)
Per T1 §3: "the Heir line is mandatory — a charter card missing it is incomplete at birth and must not activate." AFM extends this to each MIC activation: every activation (3.1–3.4 above) names the heir BEFORE the event enters the slot.

| MIC | Condition at birth (before activation) | Heir if MIGRATED | Heir if RETIRED (§3, §3.1, §3.2, §3.3, §3.4) |
|---|---|---|---|
| MIC-07 | budget-echo mechanism pending Phase B (l.20–21) — heir named at birth | `~/Projects/notrick/charters/ch-001-prime.md` (budget-echo feeds wall-break evidence, retirement trigger l.25) | `~/Projects/notrick/violations.md` — `CLOSE — V-{NN} · {date} · retired · {lesson} · heir: violations.md (next entry) or orphan-declared` |
| MIC-11 | ID-format refusal unimplemented (l.20–21) — heir named | `~/Projects/notrick/charters/ch-002-council.md` (indexed docs feed seat records, l.1–8) | `~/Projects/notrick/violations.md` closing entry (format T1 §2/§3) |
| MIC-23 | gate-criterion not always re-runnable (l.7–9; R6) — heir named | target claim file / verified claim record (verdict survives) | `~/Projects/notrick/violations.md` closing entry |
| MIC-31 | 3-tag = Prime migration signal defined (l.17) — heir named at birth | `~/Projects/notrick/charters/ch-001-prime.md` (Prime; migration writes axis to wall-break map; T1 §2 heir clause for ch-001 applies: "new axis replaces broken wall") | `~/Projects/notrick/violations.md` closing entry; orphan if no next V-entry + 2 Owner sessions (`arc-protocol.md` §10; T1 §2) |

No MIC activates with blank HEIR (T1 §3 forbidden; verified: all 4 above declare heir). RETIRED entries write `CLOSE — V-{NN}` per `PROPOSAL-T1-HEIR-CLAUSE.md` §2 (violations closing format: `CLOSE — V-{NN} · {date} · {verdict} · {lesson} · {heir file}`; also §3 — updated charter card v2 insertion applies per-entity; `violations.md` verified 5 lines, V-001/V-002 open, no closing format exists — AFM defines it via T1).

---

## 5. Methodology's own obituary / falsifier (ARC dogfood — mandatory, same as T1 §4 / T2 CWVP §4 / T3 ADHA-v1.md §34–35 / `arc-protocol.md` §81–87)
Per `AFM-DESIGN-NOTES.md` (§2: "after T3 verifies") and `arc-protocol.md` §81 (each protocol must contain its own falsifier):

```
FALSIFIER (ARC dogfood — Arc-Fed MIC eats its own rule): if after 5 real activation runs (each of the 4 MICs: budget event, un-ID doc, gate claim, 3 same-axis tag), the count of activated MICs (count of "budget-echo:", "id-check:", "gate:", "collision-count: 3" in result / axis / K-line records) = 0 vs expected 4 (one per slot, or 1 migration for MIC-31 at 3rd tag) → verdict: retire; lesson: arc-fed activation not enforced — events enter slots without triggering MICs; heir: the verification protocol in ~/Projects/notrick/protocols/CWVP-v1.md (§2–§3) takes over (as supervisor-check verifies activation counts); if MIGRATED (MIC-31 reaches 3) → heir = ch-001-prime.md (Prime receives axis-legacy); if RETIRED (count 0) → heir = violations.md closing entry per T1 §2/§3. Observable check: grep counts of each K-line pattern across result records after 5 runs; compare to slot-entry count (5 events = 5 expected activations; if 0 → falsifier fires). MEASURER: supervisor-on-duty or Owner-deputy — NOT the protocol author (T1 §5 Q5; CWVP v1 §4; arc-protocol.md §19.5). No silent exits — retirement writes CLOSING entry (violations.md) or MIGRATION entry (ch-001-prime.md).
```

Verification (observable from disk, not reasoning): `grep -c -n "budget-echo\|id-check: refused\|gate: UNVERIFIED\|gate: {re-run\|collision-count"` across result / axis / K-line files and `mics/`. Compare to 5 event entries (expected: ≥4 activations if all slots enter; 1 migration if MIC-31 hits 3; else 0). The count is verifiable by any supervisor independently.

---

## 6. Verification section — activation chain with exact file paths (mandatory — per task; verified from real files)

Chain (each step uses real paths verified by `read` / `ls` / `grep` in this session):

1. **Event enters slot (ARC-compliant):** budget event / un-ID doc / gate claim / attempt with axis tag → written to result / doc / claim file under workspace.
2. **Slot file (manifest trigger verified):**
   - `~/Projects/notrick/mics/mic-07-budget-counter.md` (trigger l.5 — budget written in DS/CH)
   - `~/Projects/notrick/mics/mic-11-id-formatter.md` (trigger l.5 — doc without valid ID)
   - `~/Projects/notrick/mics/mic-23-gate-runner.md` (trigger l.5 — gate verdict claimed)
   - `~/Projects/notrick/mics/mic-31-axis-tagger.md` (trigger l.5 — attempt logged; l.17 — 3 same-tag = migrate)
3. **MIC activates (verified card content — not invented):** each card's ACT (l.7) executed: echo (07) / refuse-to-index + state-ID-format-once (11) / re-run-criterion + quote-output (23) / tag-axis + append-ledger (31). Refusal applies if criterion missing (l.8 each card; 07: contradiction with budget; 11: doc stays unindexed until ID exists; 23: no re-runnable criterion → `UNVERIFIED`; 31: no nameable axis → flagged).
4. **K-line writes (verified per card):** `budget-echo: {N/N/N}` (07, l.17) / `id-check: pass|refused` (11, l.18) / `gate: {re-run | UNVERIFIED}` (23, l.19) / `axis: {tag}` + `collision-count: {N}` (31, l.17).
5. **Alpha-7 Q1–Q7 answered (§3.1–§3.4 above)** — each activation answers all 7 (HOLE / CLAIM / BUDGET / OBITUARY / MEASURER / SLOT / HEIR); no Q omitted (same rule as T1 §5 Q1–Q7, T3 ADHA-v1.md §6, `arc-protocol.md` §19).
6. **HEIR declared at birth (§4 above)** — MIGRATED or RETIRED named; no blank (T1 §3 mandatory; verified table in §4 names 4 heirs explicitly).
7. **HEIR continues (§4):** MIGRATED → `~/Projects/notrick/charters/ch-001-prime.md` (03, 04: budget/axis legacy) or `ch-002-council.md` (11: indexed docs for seats) or claim file (23: verified verdict); RETIRED → `~/Projects/notrick/violations.md` closing entry (`CLOSE — V-{NN}` per T1 §2 / §3; format verified from T1 §2 table + §3 insertion — no standalone file for this format exists; AFM uses T1's definition, verified by `grep -n "CLOSE —" ~/Projects/notrick/violations.md` = 0 hits, confirming gap that T1 defines and AFM applies).
8. **Falsifier observable (§5):** count comparisons above; supervisor (not author) verifies.

Cross-references verified in-session:
- `~/Projects/notrick/proposals/PROPOSAL-T1-HEIR-CLAUSE.md` (T1, 85 lines, §2–§4, §5 Q1–Q7 verified)
- `~/Projects/notrick/research/arc-protocol.md` (Alpha-7 §19–28, Omega-5 §30, falsifier §81–87 verified)
- `~/Projects/notrick/protocols/CWVP-v1.md` (3-intersection gate §2–§4, verification §5, falsifier §39–47 verified)
- `~/Projects/notrick/protocols/ADHA-v1.md` (T3, 156 lines, 4-role prompt, falsifier lines 34–51, §6 Alpha-7 verified)
- `~/Projects/notrick/protocols/AFM-DESIGN-NOTES.md` (source, 5 lines, §2 — seed MICs + migration — verified)
- 4 seed MIC files (verified `read`; descriptions NOT invented — copied from cards' Identity/Trigger/Act/Refusal/K-line/Notes sections)
- `~/Projects/notrick/charters/ch-001-prime.md` (retirement trigger l.25; heir clause — missing, gap per T1 §1 / `arc-protocol.md` line 55) and `ch-002-council.md`, `ch-003-maker.md`, `ch-004-chief-of-staff.md` (verified `ls`; heir clauses not yet inserted — T1 proposes; AFM references them as MIGRATED targets, not as completed clauses)
- `~/Projects/notrick/violations.md` (verified 5 lines, V-001/V-002 open; no closing format — T1 defines; AFM uses T1's `CLOSE —` format)

---

## 7. Refinement log (append-only; each entry cites the forcing result)
- 2026-09-06 — AFM-v1 filed (this file) — forced by user T4 request + `AFM-DESIGN-NOTES.md` (§2: 4 seed MICs, activation-on-ARC-event, migration to Prime) + T1 HEIR clause (§2/§3/§4 verified from `PROPOSAL-T1-HEIR-CLAUSE.md`) + T2 CWVP (§2–§4 cross-check) + T3 ADHA (§6 Alpha-7 format verified) + verified 4 seed MIC files (`mics/`) + `arc-protocol.md` (§19 Q1–Q7, §30 Omega-5, §81 falsifier). No descriptions invented: all 4 seed cards read; all Q1–Q7 answers reference verified lines; all file paths verified by `ls` / `grep`; falsifier is observable (grep count vs 5 runs).

---

TASK T4 COMPLETE — file: ~/Projects/notrick/protocols/AFM-v1.md
Methodology registered: **Arc-Fed MIC** (§1, explicit). 4 seed MICs activated with full Alpha-7 Q1–Q7 (§3.1–§3.4), file-reference chain (§6 verified from disk), own falsifiers (§3.1.5, §3.2.5, §3.3.5, §3.4.5, §5), HEIR clause applied (§4 — MIGRATED to Prime / RETIRED to violations.md closing entry per T1 §2/§3/§4), verification section with exact file paths (§6 — `mics/` + `charters/` + `protocols/` + `violations.md` + `research/arc-protocol.md` all cited with line references verified by `read`/`grep` in-session).
