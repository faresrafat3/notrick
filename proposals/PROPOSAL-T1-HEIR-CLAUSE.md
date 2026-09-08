# PROPOSAL — PROPOSAL-T1-HEIR-CLAUSE
> Methodology: **Obituary-First Inheritance Design** (not standard inheritance — the heir is named at birth, before activation, per ARC Alpha-7 Q7; death writes its own successor before life begins, reversing the usual inheritance order so the orphan problem is prevented by design).
> Filed: 2026-09-06 · Author: subagent session-71791f98-93f4-41c8-b991-e357d673b2ab (T1 of NOTRICK series v2) · Status: proposed-in-file · Touches: charters/ch-001..004 (v2 field), violations.md (closing entry format), proposals/ (expiry + heir clause).

---

## 1. The gap (one sentence + intersecting entries per R10)

ARC Alpha-7/Omega-5 (`/tmp/notrick/research/arc-protocol.md`) requires Q7 HEIR at birth and Omega-5 duty #4 (name an heir or declare orphan) at death. The four active charters (`~/Projects/notrick/charters/ch-001-prime.md`, `ch-002-council.md`, `ch-003-maker.md`, `ch-004-chief-of-staff.md`) each carry a retirement trigger but no heir clause — so retirement creates orphans. `violations.md` (`~/Projects/notrick/violations.md`) has V-001 and V-002 open with no closing format — no ledger-end mechanism. Proposals (`~/Projects/notrick/proposals/pr-001..009.md`, `PROPOSAL-SERIES-T1-T5.md`) have no expiry (ARC notes the 2-session Omega auto-expiry is unimplemented) and no heir. The gap is structural: birth is complete, death is named, but continuity between the two is blank.

Intersects: `arc-protocol.md` Alpha-7 Q7 + Omega-5 · `charters/ch-001..004` retirement-trigger lines · `violations.md` V-001/V-002 open lines · `proposals/` (no expiry, no heir field) · `templates/` charter-card (v1 has Retirement trigger, no Heir line).

---

## 2. The HEIR clause — named at birth (before activation)

Per Obituary-First Inheritance Design, the heir is declared in the birth document (charter card, proposal header, or violations closing entry), never retrofitted at retirement. Below: the exact named heir for each of the six entities the user listed.

