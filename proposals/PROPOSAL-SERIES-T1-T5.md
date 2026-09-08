# NOTRICK — Deep-Dive Series (سلسلة 2) — Niche / Protocol / Methodology
> Created 2026-09-06 · session single · continuous /goal active · subagent-verified sequence
> Every task completes + verifies before the next launches. No silent handoff.

## Design philosophy (why this series)
The user prompt demands: keep going · deep dive · make something novel · make a breakthrough · choose niche · break boundary · make protocols · use unique methodology. The base: start-of-end + end-of-start, all-in-one.
NOTRICK's doctrine (R1..R12, ARC Alpha-7/Omega-5, four charters, four MIC seeds, version v0.00001) is the base. This series pushes into the gaps the doctrine itself names but does not fill — and builds the verification mechanism that prevents the agent problems the user named (hallucination, demo-not-product, silent exits, orphan heirs).

Every task uses a UNIQUE METHODOLOGY (named, not generic) and produces a PERSISTED DOCUMENT in ~/Projects/notrick/ (not chat-only). No chat-only results = no silent exits.

## The 5 tasks (ordered, gated)

### T1 — ARC: The HEIR Clause (the gap ARC exposes, the fix ARC demands)
Methodology: **Obituary-First Inheritance Design** (not standard inheritance — the heir must be named BEFORE the parent runs, per Alpha-7 Q7).
Output: `/proposals/PROPOSAL-T1-HEIR-CLAUSE.md` + updated charter template v2 fields.
Verification gate: the proposal must include its OWN obituary (per ARC's dogfood rule) — if it can't kill itself, it doesn't enter.

### T2 — Cross-Word Verification Protocol (CWVP)
Methodology: **Crossword Evidence Enforcement** (extending R10 — Haack — from claim-level to AGENT-WORKFLOW-level: every agent claim must intersect at least 3 already-placed K-lines, or it is rejected BEFORE execution).
Output: `/protocols/CWVP-v1.md` — a new protocol file, not in the repo today.
Verification gate: run the protocol against 2 real claims from CONTEXT.md's decision log (RJ-001 + version-stamp) — both must pass or the protocol fails its own falsifier.

### T3 — Anti-Demo / Anti-Hallucination Prompt Architecture (ADHA)
Methodology: **The Four-Role Prompt Fortress** (Prime / Council / Maker / Chief-of-Staff) — each role gets a UNIQUE prompt envelope with: (a) a self-attacking prompt, (b) a verification prompt it must call before any claim, (c) an abort prompt it must trigger on demo-pattern detection.
Output: `/protocols/ADHA-v1.md` + 4 concrete prompt templates (per role) saved as files in `/templates/`.
Verification gate: each prompt template must contain its own falsifier line (per ARC) — missing falsifier = rejected.

### T4 — MIC Activation Methodology: The Arc-Fed MIC (AFM)
Methodology: **Arc-Fed MIC** — a seed MIC is not activated by time or schedule; it activates ONLY when an ARC-compliant event enters its slot (budget event → budget-counter; doc without ID → id-formatter; gate claim → gate-runner; 3 same-axis tags → axis-tagger → migration to Prime).
Output: `/protocols/AFM-v1.md` + updated `mics/` interface descriptions with activation conditions.
Verification gate: each of the 4 MICs must have its activation event defined with Alpha-7 questions 1-7 answered — any unanswered = rejected.

### T5 — Integration: The All-In-One Synthesis (AI1S)
Methodology: **The All-In-One Synthesis** — the user's phrase — synthesized as a single document that: (a) ties T1-T4 into one loop, (b) defines its OWN obituary (per ARC dogfood), (c) proposes the version move from v0.00001 to v0.0001 ONLY if all 5 gates close.
Output: `/proposals/PROPOSAL-T5-AI1S.md` + updated CONTEXT.md tail (decision log) + version proposal.
Verification gate: the proposal must be signed by 3 voices (simulating Council R9) before submission — single-voice proposal = violation of plurality floor.

## Subagent workflow rules (MANDATORY — per user instruction)
1. Each T is a separate subagent call (not one big prompt).
2. After EACH T finishes: this agent verifies the output exists on disk (`ls`) AND reads its first 10 lines (verification, not assumption). Only then does the next T launch.
3. If any T's output is missing its obituary/falsifier line, the agent sends the subagent a correction prompt BEFORE launching T+1.
4. All 5 must complete in this session. The /goal tracks progress continuously.
5. Creative prompt engineering must go into the PROMPT ITSELF (not chat notes) — concrete prompt strings, stored in files.

## Connection to the session prompt
"Keep going · deep dive · make something novel · make a breakthrough · choose niche · break boundary · make protocols · use unique methodology · the base ones · the start of the end and the end of start · one the all in one ones."
This series takes the session prompt literally: T1 = start of the end (obituary first); T5 = the all-in-one; T3 = the protocol/unique-methodology; T2/T4 = niche/protocol breaks; every task uses a named, unique methodology.
