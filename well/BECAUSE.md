# BECAUSE — the because-ledger for all 12 load-bearing claims.
> Format: ID | claim | because_contrastive | instead_of | if_false | kind | tests | verdict KEEP/DEMOTE/KILL/UNPAID
> Tests column shows T-CONTRAST/T-NONCIRC/T-COLLAPSE/T-ANCHOR/T-COST as pass/fail.
> Each row's full legal reason lives in `well/LB-NN.md`. This file is the index + verdict ledger.

---

## LB01 — Only WF(K) squares enter the grid (C0001, Q0001)
- **because_contrastive**: Q0001 (rcvm.md L63) makes the rule conjunctive on four independent predicates `A ≠ ∅, D ∈ Axis, W ∈ Wall, G = PASS`; dropping any one changes which squares the grid stores.
- **instead_of**: **Strengthened rival** (per Op 17): not just "the grid stores results" but the **Curator-as-coach-checker** reading — the grid stores any square with a valid K-line *structure*, and the K-line is just the four-tuple *shape*; whether the wall was actually broken is the Curator's secondary judgment. This rival reads true on rcvm.md L43 (`THEME(axis)` returns a Prime migration trigger — the migration judgment is OUTSIDE WF(K)). It loses because: the migration judgment uses `W` as INPUT to `THEME(axis)`, not as a replacement for it; `W` must pre-exist in the ledger (T0010 stable reference to "wall ledger") and the four-conjunct WF(K) is the gate that admits `W` to the ledger in the first place. The stronger rival therefore *needs* LB01 — it does not replace it.
- **if_false**: Drop `W ∈ Wall` and MIC-23 has no wall to re-run; R10 loses its "intersects already-placed entries" test; H1 (LB05) and its falsifier (LB09) become unfalsifiable.
- **kind**: E-CONSTITUTION + E-COLLAPSE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP. (W00 trained; full reason in well/LB01.md.)

## LB02 — Nothing exists without its death written first (C0004, Q0004)
- **because_contrastive**: arc-protocol.md L24-25 (ALPHA-7 Q4) makes the obituary *evidence-detectable*: "when it stops being useful" is not an obituary, it is a shrug. The claim rides on `OBITUARY = condition falsifiable by observation`.
- **instead_of**: A post-hoc retirement log (SRE practice; arc-protocol.md L15 names this as existing). Loses on retrofittability: under post-hoc, the kill event can be redefined to spare an entity (the Factorio pattern Q0005 warns against).
- **if_false**: LB09's falsifier (≥3 generalist wins → re-forge) becomes contestable; after the third generalist win the niche can be defended by rewriting its obituary.
- **kind**: E-EVIDENCE + E-COLLAPSE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP. (W00 trained.)