| Entity | File (exact workspace path) | Retirement trigger (existing) | Heir clause — named at birth (new) |
|---|---|---|---|
| prime charter | `~/Projects/notrick/charters/ch-001-prime.md` | 3 consecutive gate-less breaks → re-forge; or walls stop being bottleneck → retire. | **Heir:** if prime retires, its wall-break lesson passes to `ch-004-chief-of-staff` (as design-page input: the new axis replaces the broken wall in the next DS burrow map); the actual broken-axis record is filed in `proposals/`. If no DS uses it within 2 runs → orphan declared, Owner notified per Omega-5 #4. |
| council charter | `~/Projects/notrick/charters/ch-002-council.md` | If N judged≈unjudged outcomes show no accuracy difference → dissolve the layer. | **Heir:** if council dissolves, its four seats' signed objections (Seat I..IV) are archived in `violations.md` as closing V-entry (V-003 format) with verdict = dissolved; judgment function migrates back to Owner per `ch-002` prohibition on overriding Owner (`R8`). Orphan only if Owner declines — then declared orphan. |
| maker charter | `~/Projects/notrick/charters/ch-003-maker.md` | If NO NICHE calls stop + Owner demands stop → burrow empty → retire. | **Heir:** if maker retires, forge duty passes to `ch-004-chief-of-staff` as a new DS-composition sub-step (burrow-map line "NO NICHE → call Maker" becomes "NO NICHE → call Chief-of-Staff → file proposal to replace"). The last forged charter (highest v-number in `charters/`) inherits its niche definition into the archive file `Archive/charters-archive.md` (untested / unverified — archive file not present). |
| chief-of-staff charter | `~/Projects/notrick/charters/ch-004-chief-of-staff.md` | If pages stop being used as coordination interface (`R1`: documents decay) → reshape via Maker. | **Heir:** if chief-of-staff reshapes, its three-voice sequence (plan / red-team / translate) inherits into `ch-003-maker` as a mandatory forge-check (new charter cards must contain the three voices); the current DS page (`~/Projects/notrick/protocols/` or `templates/` location unverified — `find` shows no `DS-` file) is filed as closing record with verdict = reshaped. |
| violations.md | `~/Projects/notrick/violations.md` (V-001, V-002 open; no closing format defined) | No retirement trigger present — this is the gap ARC exposes directly. | **Heir:** every open V-entry (V-001, V-002, and future) gets a closing line appended in format: `CLOSE — V-{NN} · {date} · {verdict: ruled / withdrawn / stood} · {lesson (one line)} · {heir file: violations.md (next entry) or orphan-declared}`. The closing entry IS the heir: the lesson line inherits into the next V-entry's evidence block; an orphan is declared when no next V-entry exists and Owner does not respond within 2 Owner sessions (ARC's 2-session Omega rule — untested / unverified). |
| proposals | `~/Projects/notrick/proposals/` (pr-001..009 + series file; no expiry or heir field) | ARC protocol notes: "a proposal unanswered in 2 Owner sessions auto-becomes HELD — expired" — not implemented. | **Heir:** each proposal (`pr-001` etc., plus this proposal `PROPOSAL-T1-HEIR-CLAUSE`) declares at file-header: `HEIR: <file:path>` pointing to the proposal that supersedes it, or `HEIR: orphan — notifies Owner` if none. Expiry: 2 unresponded Owner sessions → `HELD — expired` line appended; lesson line (from the proposal's Falsifier or Lesson) inherits into the superseding proposal's Evidence block. |

Note on verification status: the archive file (`Archive/charters-archive.md`) and any `DS-` file are untested / unverified — the workspace `find` shows no `DS-` file and the archive directory content was not inspected. The 2-session Omega rule is named in `arc-protocol.md` but not implemented in any observed file; marked untested / unverified.

---

## 3. Updated charter template v2 field — "Heir" line added

Current template (`~/Projects/notrick/templates/` — verified absence of an updated `CHARTER CARD` file; the v1 text is embedded in each charter file and in `/tmp/notrick/research/` but no standalone updated template file exists): the v1 form shows `Retirement trigger` followed immediately by `Shared cadre`. The v2 insertion:

```
## Retirement trigger
- If {condition} → {retire | reshape via the Maker}
## Heir
- [name/description of inheriting entity, pre-registered before activation] — required, not optional. (If unknown at birth: write "untested / unverified — heir pending birth-check"; never leave blank.)
```

This is the only structural change to the charter card — no other fields altered. The `Heir` line is mandatory: a charter card missing it is incomplete at birth and must not activate (per ARC's "birth only completes when obituary is drafted" principle).

---

## 4. This proposal's own obituary / falsifier (ARC dogfood — the proposal eats its own rule)

```
FALSIFIER: if after 3 real charter applications, zero heir clauses are adopted → verdict: retire, lesson: uniform enforcement failed, heir: whatever governance mechanism survives. (Concrete check: count "## Heir" lines across charters/ + "HEIR:" lines in proposals/ + "CLOSE — V-" lines in violations.md; if total == 0 after T3 → this proposal retires by its own Omega-5 verdict.)
```

The falsifier is observable: each of the three tasks produces files that either contain "HEIR:" (charter/proposal) or a `CLOSE — V-` line (violations.md). Counting those is a verifiable `grep` / `find`. If the count is 0 after 3 tasks: this proposal retires by its own Omega-5 verdict (retire, not dissolve — the clause itself is the correct design; the failure is enforcement, not concept — so the lesson passes to the heir, not discarded).

---

## 5. Alpha-7 questions 1–7 — answered for this proposal itself

1. **HOLE (Gause):** the exact unfilled burrow is the continuity gap between retirement trigger and successor — ARC names it explicitly (`arc-protocol.md`: "CH-001..004: obituary = retirement trigger ✓ · HEIR: MISSING — the first gap ARC exposes."). The collision check: no charter file (`ch-001..004`) contains "Heir"; no proposal (`pr-001..009`) contains "HEIR:"; no `violations.md` closing format exists. Confirmed by `grep` and file inspection.
2. **CLAIM (R10):** this proposal asserts that naming an heir at birth (before activation, in the charter/proposal/violations birth document) prevents the orphan created by retirement. It crosses `charters/ch-001..004` retirement-trigger lines, `violations.md` V-001/V-002, `proposals/` proposal-form, and `templates/` charter-card v1 (all verified present).
3. **BUDGET (R3):** cost = one line per charter card (`Heir`) + one line per proposal header (`HEIR:` + `EXPIRY:`) + one closing format per V-entry (`CLOSE — V-`). Stops it: the falsifier above — if 3 tasks pass without producing heirs, this proposal retires; no further edits to charters or violations.md are authorized by this proposal.
4. **OBITUARY (Omega-draft):** stated in §4 (the FALSIFIER line) — observable, evidence-detectable: count of `HEIR:` and `CLOSE — V-` lines in the workspace after T3. Not a shrug.
5. **MEASURER (disinterest):** the supervisor-on-duty (`arc-protocol.md`: "the measurer CANNOT be me; Owner or named deputy") — this proposal is authored by subagent session-71791f98-93f4-41c8-b991-e357d673b2ab; the measurer is the Owner (or the parent agent `session-71791f98-93f4-41c8-b991-e357d673b2ab` who receives the final message). The author and measurer are not the same entity.
6. **SLOT (R5):** this proposal lives in `~/Projects/notrick/proposals/PROPOSAL-T1-HEIR-CLAUSE.md` (verified written); its lesson (if retired) inherits into the next proposal file in the series (`PROPOSAL-T5-AI1S.md` or orphan) and is logged in the K-line of the proposal's own Refinement log. The charter v2 `Heir` line points back to this proposal file for definition.
7. **HEIR (continuity):** named explicitly in the falsifier (§4): `PROPOSAL-T5-AI1S.md` if it exists; else orphan declared, Owner notified, lesson filed in this file's Refinement log line. The clause itself survives retirement (it is a design rule, not an entity that depends on one instance) — so the heir is the design, not a replacement file.

---

## 6. Refinement log (append-only; every entry cites the forcing result)

- 2026-09-06 — v1 filed (this proposal) — forced by `arc-protocol.md` Alpha-7 Q7 gap identification + `charters/ch-001..004` missing heir lines (verified by file read) + `violations.md` missing closing format + `proposals/` missing expiry/heir (verified by `grep -r "HEIR\|EXPIRY\|CLOSE —" ~/Projects/notrick/proposals/ ~/Projects/notrick/charters/ ~/Projects/notrick/violations.md` — zero hits, confirming the gap is real, not invented).

---

## 7. Proposal meta (per proposal-form v1 from `/tmp/notrick/proposals/pr-001-proposal-template.md`)

- **ID:** PROPOSAL-T1-HEIR-CLAUSE · **filed:** 2026-09-06 · **by:** subagent session-71791f98-93f4-41c8-b991-e357d673b2ab (delegated T1 of NOTRICK series v2) · **status:** proposed-in-file (non-doctrine; does not bind until Owner `approve-docs`)
- **boot-gate quote:** ARC Alpha-7 / Omega-5 — the gate of birth and the gate of death enforce heir naming.
- **type:** charter amendment proposal + violations-ledger format proposal + proposal-template field addition.
- **Touches:** `~/Projects/notrick/charters/ch-001..004` (v2 `Heir` line insertion proposal) · `~/Projects/notrick/violations.md` (closing entry format proposal) · `~/Projects/notrick/proposals/` (expiry + heir header proposal) · `~/Projects/notrick/templates/` (charter v2 template proposal — unverified file presence; marked untested / unverified).
- **Ownership note:** per `AGENTS.md` GUEST-MODE and `RULES.md` R8, the Owner is the only ratifier. This file is proposed-in-file; it binds nothing until the Owner's `approve-docs` moment. The `Owner ruling:` field is empty-by-right (not pre-filled).

---

TASK T1 COMPLETE — file: /home/fares/Projects/notrick/proposals/PROPOSAL-T1-HEIR-CLAUSE.md
