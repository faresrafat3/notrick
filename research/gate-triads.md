# Gate Triads — R6 · SERIES 2 · "THE GATE THAT CAN FAIL" (2026-09-08)

Executor: S2-20260908-01 goal-loop · claim logged before work · walls: no execution/runtime/fuel,
no doctrine writes, no Owner-by-right fields, no building of new gates (read/propose series law,
RATIFICATION-BATCH-001.md:27-29 — Part 6's GO is still `NOT YET`).

## The triad test (mechanical, derived from the doctrine's own law)
A gate exists for series purposes only if all three legs are nameable artifacts:
1. **GATE** — the criterion written on a page (file:line, re-runnable per MIC-23's refusal leg,
   mics/mic-23-gate-runner.md:8-10: "a claimed verdict with no re-runnable criterion → flagged
   as UNVERIFIED").
2. **CLAIM** — what it gates, with a falsifier (what failing means in records, not prose —
   REASON_LAW T-COLLAPSE standard).
3. **VERIFIER** — an identity separate from the claimant (R6, RULES.md:24-25: "Any claimed
   success passes a gate it does not own. A gate owned by the claimer is [not a gate]").
Missing any leg → the gate is stamped **UNTESTED-FORM** (cannot even be tested later until the
leg exists). All three present but never fired → **UNFIRED**. Fired against real material →
**FIRED** (with its firing record cited).

## The 9-gate inventory

| # | Gate | GATE leg | CLAIM leg + falsifier | VERIFIER leg + independence | Form | Fire |
|---|------|----------|----------------------|----------------------------|------|------|
| 1 | MIC-23 re-run gate | mics/mic-23-gate-runner.md:5-10 (trigger/act/refusal verbatim) | H3: gates catch overclaims (hypotheses-ledger.md:19-23); falsifier: 5 clean runs → perfect or decorative → manual ruling | MIC-23 itself re-runs the criterion and quotes output; budget line "quotes output, never summarizes" (:12) is claimant-independent | COMPLETE | UNFIRED (zero re-runs exist — nothing has run) |
| 2 | Zero-day GO gate | ZERO-DAY-RUNBOOK.md:4 ("Nothing here RUNS anything… 'go' costs the Owner one message") + RATIFICATION-BATCH-001.md:27-29 (Ruling: NOT YET \| GO verbatim, logged in CONTEXT) | Nothing executes before written GO; falsifier: any execution without the logged GO = violation (v-eligible) | CONTEXT.md decision-log holds the GO line; the Owner signs, the record verifies | COMPLETE | **FIRED (negative, standing)** — "NOT YET" is a live verdict; the hold IS the gate working |
| 3 | Boot gate | AGENTS.md BOOT GATE section ("No quote = no standing… void retroactively") + SUPERVISOR-CHIP.md:9 (spot-check duty) | An agent with no standing acts void; falsifier: unquoted action = v-eligible | Any supervisor/reader spot-checks (R6: verdict not claimant-owned); SUPERVISOR-CHIP names the check | COMPLETE | **FIRED (mechanical, repeated)** — every session boots with quotes; harness-run BOOT.md records its chain |
| 4 | Hash-pin gate | INTEGRITY.md:14-15,24 (44 pinned files; re-pin rule L14-15) | Post-hoc insertion is caught; falsifier: a MISMATCH row that provenance does not explain | Any auditor re-runs `sha256sum -c` — fully mechanical, claimant-independent | COMPLETE | **FIRED FOR REAL** — V-001 (fabricated pin caught, violations.md:5) and V-003 (post-pin change caught, :7). The ONLY gate that caught a live adversary act. Caveat on record: the register cannot pin itself (R3 register paradox, c39f54c0→c46f161a) |
| 5 | Masterpiece gate | charters/ch-003-maker.md:13 ("Prove a forge through the masterpiece gate — a real task exercised the charter") | Forges count only after real exercise; falsifier: a forge with no exercising K-line does not count (C0032 retirement trigger) | **OWNER TENSION**: the gate is defined INSIDE the Maker charter — the claimant of forges. The exercising K-line is written by the working agent (also the claimant). No external holder named | **INCOMPLETE** (verifier leg fails R6's ownership test in form) | UNFIRED |
| 6 | Council/RJ gate | charters/ch-002-council.md (council protocol) + H4 measure (hypotheses-ledger.md:25-29) | Pre-judgment alters plans; falsifier: 3 RJs with zero adopted binding conditions → council is theater → D-04 | Binding-conditions count per RJ, graded post-run — record-based | COMPLETE | UNFIRED (no RJ round with objections has ever convened) |
| 7 | Quorum gate | **MISSING** — PR-002 tier schedule never adopted (mill/FENCE.md:19 F0016) | — (no claim can bind to it) | — | **UNTESTED-FORM** | — |
| 8 | Wall-ledger gate | **MISSING** — format referenced (rcvm.md L55) but never instantiated (mill/FENCE.md:26 F0023; mill/ANTI_HALLUCINATION.md:7 documents the fabricated "wall ledger shows three wall-breaks") | — | — | **UNTESTED-FORM** | — |
| 9 | R6 ownership meta-gate | RULES.md:24-25 (the law itself) | Every gate above must have a verifier the claimant does not own; falsifier: a gate whose verdict is claimant-owned is void as a gate | This table (R6's audit) is its exercise — performed by a lane that owns none of the gates | COMPLETE | **FIRED (this round)** — leg 5 (masterpiece) fails it in form; legs 7-8 fail it for lack of form |

## Findings
- **F-1 (sharpest): the masterpiece gate is claimant-owned in form.** The Maker charter both
  claims forges and defines when a forge counts (ch-003-maker.md:13). R6 (RULES.md:24-25)
  voids exactly that shape. Cheapest repair (Owner-gated, not buildable by this series): name
  an external holder for the exercising K-line's verdict (e.g., the council gate, gate #6 —
  one RJ pass on the exercise record), or split the criterion onto a page the Maker cannot
  write (like mill/FENCE.md's separation of fence from lanes). Until then: every future forge
  claim is pre-voided by the doctrine's own law — the gate that can fail currently CANNOT
  pass, which is the mirror-image failure.
- **F-2: the hash-pin gate is the only gate that ever caught a real adversary act** (V-001,
  V-003) — and it is also the gate with the documented self-reference wound (register
  paradox). The doctrine's one proven wall is exactly the one R3 showed cannot fully pin its
  own register. Proven-but-wounded beats unwounded-and-never-fired: this is the series'
  evidence that the architecture's verification instinct is sound where it was mechanical.
- **F-3: two gates do not exist in form** (quorum: F0016; wall-ledger: F0023) — both were
  already fenced as hallucination magnets, and ANTI_HALLUCINATION.md:7 shows the wall-ledger
  lie was actually TOLD once. Their absence is not a gap in a list — it is an open door the
  audit already caught someone walking through.
- **F-4: two gates fire standing** — the GO gate (negative, holding the whole series in
  paper mode) and the boot gate (mechanical, every session). The series runs inside two
  working gates; every receipt exists because the GO gate said NOT YET.
- Relation to the wounds: X-05/X-08 (gate bypass, ledger forgery) stay OPEN at doctrine
  level; this round adds F-1 to their family (a fourth shape: the claimant-owned gate) and
  confirms H3 is still the right pre-registered test for gate #1 at zero day.

## Net
- 9 gates audited: **4 COMPLETE+UNFIRED · 3 FIRED (2 standing/mechanical + 1 real catch) ·
  2 UNTESTED-FORM (no gate artifact at all) · 1 INCOMPLETE (claimant-owned verifier)**.
- The gate that can fail: exactly one has failed-in-the-good-direction against real material
  (pins). Exactly one cannot legally pass today (masterpiece, F-1). Two are invitations
  (F-3). No gate was built this round; the GO gate held; zero writes outside the write lanes.
