# BREAKER — MEASUREMENT THEORY: making "novel-viable" computable
> breaker lane · guest-breaker · wall: no execution, no builder files, no Owner fields.
> Round 5 mandate: formalize novel-viable vs derivative-honest vs retire-candidate as a
> DECISION PROCEDURE (inputs, thresholds, tie-breaks), plus grid-fill-rate computable
> from K-lines (numerator/denominator/contradiction-count EXACT), plus interaction with
> PR-002 quorum tiers. Output: this file + proposals/BRK-002 (metric adoption).
> If no metric results, this round FAILS EXPLICITLY and logs so. It did not fail: the
> metric below is defined, computable from K-lines alone, and Owner fields left empty.

---

## 0. Why the Owner's empty breakthrough field can be made computable
crossword-engine.md:132-137 already names the Owner's empty field:
> "**Breakthrough = grid fill rate ≥ X% without contradictions across Y dimensions,
> sustained over Z tasks.**"
This round makes every term in that sentence a DEFINED COUNTER over K-lines (the 4-tuple
{CH-set · axis · wall · gate} of templates/DS.md:27 and rcvm.md:48-57). X, Y, Z stay
Owner-by-right; the breaker PROPOSES candidate defaults (BRK-004) and never fills.

## 1. Inputs (all read from the record, nothing else)
For an entity E (charter/MIC/hypothesis/claim) over a window W of tasks:
- **Squares** = coordinates (ds-id, attempt-id) that the DS allocated (templates/DS.md:11-29;
  rcvm.md:24-29 addressing). A square carries a K-line {A,D,W,G}.
- **WF(K)** (well-formed, rcvm.md:59-62) iff:
  - A ≠ ∅ · D ∈ Axis (finite vocabulary, mic-31) · W ∈ Wall (finite ledger) · G = PASS.
