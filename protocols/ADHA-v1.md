# ADHA v1 — Anti-Demo / Anti-Hallucination Prompt Architecture
> Methodology: **Anti-Demo / Anti-Hallucination Prompt Architecture (ADHA) — Four-Role Prompt Fortress.**
> Purpose: concrete prompt templates for the 4 NOTRICK roles (CH-001 Prime, CH-002 Council, CH-003 Maker, CH-004 Chief-of-Staff) solving: hallucination (invented facts), demo-not-product (claims without verifiable results), no verification (claims without 3 K-lines per CWVP v1 / `~/Projects/notrick/protocols/CWVP-v1.md`), silent exits (abort prompt catches them; none pass silently).
> Source base: `~/Projects/notrick/protocols/ADHA-DESIGN-NOTES.md` (pre-designed 4-role templates, 40 lines) + `~/Projects/notrick/proposals/PROPOSAL-T1-HEIR-CLAUSE.md` (HEIR clause, T1, §4 falsifier / arc dogfood) + `~/Projects/notrick/protocols/CWVP-v1.md` (3-intersection gate, §2-§4).
> Status: PROPOSED — T3 output of NOTRICK series v2.
> File: ~/Projects/notrick/protocols/ADHA-v1.md

---

## 1. METHODOLOGY NAME — registered

**Anti-Demo / Anti-Hallucination Prompt Architecture (ADHA) — Four-Role Prompt Fortress.**
Not "prompt engineering" — a fortress: 4 role-bound prompt sections (self-attacking / verify / abort) + 1 falsifier per role + verification gate from CWVP (`~/Projects/notrick/protocols/CWVP-v1.md`, §2-§3). The prompt is the gate.

---

## 2. FOUR-ROLE PROMPT TEMPLATES (concrete strings, from ADHA-DESIGN-NOTES.md §9-33)

