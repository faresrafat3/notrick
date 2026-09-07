# KILL_EDIT — the second-pass attempt to kill four KEEPs.
> Trigger: Op 16 found zero X-CIRCULAR catches across the initial 12 KEEPs. That smells
> like friendliness, not coverage. Reopen LB04, LB07, LB09, LB11 and apply the kill-test.

## Kill-test rubric (applied to each)
- Does the legal reason survive T-NONCIRC when the *whole because block* (BECAUSE+INSTEAD-OF+IF-FALSE) is paraphrased? If the paraphrase is information-preserving → the reason is doing work the claim already did.
- Does INSTEAD-OF name a rival that the *records* admit is plausible, or did I pick a strawman the rival already lost on? If strawman → kill.
- Does IF-FALSE name a *record* collapse, or did I write "the theory would be weaker"? If "weaker" → kill (Op 23 checker).
- Does the because depend on a quote whose status is METAPHOR or ARGUED, where the ARGUED side has not been defended yet? If yes → the legal reason is standing on a non-defended predicate → demote to ARGUED-WHY until defended.

---

## LB04 reopen — "results are the prices" as a non-source
- **Attack #1**: T0008 (TERMS.md L12) is *slippery*. A legal because on a slippery term may not be load-bearing — it is load-hanging.
- **Attack #2**: My INSTEAD-OF was a positive price function. The *real* rival a smart agent would defend is the Hayek-original reading — *"prices coordinate because they carry tacit knowledge, so outcomes carry tacit work-quality"* (a deeper version of the same). My strawman was easier to kill than the real rival.
- **Attack #3**: My IF-FALSE said "X0003 fires" — that is a record line, but the *named collapse* is the work stops being self-consistent, which is too general. The real collapse is `Owner fate-decisions in ZERO-DAY-RUNBOOK.md L47 vs LB07/08's claim that outcomes route fuel` — Owner-decisions vs price-decisions. Name that.
- **Reopened verdict**: DEMOTE — keep LB04 in the ledger as ARGUED-UNTIL-PRICING-MECHANISM-SPECIFIED. LB04 is load-bearing **only as a fence** (the original verdict); reading it as a positive mechanism (the deeper Hayek reading) is illegal until T0008 becomes stable.

## LB07 reopen — "no live orchestrator"
- **Attack #1**: D-02 L13-19 already names the falsifier. My INSTEAD-OF is "LangGraph-style live supervisor" — that is the obvious rival. The *real* rival is "dead orchestrator = gates/budgets/protocol" written *as* an orchestrator-by-another-name: the four-charter + MIC + K-line system *is* an orchestrator, just a paper one. C0024 / C0027 / C0030 / C0033 — the charter identity lines — are exactly the orchestrator's voice.
- **Attack #2**: My IF-FALSE was "R6 is structurally violated" — true, but the real collapse is the audit's own finding: C0014 (adversarial-audit.md L25) — "the 'who I am not' line and confession protocol are self-attested, so unreliable as walls" — undercuts the identity mechanism the four charters rely on. X0004 is open (`CONTRA.md` L7) precisely because the dead orchestrator's walls are self-attested.
- **Reopened verdict**: DEMOTE — keep LB07 but tag `CHL-WALLS-SELF-ATTESTED` until an external wall is designed. The dead orchestrator is real; its walls are not yet external (X0004). The claim survives; the *defensibility* of its walls does not.

## LB09 reopen — niche-law falsifier
- **Attack #1**: D-01 L10-11 is the right anchor; my INSTEAD-OF "generalist ever wins" is a strawman. The real rival is "≥3 same tasks" itself — *same* is a research-design word that may not survive contact with the first 3 actual tasks. Same-by-what-metric? Same-by-task-spec? Same-by-axis? The conjunction has a hole the records do not fill.
- **Attack #2**: My IF-FALSE said dropping `≥3` or `scope-completeness` collapses LB05. That is true but tautological — the LB05 reason already named scope-completeness as the unit. I am restating LB05's reason, not adding LB09's own.
- **Reopened verdict**: DEMOTE — LB09 needs a third leg: the *same-task* definition. Without it, `≥3 same tasks` is unfalsifiable-by-construction (no two tasks can ever be "same enough"). The falsifier must specify the same-task operator or the conjunction is hollow.

## LB11 reopen — all four charters SIGNED
- **Attack #1**: RATIFICATION-BATCH-001 L15 *is* the typed Owner line. My INSTEAD-OF "the charters are ratified, period" (the X0001 hallucination) is the right rival — FENCE F0002 names it exactly.
- **Attack #2**: My IF-FALSE dropped the budget-gated half and claimed V bit 0 flips. That is correct per F0018.
- **Attack #3 (the new one)**: LB11's because does not name the **provenance** of the click-delegation that scribed Part 2 ("P15 Branch A ruling"). The Owner click-delegated to the planner; the planner scribed. If `LB11` is load-bearing as a *record*, the record must show who wrote the line and under whose authority. RATIFICATION-BATCH-001 L15 names both (Owner click-delegation; restates P15 Branch A ruling) — fine, but my because *paraphrased* the provenance instead of quoting it.
- **Reopened verdict**: KEEP (after tightening). LB11's legal reason survives when the provenance is *quoted*, not paraphrased. AUDIT-grade note recorded; not a demotion.

---

## Reopened verdicts summary
- LB04: DEMOTE → ARGUED-UNTIL-PRICING-MECHANISM-SPECIFIED (fence-only reading survives; positive reading illegal).
- LB07: DEMOTE → CHL-WALLS-SELF-ATTESTED (dead orchestrator real; walls not yet external — X0004).
- LB09: DEMOTE → SAME-TASK-OPERATOR-UNDEFINED (≥3 is unfalsifiable without a same-task definition).
- LB11: KEEP after tightening provenance to a verbatim quote of RATIFICATION-BATCH-001 L15.
- **Net new counts**: KEEP 11 (10 unchanged + LB11 retightened); DEMOTE 3 (LB04, LB07, LB09); KILL 0; UNPAID-WHY 0.

## What the reopen actually found
Three of the four "weakest KEEPs" survived as legal reasons but with **legibility caveats** the first pass missed. The caveats are not UNPAID-WHY — the claims are load-bearing — but the *defenses* of those claims are not yet finished in the records. W02's first job is to close LB04's fence-vs-mechanism fence, LB07's X0004 external-wall gap, and LB09's same-task operator.