## LB03 — An entity that cannot die cannot be honest (C0005, Q0005)
- **because_contrastive**: Q0005 is two-condition (arc-protocol.md L10-13): (a) without a kill predicate the entity *optimizes existing over delivering* (Factorio pattern, population-level); (b) without a pre-written condition, *politics* — not evidence — terminates. Both legs are independent and load-bearing.
- **instead_of**: "We retire charters regularly so mortality is real." The rival matches org intuition; loses on leg (b): regular retirements are still politics-driven unless the kill condition is pre-registered (LB02 predicate).
- **if_false**: Leg (b) drops → LB09 unfalsifiable; R8 (Owner terminus) becomes the bottleneck for retirements that the doctrine was supposed to settle; V never advances (only O.THRESHOLD_WRITE moves V — VERSION.md / rcvm.md L160).
- **kind**: E-EVIDENCE + E-DEPENDENCE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP. (W00 trained; AUDIT_W00 #3 downgraded the "Owner is busy arbitrating" wording.)

## LB04 — Results are the prices (C0007, Q0007)
- **because_contrastive**: T0008 is **slippery** (TERMS.md L12 — no pricing mechanism specified) and CLAIMS.md L10 tags C0007 as METAPHOR. The claim is load-bearing only as a *non-source* — it fences against vibes/committee/central-evaluator, not as a positive mechanism.
- **instead_of**: A positive claim "this swarm has `p(attempt) = quality × scope-completeness`." Loses on: no rule/gate/counter emits such a `p` anywhere (FENCE F0017 — zero honoring-cost measurements exist).
- **if_false**: Read positively → X0003 fires (CONTRA.md L6 — results-as-prices vs Owner fate-decisions are unreconciled); either Owner-port sovereignty (C0002 / C0047) or the prices claim dissolves; the work stops being self-consistent.
- **kind**: E-ELIMINATION + E-DEPENDENCE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP — but as a **fence**, not a mechanism. W01 downgrades any positive reading.

## LB05 — H1: niche agents produce fewer out-of-burrow actions (C0010, Q0010)
- **because_contrastive**: Q0010 is the *operational form* of niche law; D-01 L6-11 names four jointly motivating reasons (Gause + Ricardo + Goodhart containment + compartmentalization). H1 supplies the conjunction *empirical* claim those four jointly motivate, plus the falsifier the rivals lack.
- **instead_of**: "Specialization is good because specialization is generally good" (the standard multi-agent framing). Loses on missing falsifier — D-01 L10-11 supplies the kill-switch (≥3 same tasks, generalist wins on quality AND scope-completeness → re-forge); the rival has no equivalent.
- **if_false**: H1 read as posture (not empirical) → LB09 unfalsifiable; R7's "documented demand" anchor (RULES.md L28) loses its empirical base; Maker's retirement trigger (C0032) collapses.
- **kind**: E-EVIDENCE + E-COLLAPSE.
- **tests**: ok/ok/ok/ok/ok (AUDIT_W00 #2 — dropped "exclusion/comparative advantage/compartmentalization" parenthetical glosses; the file carries the four reasons, not my rewords).
- **verdict**: KEEP. (W00 trained.)

## LB06 — Niche law: every entity is a niche or it is not born (C0016, Q0016)
- **because_contrastive**: RJ-001 L11 demoted Maker from axiom to *application* of the niche law. The demotion is the predicate: niche law is the sole generator of entity birth; decision-review.md D-01 L6-11 supplies the testable alternative.
- **instead_of**: "Entities are born on documented demand" (the literal R7 phrasing, RULES.md L28). Loses on the missing word **niche** — R7 names the trigger (demand) but not the law of the entity. The conjunction `BIRTH(ε) ⇒ (∃ burrow(ε)) ∧ (demand ∈ {NO_NICHE, OWNER})` is the unit.
- **if_false**: Drop `∃ burrow` → charters born without burrows (R7 bans this explicitly — ch-003-maker.md L18); LB05's `niche-constrained` predicate drifts; LB09 no longer applies.
- **kind**: E-CONSTITUTION + E-COLLAPSE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP. (W00 trained.)

## LB07 — No live orchestrator; structure + budgets + results-as-prices (C0017, Q0017)
- **because_contrastive**: Q0017 + rj-001 L7 corrected wording — "gates/budgets are a *dead orchestrator* — protocol, not a manager." D-02 L13-19 names the alternative form (no orchestrator) and the falsifier (≥5 recorded tasks, coordination failures > wins → re-evaluate R1).
- **instead_of**: A live supervisor / orchestrator (LangGraph-style; D-02 L14 names this). Loses on the Factorio wall (D-02 L17 — "an orchestrator that refines itself is the efficient-cheat pattern"): any live orchestrator that can write its own prompts is the gate that owns the claimant (R6 violation: "a gate owned by the claimer is not a gate," RULES.md L25). The dead form sidesteps this — protocol writes no prompts.
- **if_false**: Adopt a live orchestrator → R6 is structurally violated; the orchestrator's gate is the orchestrator's verdict (the Factorio wall fires); receipt-attack model (R-3 of cross-exam L70-72) loses its anchor because MIC-23's re-run is no longer unowned.
- **kind**: E-CONSTITUTION + E-ELIMINATION.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP.

## LB08 — cost(verify) = cost(execute) bankrupts fuel at swarm parallelism (C0019, Q0019)
- **because_contrastive**: Q0019 / proposal-cross-exam.md L57-59 frames verification as an *economic* problem: at swarm parallelism, the verification budget is a *second* execution budget, and fuel bankrupts before H3's quorum fills. The claim rides on `verification_cost × parallelism ≥ fuel budget` — a quantity, not a vibe.
- **instead_of**: "Verification should be cheap, always" (the noble-sounding rival). Loses on the falsifier PR-005 itself names (R-4 cross-exam L73-77): receipts prove existence and self-consistency, never correctness; full re-run sampling remains the truth-floor. The cheap-only rival is exactly what PR-005 was written *against* (cross-exam L77: "Truth remains the full re-run → keep SAMPLING: full re-run with probability p per claim, plus ALWAYS on fate-decision claims and any claim the Owner personally reads").
- **if_false**: If verification is treated as moral ("be honest!") not budgetary, then nobody prices checking itself; the swarm rate-limits and dies before the first H3 quorum. Cheating pays > `p × penalty` for every cheat class (cross-exam L79-81), so verification must be priced, not pleaded for.
- **kind**: E-EVIDENCE + E-DEPENDENCE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP — the first measurable cost claim in the ledger; LB08 is the bridge from moral to economic language.

## LB09 — Niche-law falsifier: generalist wins ≥3 same tasks → re-forge (C0022, Q0032)
- **because_contrastive**: decision-review.md L10-11 specifies the falsifier's two-conjunct shape: `(quality AND scope-completeness) ≥ 3 same tasks` — both legs required, both observable, both falsifiable. D-01's full falsifier block (L6-11) couples the falsifier to the four reasons, not to the framework's mood.
- **instead_of**: "Niche law dies if a generalist ever wins" (the trivial rival). Loses on the conjunction: scope-completeness is the leg that catches the case where a generalist wins one axis but misses three. The conjunction is what stops the falsifier from firing on a single lucky win.
- **if_false**: Drop the `≥3` floor → a single generalist win re-forges niche law; the work becomes a posture. Drop `scope-completeness` → an agent wins on quality alone, misses 3 burrows, niche law still stands; LB05's `fewer out-of-burrow actions` becomes unfalsifiable because the metric stops measuring what H1 measures.
- **kind**: E-CONSTITUTION + E-COLLAPSE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP. The conjunction is non-negotiable (T-COST).

## LB10 — Maker forges only on documented demand (C0030, Q0040)
- **because_contrastive**: ch-003-maker.md L18 names the explicit prohibition: "Forging on speculation, symmetry, or 'for completeness' (R7)." Q0040's predicate is `demand(ε) ∈ {NO_NICHE_CALL, OWNER_DEMAND}`, both *recorded*. The claim is load-bearing because both elements of the trigger are written down, not vibes.
- **instead_of**: "Forging when needed" (the colloquial rival). Loses on the *recorded* leg: "needed" is private; a recorded NO NICHE call or Owner line is auditable. F0009 names the trap (Curator being addressed as existing) — that is exactly the kind of speculative birth the rule bans.
- **if_false**: Drop the `recorded` leg → the Maker's charter loses its retirement trigger (C0032: "when NO NICHE calls stop coming and Owner demands stop"), because the *count* of NO NICHE calls is no longer auditable. Maker never retires. C0006 ("novel element is death-as-first-class-citizen") becomes decorative.
- **kind**: E-CONSTITUTION + E-COLLAPSE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP.

## LB11 — All four charters SIGNED into active law 2026-09-06 (C0046, Q0056)
- **because_contrastive**: RATIFICATION-BATCH-001.md L15 holds the typed Owner line: *"Type P2: sign all four charters into active law"* — and L12 holds the still-budget-gated note ("Signing into active law (still budget-gated by zero-day pre-flight)"). The claim rides on the *conjunction* (signed AND budget-gated), not on the signed-alone reading.
- **instead_of**: "The charters are ratified, period" (the rival X0001 names as the live hallucination — `CONTRA.md` L4 + FENCE F0002). Loses on the budget-gated half: zero-day is still blocked (RATIFICATION Part 6: NOT YET; F0005 / F0022). The signed-but-blocked reading is what X0001 already lost on.
- **if_false**: Drop the budget-gated half → the work claims to have moved past zero-day; V bit 0 (governance) reads as flipped; F0018 fires ("Treating 'ACTIVE LAW' charter headers as lifting budget gates — the signature is explicitly 'still budget-gated by zero-day pre-flight'"); smoke call status gets miscited as AUTHORIZED.
- **kind**: E-EVIDENCE + E-ELIMINATION.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP — *with caveat*: any reformulation that drops the budget-gated half is the X0001 hallucination and is itself a fence (see WHY_FENCE pattern #5 in spirit).

## LB12 — Provider exchange not built; nothing claimable working (C0050, Q0061)
- **because_contrastive**: provider-exchange-note.md L16 says "**NOT BUILT. Nothing here may be claimed working.**" The claim rides on the *landing-criterion* gate at L17-18: a real task that rate-limits, demand-documented per R7 spirit. Until that fires, the doctrine's stance is "design, not build."
- **instead_of**: "Provider keys are unproven fuel" (F0010 — the rival reads as if keys are the load-bearing object). Loses on the wrong noun: the *exchange* (rotation + per-niche budget accounting) is what is not built; keys are unproven but they exist (38 keys, note L5). Conflating them is F0010 / F0019.
- **if_false**: Drop "NOT BUILT" → the exchange gets described as if it routes; rate-limit becomes a solved problem; R11/R12 are violated (the exchange is runtime, never doctrine — note L13). F0019 fires ("Reporting provider-exchange rotation as running infrastructure").
- **kind**: E-EVIDENCE + E-DEPENDENCE.
- **tests**: ok/ok/ok/ok/ok.
- **verdict**: KEEP — the claim is the only one that *protects* F0019; it must not weaken.

---

## Verdict counts (W01)
- **KEEP**: 12 / 12.
- **DEMOTE**: 0.
- **KILL**: 0.
- **UNPAID-WHY**: 0.

This is suspicious (see Op 16). Op 16 reopens LB04, LB07, LB09, LB11 and attempts to kill each.
---

## W03 ADDENDUM (2026-09-08 · SERIES 2 R4 · executor S2-20260908-01 goal-loop)
> Appended per HANDOFF_W03 + UNPAID_WHY retirement rule. Rows above are annotated by
> reference; nothing above this line was edited.

### LB04 — positive form (UW01 fill; retires UW01)
- **BECAUSE (positive form):** results-as-prices permits exactly one act — fate decisions
  (expand/refine/retire) that cite a documented result record, ratified in writing by the
  Owner. VERSION.md:14-17 ("fate decisions made from results"; "v1.0 is what the RESULTS
  say it is") + VERSION.md:23 ("Only the Owner moves the version. The agent may PROPOSE a
  move with evidence") + RULES.md:33-35 (R8, terminus IN WRITING). The joint that X0003
  demanded: **results PROPOSE, the Owner RATIFIES** — neither source alone is the price.
- **INSTEAD-OF:** fate by unbound authority (Owner fiat without record). Loses on
  VERSION.md:23 binding even the Owner's version-move to the scale + evidence, and on R8's
  in-writing requirement — the rival has no artifact it may point to.
- **IF-FALSE:** if ratification alone is the price, X0003 fires — fates detach from
  outcomes and R5 K-lines stop indexing decisions; if records alone are the price, R8
  collapses and the appeal terminus vanishes.
- **T-COST:** forbids both "the Owner prices by taste" and "records execute fates without
  the Owner".
- **tests:** ok/ok/ok/ok/ok. **verdict (LB04):** DEMOTE→ARGUED-UNTIL-PRICING-MECHANISM-
  SPECIFIED upgraded to PAID-AS-FENCE-AND-JOINT (fence reading intact; the positive form is
  the propose/ratify joint, not a price function — T0008 stays slippery, honestly).

### LB09 — same-task operator (UW03 fill; retires UW03)
- **Operator (W03):** two tasks are the SAME iff (1) identical axis tag (MIC-31's emitted
  tag), (2) identical input-bind (well/INPUT_BIND.md structure: same bound MILL files +
  same bound claim), (3) identical success criterion (the K-line's wall+gate fields per R5,
  RULES.md:20-22). Anchors: mics/mic-31-axis-tagger.md · RULES.md:20-22 ·
  research/hypotheses-ledger.md:7-11 (H1's paired design).
- **INSTEAD-OF:** "same = the experimenter's judgment call" — loses because it lets the
  falsifier fire-or-not by dispute, which is exactly the X-CIRCULAR UW03 named.
- **IF-FALSE:** if the three-field match is wrong, the ≥3 counter can never legitimately
  reach 3 — D-01's falsifier never fires and niche-law re-forge becomes unreachable by
  evidence (a record-level death, not prose).
- **T-COST:** forbids calling two tasks "same" without the three-field match.
- **tests:** ok/ok/ok/ok/ok. **verdict (LB09):** DEMOTE→SAME-TASK-OPERATOR-UNDEFINED
  upgraded to PAID-OPERATOR-UNTESTED (defined and anchored; untested until the first
  paired runs — the ledger's own declared pre-zero state).

### LB07 — KILLED (UW02 attempt failed; retires UW02 by kill)
- Attempt and failure recorded in well/KILL_EDIT.md W03 + well/KILLED_WHYS.md W03.
- **verdict (LB07): KEEP → KILLED** — no standing external wall exists in the tree;
  walls self-attested (X0004 open). D-02 keeps the claim at doctrine level with its own
  falsifier (H2). Revival: Owner-forged external wall (P-013 [A] / P-005 ruling).

### REDUCES-TO (re-test of LB01..LB12 against the 6 TRUE STOPS: R3/R6/R7/R8/R9/R10)
| LB | reduces to | note |
|----|-----------|------|
| LB01 | R6 | gate ownership conjunction (rcvm.md L63) |
| LB02 | R3 | pre-registered kill (arc-protocol.md L24-25) |
| LB03 | R3+R8 | mortality + Owner terminus |
| LB04 | R10+R8 | evidence-crossing + ratification joint (W03 fill) |
| LB05 | R7+R10 | niche + crossword (D-01) |
| LB06 | R7 | niche law (RULES.md L28) |
| LB07 | — | KILLED (no stop holds a walled claim without a wall) |
| LB08 | R6+R3 | unowned gate + budget wall |
| LB09 | R7+R3 | demand + kill-predicate (operator paid, untested) |
| LB10 | R7 | documented demand (ch-003 L18) |
| LB11 | R8 | Owner signature record (RATIFICATION L15, quoted provenance) |
| LB12 | R7 | demand + doctrine-vs-runtime (R12 is an operative derivative) |
- Result: 11/11 surviving LBs reduce to ≥1 TRUE STOP — 0 costume claims at claim level.

### PRIMITIVE-COSTUME dispositions (6, per PRIMITIVE_AUDIT.md)
- #1 (T0005, 3× promotion): KEEP as costume with caveat — an arbitrary numeric constant,
  Owner-owned by right (R8-adjacent); naming it constant-of-nature is the hallucination.
- #2 (T0008): retired as debt — filled by the LB04 joint (above).
- #3 (T0010, wall ledger): dead with LB07's kill (UW02).
- #4 (T0011, niche-law instance): retired as debt — filled by the LB09 operator.
- #5 (T0019, quorum): retired as debt — filled by the LB09 operator (same gap).
- #6 (T0020, honoring-cost): KEEP as costume with caveat — concept stable, measurement
  absent (F0017); feeds LB08's economic leg, remains an open measurement debt.