- **S** (counted squares) = |{squares with WF(K) and no R10 flag}|.
- **C** (contradictions, EXACT — the R10 count) =
  |{squares with G=PASS that an R10 sweep flags}| + |{squares whose lesson/fate
  contradicts a settled entry's fate}|.
  An R10 flag fires iff the square's down-axis (D) or across-set (A) or wall (W) "clash"
  with an already-placed entry — defined mechanically as: the same (D,W) pair already
  produced a FAILED gate on a PRIOR attempt of the same task, or the same (A,W) pair
  contradicts a visionary settled fate (expand vs retire on the same axis).
- **U** (unfilled budgeted squares) = DS budget attempt count minus attempts actually run.
- **d_i** (derivative tag per claim, from OPS_QUEUE OP-048..049: 24 rows in claims-v1 §ب-4)
  = `original | derived | derived-modified` per the lineage-audit (not yet built — the
  tag is assigned when OP-049 runs; until then the claim is unclassified, not original).

## 2. Grid-fill-rate (GFR) — the exact counters
```
D (denominator) = Σ over tasks in W of (DS budget attempts)   = S + C + U   (all budgeted squares)
N (numerator)   = S                                            (WF(K), no contradictions)
C                = contradiction count (defined above, EXACT)
GFR              = S / D            ∈ [0,1]     — the raw fill rate
GFR* (quality)   = S / (S + C + U)  = GFR       — same; C and U subtract from the same denominator,
                                                   so GFR* = GFR by construction. The "without
                                                   contradictions" clause is enforced as the SEPARATE
                                                   equality C = 0, not as a discount inside GFR.
Breakthrough-candidate  ≡  GFR ≥ X%  ∧  C = 0  ∧  sustained (min over the Z-task window) ≥ X%  ∧
                            across Y dims (Y = number of K-line fields with real values: A-entries,
                            D-axis, W-id, G — WF already demands all four; Y is then the count of
                            DISTINCT dims the window's squares actually exercise, capped at 4).
```
- Why C is not a discount inside GFR: a contradiction is a REJECTED ENTRY (RULES.md:47),
  not a failure-of-fill. The crossword rule wants the grid to be free of contradictions,
  and the "sustained" Z-window is where that is proven. GFR without the C=0 clause could
  be gamed by filling contradicting squares — the clause is the R10 teeth.
- Contradiction-count is a WINDOW property: a square whose conflict is later re-gated and
  overruled by a gate it does not own (R6) is NOT a contradiction — the re-run's output is
  the truth (mic-23: re-run quotes output verbatim). C counts only squares that an R10
  sweep (or the verifier's re-run) FLAGS and that stay flagged.

## 3. Decision procedure — novel-viable / derivative-honest / retire-candidate
```
INPUT: per claim c_i in E: {square counts s_i, contradictions c_i, derivative d_i}, window W, tier t
STEP A (R10 sweep): any c_i > 0 in W → the CLAIM is REJECTED-AS-SETTLED. STOP for that claim.
STEP B (quorum): t from PR-002 tiers (1/3/5). A FINAL verdict may use only data whose tier has
        matured (table in §5). Below its tier → status = collecting. A claim may be
        EXPLORATORY-rated (weak evidence) but never FINAL.
STEP C (novel-viable) iff ALL:
  (a) ∃ i: d_i = original (the claim's core idea is not a landed import — OP-049's "أصلي"),
  (b) s_i ≥ ceil(α·D) over W   (α = threshold, Owner-by-right; BRK-004 proposes defaults),
  (c) C = 0 in W,
  (d) tier(t) ≥ minimal tier for the class (novel-viable needs ≥ 3-task window per §5).
  Verdict word: NOVEL-VIABLE.
STEP D (derivative-honest) iff:
  All c_i d_i ∈ {derived, derived-modified} AND no c_i > 0 AND GFR ≥ α.
  Verdict word: DERIVATIVE-HONEST (real, honest, not novel — the system may keep it;
  it is not a breakthrough and never promoted to the breakthrough definition).
STEP E (retire-candidate) iff ANY:
  (e1) c_i > 0 in W for a CLAIM that was REJECTED-AS-SETTLED and its entity has no other
       live claim, OR
  (e2) GFR < β (β < α, Owner-proposed default β = α/2) across the entity's full quorum
       window AND zero counter-factual new axes in the ledger (mic-31 ledger empty of new
       axes for that entity), OR
  (e3) novelty exhausted: d_i = derived for ALL i over N ≥ 5 tasks and no original ever
       appeared (only at Tier-2, 5 tasks).
TIE-BREAKS (documented, pre-registered):
  TB-1 novel vs derivative: a claim is novel only if its ORIGINAL square(s) are FILLED
        WF(K) squares. A "prose-original" with zero filled square = DERIVATIVE by measure
        (the doctrine: results are the only prices, FOUNDATIONAL-BRIEF.md:45).
  TB-2 retire vs continue: continue if the entity's axis ledger holds ≥1 unattempted new
        axis (an untried angle is a live counter-factual; R3's wall-as-asset). Retire only
        when the ledger holds no fresh axis.
  TB-3 two entities same verdict on the same axis: GFR-priority — the one with higher
        (GFR, lower C) keeps the axis; the other becomes retire-candidate (Gause,
        ten-axis-knowledge-map.md:5-6).
```
- The procedure is RECURSIVE: after a retire verdict, the entity's lesson and heir (ARC
  Omega-5) feed a new square; after a novel-viable verdict, its K-line joins the settled
  entries the next claim must cross (R10).
- Falsifier of the procedure (pre-registered): if a stranger (SRS battery, pr-009) replays
  the same record set and arrives at a different verdict class for any claim in the window,
  the procedure is under-specified → re-forge the tie-break that let it diverge.
- Measurer: a disinterested party (Owner's deputy or supervisor-on-duty per pr-003; never
  the breaker and never the entity whose claim is measured).

## 4. What counts as a "contradiction" — the exact test set
A square is C (contradiction) iff EITHER:
1. R10 sweep: its (D or W or A) collides with a settled square's same field AND the
   collision was flagged (the sweep is a mechanical MIC-31-style walk: same D-axis pair,
   same W-id, same A-union → flag), OR
2. Gate contradiction: a re-run (mic-23) of its claimed gate output FAILS — the
   square's own gate contradicts its claimed G=PASS. This is the ONLY case where the
   verifier's re-run overrides; it is the R6 no-trick teeth.
Everything else (a square with a lesson that merely "differs" in wording but does not
reverse a fate or a gate) is NOT a contradiction. Under-reporting C is the metric's
gaming surface — hence GFR* treats C as the denominator's sibling, not a discount.

## 5. Interaction with PR-002 quorum tiers (which verdicts at task-1 vs 3 vs 5)
Per pr-002 (proposals/pr-002-quorum-tiers.md:13-18) and its cross-exam adoption
(proposal-cross-exam.md:19-27): tier-0 = first task (H2 · D-06 count · H4 accumulation);
tier-1 = 3 tasks/RJs (H1 · H4 · D-01 · D-07); tier-2 = 5 tasks/runs (D-02 · H3 · D-03 · H5).

| Verdict class | task-1 (tier-0) | 3 tasks (tier-1) | 5 tasks (tier-2) |
|---|---|---|---|
| REJECTED-AS-SETTLED (contradiction) | ALLOWED (R10 sweep is cost-less) | ALLOWED | ALLOWED |
| NOVEL-VIABLE | FORBIDDEN — collecting only | ALLOWED if min-GFR ≥ X% over the 3-task window, C=0 | ALLOWED, FINAL |
| DERIVATIVE-HONEST | FORBIDDEN | ALLOWED at tier-1 (negative claim about novelty is cheaper to make) | ALLOWED, FINAL |
| RETIRE-CANDIDATE (e1/e2) | FORBIDDEN — collecting | ALLOWED for e1 (contradiction-window) and e2 (GFR<β with no new axes) | ALLOWED for e3 (exhaustion, N≥5) only at tier-2 |
| Breakthrough-candidate | NEVER — the Owner's empty field is not fillable by the metric | NEVER | NEVER (Owner's line only) |

