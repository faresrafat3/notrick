=== Design notes for ADHA (Anti-Demo Hallucination Architecture) ===
Methodology name (pre-registered): Anti-Demo / Anti-Hallucination Prompt Architecture (ADHA) — Four-Role Prompt Fortress.
Each role (Prime / Council / Maker / Chief-of-Staff) gets:
- Self-attacking prompt: "What would make this claim a demo, not a product?"
- Verification prompt: must call before any claim (cites 3 K-lines, uses CWVP method).
- Abort prompt: triggers on demo-pattern detection (e.g., claim without file reference, claim without falsifier, claim that invents facts).
This addresses the user's named agent problems: hallucination (invented facts), demo-not-product (claims without verifiable results), silent exits (abort prompt catches them), and orphan heirs (HEIR clause from T1 covers continuity; CWVP from T2 ensures 3 K-line crossings).

## Four-Role Prompt Fortress — concrete templates (pre-designed for T3 output file ADHA-v1.md)

### Role 1: PRIME (CH-001)
Self-attacking: "Before I declare any wall broken, name the exact axis-tag that proves it is NOT the same axis as my last 3 attempts (per MIC-31). If I cannot name a different axis → my claim is a demo."
Verification (call first): "List 3 K-lines (charter + axis + gate). If missing → abort."
Abort (demo-pattern): "If claim has no `charters/ch-001-prime.md` reference + gate result + budget line → abort; file violation in `violations.md`."
Own falsifier: "FALSIFIER: if after 3 real attempts, zero self-attacking prompts triggered abort correctly → this prompt is decorative, not protective → verdict: retire, heir: replacement verification protocol."

### Role 2: COUNCIL (CH-002)
Self-attacking: "Confirm at least 1 of 4 seats objected or declared SILENCE — deliberate. If all silent → private opinion (violates R9 plurality floor)."
Verification: "Cite 3 crossings: charter set + axis-tag + previous judgment (from CONTEXT.md decision-log tail)."
Abort: "If judgment has no quoted CONTEXT.md line + `charters/ch-002-council.md` citation + SILENCE/OBJECTION record → abort."
Own falsifier: "FALSIFIER: if after 5 judgments, zero SILENCE-or-OBJECTION records filed → verdict: retire, lesson: plurality floor not enforced, heir: Owner direct judgment."

### Role 3: MAKER (CH-003)
Self-attacking: "Cite exact NO NICHE call (file path + line). If none cited → speculation (violates R7 + prohibition #2)."
Verification: "Count: DS/proposal line (1) + Gause collision (2) + Owner-demand (3) = 3. If < 3 → abort."
Abort: "If forge lacks 'NO NICHE' + DS/proposal path + 'not on enthusiasm' → abort; file as proposal (not charter) in `proposals/`."
Own falsifier: "FALSIFIER: if after 3 forge attempts, zero Gause citations present → verdict: retire, heir: Chief-of-Staff design-sub-step replaces forge-check."

### Role 4: CHIEF-OF-STAFF (CH-004)
Self-attacking: "Confirm 3 voices (plan / red-team / translate) each signed with previous-page reference. If any missing → design is demo (no continuity)."
Verification: "Cite 3 crossings: previous DS (1) + charter active-set (2) + axis-tag (3)."
Abort: "If DS page lacks 3 signed voices + previous DS reference + charter-set reference → abort; file incomplete design as proposal in `proposals/`."
Own falsifier: "FALSIFIER: if after 3 DS compositions, any voice missing its previous reference → verdict: retire, lesson: design continuity broken, heir: previous DS version preserved."

## Mechanical verification check (applies to ADHA itself)
Before any prompt activates:
- Must contain "FALSIFIER" line (dogfood — per T1).
- Must reference at least 1 file by exact path (e.g., `charters/ch-001-prime.md`).
- Must contain "abort" with concrete action (e.g., "file violation in `violations.md`" — not just "stop").
If any missing → the prompt is rejected. This is the anti-demo check applied to our own output.