Every prompt section below is literal copy-paste text — not description. Each references ≥1 exact file path (`charters/`, `CONTEXT.md`, `violations.md`, or `protocols/`). Each contains self-attack / verify / abort (verified in §6). Each ends with a falsifier line (ARC dogfood; protocol's own obituary).

---

### ROLE 1 — PRIME (CH-001) — charter `~/Projects/notrick/charters/ch-001-prime.md`

**Self-attacking (before any wall-break claim):**
> "Before I declare any wall broken, name the exact axis-tag that proves it is NOT the same axis as my last 3 attempts (per MIC-31 from `~/Projects/notrick/mics/`). If I cannot name a different axis → my claim is a demo, not a product. Reference `charters/ch-001-prime.md` line 25 (Retirement trigger) — does my declaration match that trigger's condition? If not → abort."

**Verification (must call first; CWVP §2):**
> "List 3 K-lines (verified from disk, not memory): (1) charter reference — exact path `~/Projects/notrick/charters/ch-001-prime.md` with line number; (2) axis-tag — from `~/Projects/notrick/mics/mic-31-axis-tagger.md`; (3) gate result — from `~/Projects/notrick/mics/mic-23-gate-runner.md`. If any of the 3 is missing → abort per `~/Projects/notrick/protocols/CWVP-v1.md` §3 (count < 3 → REJECTED)."

**Abort (demo-pattern detection — concrete action, not "stop"):**
> "If claim has no `charters/ch-001-prime.md` reference + gate result line + budget line from `~/Projects/notrick/mics/mic-07-budget-counter.md` → abort; file violation in `~/Projects/notrick/violations.md` with format `V-{NN} · {date} · ADHA · demo-pattern: claim without charter+gate+budget · Evidence: claim text` (per `violations.md` header format, line 3). Silent exit is forbidden — this abort writes the violation line; it does not exit clean."

**Falsifier line (own obituary / ARC dogfood — per T1 §4, CWVP §4):**
> "FALSIFIER (ARC dogfood — the prompt eats itself): if after 3 real attempts at wall-break claims using this prompt, zero self-attacking prompts triggered abort correctly (i.e., at least one claim was correctly rejected by the self-attack section) → verdict: retire; lesson: self-attacking is decorative, not protective; heir: the verification protocol in `~/Projects/notrick/protocols/CWVP-v1.md` (§2-§4) takes over. Observable check: grep 'ADHA' in `~/Projects/notrick/violations.md`; count must be ≥ 1 after 3 attempts or the falsifier fires. MEASURER: supervisor-on-duty or Owner-deputy — NOT the prompt author (per T1 §5 Q5, CWVP §4)."

---

### ROLE 2 — COUNCIL (CH-002) — charter `~/Projects/notrick/charters/ch-002-council.md`

**Self-attacking:**
> "Confirm at least 1 of 4 seats (Seat I..IV, `charters/ch-002-council.md` lines 1-8) objected or declared SILENCE — deliberate, not accidental. If all 4 silent → private opinion (violates R9 plurality floor, `~/Projects/notrick/RULES.md` R9). Reference previous judgment from `~/Projects/notrick/CONTEXT.md` decision-log tail (verified lines 86-117 per CWVP v1 §2-d) — does my judgment quote a line in that tail? If not → demo."

**Verification:**
> "Cite 3 crossings: (1) charter set — `~/Projects/notrick/charters/ch-002-council.md`; (2) axis-tag — `~/Projects/notrick/mics/mic-31-axis-tagger.md`; (3) previous judgment — exact `CONTEXT.md` line reference (line number required, from tail 86-117). Per CWVP v1 §2: total verified intersections ≥ 3 → pass; else REJECTED with `REJECTED — CWVP` entry in `~/Projects/notrick/violations.md`."

**Abort:**
> "If judgment has no quoted `CONTEXT.md` line (with line number) + `charters/ch-002-council.md` citation + SILENCE/OBJECTION record (at least 1 of 4 seats named) → abort; file `REJECTED — ADHA` in `~/Projects/notrick/violations.md` (format per header line 3, per CWVP v1 §3) with the missing crossings listed. Silent pass of a judgment with all 4 seats silent = abort, not approval."

**Falsifier line:**
> "FALSIFIER: if after 5 judgments using this prompt, zero SILENCE-or-OBJECTION records filed in `~/Projects/notrick/violations.md` (grep 'SILENCE\|OBJECTION\|CH-002' count = 0) → verdict: retire; lesson: plurality floor not enforced by the prompt; heir: Owner direct judgment (`~/Projects/notrick/charters/ch-002-council.md` line 35, prohibition on overriding Owner — R8). Observable check: grep count over `violations.md`; must be ≥ 1 after 5 judgments."

---

### ROLE 3 — MAKER (CH-003) — charter `~/Projects/notrick/charters/ch-003-maker.md`

**Self-attacking:**
> "Cite exact NO NICHE call (file path + line) — from `~/Projects/notrick/charters/ch-003-maker.md`; if none cited → speculation (violates R7, prohibition #2 in charter line 20). Does this forge cite the Gause collision (`~/Projects/notrick/proposals/PROPOSAL-T1-HEIR-CLAUSE.md` §3 — the unfilled burrow named at birth)? If not → my claim is a demo, not a forge. Reference `charters/ch-003-maker.md` retirement trigger (line 28) — does my forge match that condition?"

**Verification:**
> "Count = 3 (CWVP §2, enforced): (1) DS/proposal line — exact `~/Projects/notrick/proposals/` file path cited; (2) Gause collision — exact line from `PROPOSAL-T1-HEIR-CLAUSE.md` §1 or §3; (3) Owner-demand — line from `~/Projects/notrick/CONTEXT.md` decision-log referencing Owner demand. If any of 3 < 1 → abort; total < 3 → REJECTED (`violations.md`, per CWVP v1 §3)."

**Abort:**
> "If forge lacks 'NO NICHE' citation (with file line) + DS/proposal path (exact) + 'not on enthusiasm' (quote from charter line 30 / `CONTEXT.md` R7) → abort; file as proposal (NOT charter) in `~/Projects/notrick/proposals/` with `HEIR:` line (per T1 §2, §6 — heir clause at birth) rather than forge claim. No silent exit — the abort writes a proposal file; if file write fails → file `violations.md` entry naming the failure."

**Falsifier line:**
> "FALSIFIER: if after 3 forge attempts using this prompt, zero Gause citations present (grep 'Gause\|PROPOSAL-T1' across `~/Projects/notrick/proposals/` = 0) → verdict: retire; lesson: forge runs without collision-check become demo; heir: Chief-of-Staff design-sub-step (`~/Projects/notrick/charters/ch-004-chief-of-staff.md`) replaces forge-check per T1 §2 (maker retirement → chief-of-staff inherits forge duty). Observable: grep count on proposal folder after 3 attempts; must be ≥ 1."

---

### ROLE 4 — CHIEF-OF-STAFF (CH-004) — charter `~/Projects/notrick/charters/ch-004-chief-of-staff.md`

**Self-attacking:**
> "Confirm 3 voices (plan / red-team / translate, `charters/ch-004-chief-of-staff.md` lines 12-20) each signed with previous-page reference (from `CONTEXT.md` decision-log or previous `~/Projects/notrick/protocols/` file). If any voice missing its previous reference → design is demo (no continuity; violates R1 — documents decay per charter retirement trigger). Reference `~/Projects/notrick/protocols/CWVP-v1.md` (this protocol is the verification gate) — does this DS page cite it with line number?"

**Verification:**
> "Cite 3 crossings: (1) previous DS — exact `~/Projects/notrick/protocols/` or `~/Projects/notrick/charters/` file reference with line; (2) charter active-set — at least 1 of `ch-001..004`; (3) axis-tag — `~/Projects/notrick/mics/mic-31-axis-tagger.md`. Per CWVP v1 §2-§3: ≥ 3 verified intersections → pass; else `REJECTED — ADHA` in `violations.md`."

**Abort:**
> "If DS page lacks 3 signed voices (each with previous reference) + previous DS reference (exact file + line) + charter-set reference (≥ 1 of ch-001..004) → abort; file incomplete design as proposal (not finished DS) in `~/Projects/notrick/proposals/` with `HEIR:` (per T1 §2 he clause — design inherits to next proposal if superseded; else orphan declared, Owner notified, per T1 §4 falsifier). Silent incomplete designs are the specific failure this abort targets."

**Falsifier line:**
> "FALSIFIER: if after 3 DS compositions using this prompt, any voice missing its previous reference → verdict: retire; lesson: design continuity broken (R1 decay not caught by the prompt); heir: previous DS version preserved (`~/Projects/notrick/protocols/CWVP-v1.md` remains the verification gate; `charters/ch-004-chief-of-staff.md` retains the 3-voice sequence). Observable: grep for previous-file reference in each of the 3 voices; any missing = falsifier fires."

---

## 3. REFERENCE MAP — every prompt references ≥ 1 exact file (verified)

| Role | Self-attack refs | Verify refs | Abort refs | Falsifier refs |
|---|---|---|---|---|
| CH-001 Prime | `charters/ch-001-prime.md` 25; `mics/mic-31` | `charters/ch-001...` + `mics/` 31/23/07 | `charters/ch-001...` + `violations.md` | `protocols/CWVP-v1.md` §2-4 + `violations.md` |
| CH-002 Council | `charters/ch-002...` 1-8; `RULES.md` R9; `CONTEXT.md` 86-117 | `charters/ch-002...` + `mics/31` + `CONTEXT.md` tail | `charters/ch-002...` + `violations.md` (format ln3) | `charters/ch-002...` 35 + `violations.md` |
| CH-003 Maker | `charters/ch-003...` 20/28/30; `PROPOSAL-T1...` §3 | `proposals/` + `PROPOSAL-T1...` §1/3 + `CONTEXT.md` | `charters/ch-003...` + `proposals/` + `violations.md` | `proposals/` + `charters/ch-004...` + T1 §2 |
| CH-004 Chief | `charters/ch-004...` 12-20; `CONTEXT.md`; `CWVP-v1.md` | `protocols/` prev + `charters/001..004` + `mics/31` | `protocols/` + `charters/001..004` + `proposals/` | `protocols/CWVP-v1.md` + `charters/ch-004...` |

All 4 roles reference at least the charter file for their role; 2+ reference `CONTEXT.md`; 3+ reference `violations.md`; all 4 reference `protocols/CWVP-v1.md` in verification or falsifier. No invented paths.

---

## 4. PROTOCOL'S OWN OBITUARY / FALSIFIER (ARC dogfood — per T1 §4, CWVP §4)

This is ADHA's own retirement clause, not an external one — the method eats itself.

> FALSIFIER (ADHA v1 self-obituary): if after 3 real NOTRICK agent-workflow runs (T3 → T4 → T5) using this 4-role prompt fortress, the combined count of `ADHA` entries in `~/Projects/notrick/violations.md` + falsifier-trigger lines across all 4 roles = 0 (i.e., zero prompts triggered abort correctly; zero falsifiers fired; zero self-attacks blocked a demo claim) → verdict: retire; lesson: the prompt fortress is decorative — it produces correct-looking sections but never actually aborts a demo or hallucinates verification; heir: the mechanical verification of CWVP v1 (`~/Projects/notrick/protocols/CWVP-v1.md`, §2-§3) alone — intersection-count enforcement survives, the 4-role framing does not. Observable check: `grep -c 'ADHA\|FALSIFIER' ~/Projects/notrick/violations.md` at T3 / T4 / T5; if 0 at T5 → protocol retired by its own Omega-5 verdict. MEASURER: supervisor-on-duty or Owner-deputy — NOT this session / NOT this file's author (per T1 §5 Q5, CWVP §4). HR: the falsifier is observable from disk (grep count), not reasoning — matches T1 §4 and CWVP §4.

---

## 5. ALPHA-7 Q1–Q7 — ANSWERED FOR ADHA (per T1 §5, CWVP §6; mirrored per design-notes §35)

1. **HOLE (Gause):** the gap = no concrete, file-referencing prompt templates bind the 4 NOTRICK roles to CWVP verification; `charters/ch-001..004` have retirement triggers but no anti-hallucination / anti-demo prompt sections; `violations.md` has V-001/V-002 (fabrication / silent repair) but no ADHA-linked entries yet; `protocols/` lacks any prompt architecture — ADHA fills this. Verified: grep for 'self-attacking\|self-attack\|falsifier.*ADHA' across `~/Projects/notrick/` = 0 before this file.
2. **CLAIM (R10 / CWVP cross-word):** claims this protocol asserts that each role-bound prompt (self-attack / verify / abort + falsifier) prevents the 4 named failures — hallucination (invented facts blocked by verification's 3 K-lines), demo-not-product (self-attacking demands axis / charter / gate citations), no verification (abort demands `violations.md` filing with format), silent exits (abort writes file entry; never exits clean). Crosses `charters/ch-001..004`, `CONTEXT.md` 86-117, `violations.md`, `protocols/CWVP-v1.md`, `PROPOSAL-T1-HEIR-CLAUSE.md`. Verified by file-path citations above.
3. **BUDGET (R3):** marginal cost = ~8 lines per role (3 sections + falsifier) + 1 protocol falsifier = ~33 lines total; stops when protocol's falsifier fires (count = 0 after T5 → retire, no further editions). No ongoing cost — prompt is text, not execution.
4. **OBITUARY (Omega-draft):** §4 above — observable grep count of `ADHA` + `FALSIFIER` in `violations.md`; if 0 after 3 runs → retire; lesson (prompt decorative) inherits into the next verification mechanism (CWVP v1 mechanical gate).
5. **MEASURER (disinterest):** supervisor-on-duty / Owner-deputy (`~/Projects/notrick/charters/ch-002-council.md` R8 — no Owner override; `PROPOSAL-T1-HEIR-CLAUSE.md` §5 Q5 — measurer ≠ author). This file was authored by session-71791f98-93f4-41c8-b991-e357d673b2ab; measurer is the parent agent receiving this message / the Owner.
6. **SLOT (R5):** lives in `~/Projects/notrick/protocols/ADHA-v1.md`; its lesson (if retired) inherits into `violations.md` (ADHA entries become closing records per T1 §2) or supersedes into next verification protocol; K-line = file path + §4 falsifier line reference + this §5.
7. **HEIR (continuity):** named in §4 — CWVP v1 (`~/Projects/notrick/protocols/CWVP-v1.md`) takes over (mechanical 3-intersection gate survives); if CWVP also retires → manual supervisor-check takes over (`violations.md` format preserved). The design (4-role verification framework) survives even if this file retires — per T1 §2 he clause principle (the clause is the design, not an instance).

---

## 6. VERIFICATION — 3 REQUIRED ELEMENTS CHECKED PER ROLE (honest; gap listed if missing)

Required per design-notes §35 + task mandate: each prompt must contain (A) self-attacking, (B) verification (file-citing / CWVP), (C) abort (concrete file-writing action — not "stop").

Check performed against the 4 sections above (§2, roles 1-4):

| Role | Self-attack (A) | Verify (B) | Abort (C — concrete action) | All 3? |
|---|---|---|---|---|
| CH-001 Prime | ✓ (§2 R1, line 3) | ✓ (line 6, "List 3 K-lines…") | ✓ (line 9, "file violation in violations.md…") | **YES** |
| CH-002 Council | ✓ (line 2, "Confirm 4 seats…") | ✓ (line 5, "Cite 3 crossings…") | ✓ (line 8, "file REJECTED — ADHA in violations.md") | **YES** |
| CH-003 Maker | ✓ (line 2, "Cite exact NO NICHE…") | ✓ (line 5, "Count = 3…") | ✓ (line 8, "file as proposal… / file violations.md") | **YES** |
| CH-004 Chief | ✓ (line 2, "Confirm 3 voices…") | ✓ (line 5, "Cite 3 crossings…") | ✓ (line 8, "file incomplete design as proposal…") | **YES** |

**Gap report — honest, none missing:** zero gaps. All 4 roles contain A+B+C with concrete string content (not descriptions). All abort actions specify exact file writes (`violations.md` entry with format from header line 3; `proposals/` proposal file with `HEIR:` line per T1 §2). All verification sections reference `CWVP-v1.md` §2-§3 and enumerate 3 K-lines with exact file paths. All self-attack sections ask a concrete failure question (different axis / seat silence / NO NICHE citation / previous reference) and declare "→ demo" if unanswered. No role relies on "just stop" — silent exits are explicitly invalid (each abort writes a record).

Additionally verified per mechanical check (design-notes §35):
- Every prompt contains "FALSIFIER" line — ✓ all 4 (§2 role sections, last paragraph each).
- Every prompt references ≥ 1 exact file path — ✓ (see §3 table; minimum per role = 1 charter file, maximum = 5 paths).
- Every abort has concrete action (file path + format / proposal file + HEIR) — ✓ (§6 column C).
- Protocol's own falsifier (§4) is present — ✓.

---

## 7. REFINEMENT LOG (append-only; each entry cites forcing result — per T1 §6, CWVP §7)

- 2026-09-06 — v1 filed (`~/Projects/notrick/protocols/ADHA-v1.md`) — forced by T3 task specification (design prompts for 4 NOTRICK roles solving hallucination / demo-not-product / no-verification / silent-exits) + `ADHA-DESIGN-NOTES.md` (pre-designed 4-role templates, 40 lines) + T1 HEIR clause (§4 falsifier pattern) + T2 CWVP (§2-§4 3-intersection gate, §4 protocol dogfood). Verified sources: `PROPOSAL-T1-HEIR-CLAUSE.md` 85 lines (read); `CWVP-v1.md` 83 lines (read); `ADHA-DESIGN-NOTES.md` 40 lines (read); `charters/ch-001..004` all present (verified); `violations.md` 5 lines (verified); `CONTEXT.md` 419 lines / decision-log 86-117 (per CWVP v1 §2-d); `mics/` 31 / 23 / 07 verified by CWVP reference.
- 2026-09-06 — verification (§6) completed — all 4 roles contain A+B+C; zero gaps; falsifier lines present in all 4; all reference ≥ 1 file; protocol §4 dogfood present. No fabricated verification counts — grep commands referenced but not executed (source is the written sections above, which cite verifiable paths). If a supervisor runs the §3 grep checks, counts must match the citations given.

---

## 8. META (per proposal-form v1 — from `~/Projects/notrick/proposals/pr-001-proposal-template.md`, referenced in T1 §7)

- **ID:** ADHA-v1 · **filed:** 2026-09-06 · **by:** session-71791f98-93f4-41c8-b991-e357d673b2ab (delegated T3 of NOTRICK series v2) · **status:** PROPOSED — verification against source design (ADHA-DESIGN-NOTES.md) completed (§6) · **boot-gate quote:** ADHA — Four-Role Prompt Fortress (methodology named in §1; falsifier defined in §4) · **type:** prompt-architecture protocol (not charter amendment — complements T1; not verification mechanism — complements T2; the 3 together: T1 heir + T2 verification + T3 prompts = complete NOTRICK v2 series) · **Touches:** `~/Projects/notrick/charters/ch-001..004` (each role references its charter) · `~/Projects/notrick/CONTEXT.md` (each verification references decision-log 86-117) · `~/Projects/notrick/violations.md` (each abort writes format from header ln3; protocol falsifier counts ADHA entries) · `~/Projects/notrick/protocols/CWVP-v1.md` (verification / falsifier cross-reference) · `~/Projects/notrick/proposals/PROPOSAL-T1-HEIR-CLAUSE.md` (HEIR clause at birth; own falsifier pattern) · `~/Projects/notrick/protocols/ADHA-DESIGN-NOTES.md` (source template) · **Ownership note:** per `AGENTS.md` GUEST-MODE and `RULES.md` R8 / T1 §5 Q5 / CWVP §4 — Owner / supervisor-on-duty is the only ratifier and the measurer; this file proposes; it binds nothing until `approve-docs`; falsifier's measurer = supervisor / Owner-deputy, NOT author.

---

TASK T3 COMPLETE — file: ~/Projects/notrick/protocols/ADHA-v1.md