- Interaction rule: a verdict class may be STATED as soon as its tier matures, but the
  metric's own counters must be recorded in the result record's K-line (R5) from task-1,
  so the window data exists when the tier does. No retroactive counting — a task whose
  K-line lacks the counters does not enter D.
- This maps 1:1 onto claims-v1 §ب-4's 24 rows (OPS_QUEUE.md:84-91): OP-051's "novel-viable /
  derivative-honest / retire-candidate" is the §3 procedure applied per row at its tier.

## 6. The metric's own obituary (ARC-style, pre-registered)
- Falsifier: if after the first 3 real tasks with counters in K-lines, the §3 procedure's
  verdicts match the Owner's manual read on ZERO claims (or the procedure is impossible to
  run from the records — missing counters), the metric is dead weight → retire via Omega-5.
- Measurer: Owner or named deputy (disinterest — the breaker proposed the metric, so the
  breaker cannot measure it).

## 7. Honest limits
- X, Y, Z, α, β are Owner-by-right; BRK-004 proposes defaults (X=50, Y=4, Z=3, α=0.5,
  β=0.25) for the Owner to edit or reject. The breaker fills NOTHING on disk.
- The derivative tag (d_i) depends on lineage-audit (OP-048..049), which does NOT exist yet
  (OPS_QUEUE.md:84-86 ☐). Until OP-049 runs, every claim reads `unclassified` and Step C(a)
  cannot fire — the procedure is COMPLETE as a spec but DATA-GATED on a builder output.
  That gating is recorded, not hidden.
- The procedure prices verification the same way the Y-series demands: the counters
  themselves (D,N,C) are the cheapest receipt class (hash+count, no full re-run) —
  feeding BRK-009's verify-budget.

---

*Round 5 did NOT fail explicitly — the metric is defined, computable, tier-mapped, and
falsifiable. The Owner's empty fields stay empty.*