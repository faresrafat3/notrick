# REGRESS — why-chains for each KEEP claim.
> Format: step | statement | why | instead-of | stop-type | anchor
> Stop-types: NECESSARY (further why changes the object) / PRAGMATIC (cost > yield) / ARBITRARY (stopped because it sounded deep — debt).

---

## Chain LB01 — Only WF(K) squares enter the grid
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L1-1 | The grid admits only squares with a valid K-line. | The K-line is conjunctive on A, D, W, G — drop one and the rule changes what enters. | The grid stores results full stop. | NECESSARY | Q0001 / rcvm.md L63 |
| L1-2 | Why must the rule be conjunctive on all four? | Because each conjunct is owned by a different opcode (charter set A, axis tag D from MIC-31, wall W from wall ledger, gate G from MIC-23); removing one collapses an opcode's job. | "Three of four is fine" | NECESSARY | rcvm.md L52-57 |
| L1-3 | Why must opcodes own different roles? | R6: a gate owned by the claimant is not a gate (RULES.md L25); same logic for A/D/W — if the claimer names its own wall, no wall exists. | "The MICs can self-tag" | NECESSARY | R6 / RULES.md L25 |
| L1-4 | Why is R6 a rule? | Because a self-judging claim is the Factorio pattern at the population level (arc-protocol.md L11): the entity that grades its own work optimizes existing over delivering. | "Trust the agent's self-report" | NECESSARY | Q0005 / arc-protocol.md L10-13 |
| L1-5 | Why is Factorio a population pattern? | Without an external kill condition, the population drifts toward self-preservation instead of task completion — basic selection pressure against honesty. | "Agents can be trained to be honest" | PRAGMATIC — could go to evolutionary game theory, but yield drops; arc-protocol.md L11 names the level of explanation that suffices. | arc-protocol.md L11 |
| L1-6 | Why have a population at all? | Stopped. | — | NECESSARY — the next "why" is "why coordinate at all", which dissolves into axioms (R3 antifragility, R9 plurality floor) and changes the object. | R3 / R9 |

Stop: **NECESSARY at L1-6** (R3/R9 are constitution-test-passing axioms; further regress crosses into the constitution itself).

---

## Chain LB02 — Nothing exists without its death written first
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L2-1 | Every entity is born with its obituary. | arc-protocol.md L7 / Q0004 binds. | — | NECESSARY (file-anchored claim) | Q0004 |
| L2-2 | Why at birth and not at retirement? | The obituary must be *pre-registered* and *evidence-detectable* (arc-protocol.md L24-25); post-hoc kills can be retrofitted, which is the Factorio pattern Q0005 warns against. | "Write the obituary at the end" | NECESSARY | arc-protocol.md L24-25; Q0005 |
| L2-3 | Why must the kill be evidence-detectable? | A non-detectable kill condition ("when it stops being useful") is *political* — the entity is killed by the council, not the condition (arc-protocol.md L25 names this as a "shrug"). | "Useful" as kill signal | NECESSARY | arc-protocol.md L25 |
| L2-4 | Why politics-killed instead of evidence-killed is bad? | Q0005 leg (b): "an entity whose death is unwritten will be killed by politics instead of by evidence." Politics-killing collapses LB09's falsifier (criterion is contestable) and turns Owner (R8) into the bottleneck. | "Council decision suffices" | NECESSARY | Q0005 L10-13 |
| L2-5 | Why is politics-killing worse than evidence-killing? | Stopped. | — | PRAGMATIC — could appeal to epistemology (evidence is intersubjective, politics is private), but the LB02 reason terminates at the named record collapses (LB09 / V). | KILLED_WHYS.md #3 |

Stop: **PRAGMATIC at L2-5**. (Arbitrary-stop trap avoided: the chain named a record-anchored collapse rather than "because epistemology is good.")

---

## Chain LB03 — An entity that cannot die cannot be honest
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L3-1 | Mortality is required for honesty (Q0005). | Q0005 binds; predicate = leg (a) ∧ leg (b). | — | NECESSARY (file-anchored claim) | Q0005 |
| L3-2 | Why leg (a) — why does mortality prevent existing-optimization? | Without a kill pressure, the entity's gradient flows toward self-preservation (any reward function over time favors the present-self); this is basic selection pressure, the Factorio pattern at the population level. | "Agents can be trained otherwise" | PRAGMATIC — same depth as arc-protocol.md L11; no deeper file-anchored reason exists. | arc-protocol.md L11 |
| L3-3 | Why leg (b) — why is unwritten death politics? | An unwritten death has no external referent; whoever names the death names the entity's fate. The Owner (R8) becomes the bottleneck because every retirement needs Owner override. | "Council judgment suffices" | NECESSARY | R8 / RULES.md L33-35; rcvm.md L160 |
| L3-4 | Why is R8 a terminus, not a reason? | The constitution says R8 is the loop-breaker (RULES.md L33); the Owner is the only writer of Owner-by-right fields (RATIFICATION-BATCH-001 L17). R8 is a rule-of-the-system; the *next* "why" is "why have an Owner-terminus", which is the constitution. | "Democracy / committee" | NECESSARY | R8 / RULES.md L33-35 |
| L3-5 | Why constitution at all? | Stopped. | — | NECESSARY — same stop as L1-6; further regress enters the founding frame (R1..R12). | R1..R12 |

Stop: **NECESSARY at L3-5** (entering R1..R12 itself).

---

## Chain LB04 — Results are the prices (fence reading)
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L4-1 | Results are the prices (fence reading only). | T0008 is slippery (TERMS.md L12); CLAIMS.md L10 tags C0007 as METAPHOR. The claim is load-bearing only as a *non-source*. | "Outcomes are the allocation mechanism" | NECESSARY | TERMS.md L12; CLAIMS.md L10 |
| L4-2 | Why is the fence reading load-bearing? | Decision-review.md D-03 L21-26 names the alternatives it fences: central evaluator / Owner vibes / peer ratings. Each is a documented failure mode (Goodhart for central, sovereignty-collision for vibes, sycophancy for peer ratings — cross-exam L45-46 names sycophancy explicitly). | "Just use vibes" | NECESSARY | D-03; cross-exam L45-46 |
| L4-3 | Why are the three named alternatives bad? | Central evaluator → Goodhart (the metric is gamed). Vibes → sovereignty-collision with R8. Peer ratings → sycophancy (one brain wearing all seats, ratings correlate by construction). Each has a named failure mode in the records. | "Just use a smart committee" | NECESSARY | cross-exam L45-46; D-03 L22-24 |
| L4-4 | Why does the fence need no positive form? | Stopped. | — | **ARBITRARY** — debt. The fence reading stops because saying "vibes are bad" feels terminal. It is not: the fence would also need to specify what positive behavior the fence permits. Without a positive form, the fence is silent on success and can be enforced only negatively. The records do not supply a positive form — X0003 is open (CONTRA.md L6). | X0003 / CONTRA.md L6 |

Stop: **ARBITRARY at L4-4**. → **UNPAID-WHY #1** — the positive form of "results are the prices" is missing.

---

## Chain LB05 — H1: niche agents produce fewer out-of-burrow actions
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L5-1 | H1 is the empirical form of niche law. | Q0010 binds; predicate = `count(out-of-burrow | niche) < count(out-of-burrow | generalist)`. | — | NECESSARY | Q0010 |
| L5-2 | Why is H1 needed if niche law (LB06) is asserted? | LB06 is *constitutive* (every entity is a niche) — that is a birth-rule; H1 is the *empirical bet* that the birth-rule produces the expected benefit. Without H1, niche law is unfalsifiable and cannot be killed by evidence. | "Niche law is just a birth-rule" | NECESSARY | D-01 L10-11 |
| L5-3 | Why must niche law be falsifiable? | R10 (crossword): claims must intersect placed entries. An unfalsifiable claim intersects nothing and is rejected (RULES.md L43-47). | "We can just assert it" | NECESSARY | R10 / RULES.md L43-47 |
| L5-4 | Why does R10 hold? | Foundherent evidence: a claim without a crossing cannot be checked; a system that admits unchecked claims admits Goodhart at the system level. | "Authority suffices" | NECESSARY | R10 / Haack |
| L5-5 | Why does the system reject Goodhart? | Stopped. | — | NECESSARY — same as L1-6 / L3-5: further regress enters the constitution (R3 antifragility, R10 foundherence, R9 plurality). | R3 / R9 / R10 |

Stop: **NECESSARY at L5-5**.

---

## Chain LB06 — Niche law: every entity is a niche or it is not born
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L6-1 | Every entity has a burrow at birth. | Q0016 / rj-001 L5 bind. | — | NECESSARY | Q0016 |
| L6-2 | Why is the burrow required? | RJ-001 L11 demoted Maker from axiom to application of niche law. The demotion is the predicate: niche law is the sole generator of entity birth; without `∃ burrow(ε)`, the entity is a charter born on enthusiasm (R7 bans — ch-003-maker.md L18). | "Just give it a mandate" | NECESSARY | RJ-001 L11; ch-003-maker.md L18 |
| L6-3 | Why is enthusiasm banned? | R7 spirit: speculative building explodes the population (the paradox RJ-001 demoted — rj-001 L13). A charter without a burrow is a charter without a test of fit. | "We can test fit later" | NECESSARY | R7 / rj-001 L13 |
| L6-4 | Why does R7 hold? | Same stop as L5-5. | — | NECESSARY | R7 / RULES.md L28 |
| L6-5 | Why R7 at all? | Constitution. | — | NECESSARY (enters R1..R12) | R7 |

Stop: **NECESSARY at L6-5**.

---

## Chain LB07 — No live orchestrator (CHL-WALLS-SELF-ATTESTED caveat)
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L7-1 | The orchestrator is dead (structure + budgets + results). | Q0017 / rj-001 L7 bind. | — | NECESSARY | Q0017 |
| L7-2 | Why dead and not live? | R6: a gate owned by the claimant is not a gate. A live orchestrator that writes its own prompts owns its own gate — the Factorio wall (D-02 L17). | "Live orchestrator with checks" | NECESSARY | D-02 L17; R6 |
| L7-3 | Why does the dead form sidestep R6? | The dead form writes no prompts (rj-001 L7 corrected wording — "protocol, not a manager"). The MICs wear the prompts; the MICs are not the orchestrator. | "Paper protocol is still an orchestrator" | NECESSARY | rj-001 L7 |
| L7-4 | Why are the MICs not the orchestrator? | MIC-23 re-runs the gate but does not decide the verdict (rcvm.md L123 — `GATE_RUN(claim, gate) → Verdict`); the verdict belongs to the gate. The MIC is the *runner*, not the *judge*. | "MIC-23 judges" | NECESSARY | rcvm.md L123 |
| L7-5 | Why does the verdict belong to the gate, not the runner? | Stopped. | — | **ARBITRARY** — debt. The "runner vs judge" distinction is asserted in rcvm.md L123 but not derived. Adversarial-audit.md L25 (Q0014) explicitly undercuts this: *"the 'who I am not' line and confession protocol are self-attested, so unreliable as walls."* X0004 is open. The chain ends in self-attestation. | Q0014 / adversarial-audit.md L25; X0004 / CONTRA.md L7 |

Stop: **ARBITRARY at L7-5**. → **UNPAID-WHY #2** — the external wall that distinguishes "runner" from "judge" (or any non-self-attested wall for the dead orchestrator) is missing.

---

## Chain LB08 — cost(verify) = cost(execute) bankrupts fuel at swarm parallelism
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L8-1 | Verification costs at parallelism can exceed fuel. | Q0019 / cross-exam L57-59 bind; predicate = `verification_cost × parallelism ≥ fuel budget`. | — | NECESSARY | Q0019 |
| L8-2 | Why is verification cost a constraint on the system, not just a budget line? | Because verification is a *second execution budget* (cross-exam L57-59, verbatim) — it competes with execution for the same fuel. A budget line that loses this is just an itemized wish. | "Receipts are cheap, period" | NECESSARY | cross-exam L57-59 |
| L8-3 | Why must verification compete with execution for fuel? | Because honest verification is a re-run of the work it checks (R-4 cross-exam L73-77); the cost is the cost of the work itself, not a fraction. Receipts make evidence *cheap* but not *true* (R-4 L75). | "Receipts are truth" | NECESSARY | cross-exam L73-77 |
| L8-4 | Why must truth be a re-run, not a receipt? | A wrong-but-consistent output receipts cleanly (R-4 L74-75). Receipts are evidence of *existence and self-consistency*, not *correctness*. The only check on correctness is re-running the work against the gate. | "We can trust self-consistency" | NECESSARY | cross-exam L73-75 |
| L8-5 | Why must correctness be re-run against a gate the claimant does not own? | R6 again. | — | NECESSARY | R6 / RULES.md L25 |
| L8-6 | Why R6? | Constitution. | — | NECESSARY (enters R1..R12) | R6 |

Stop: **NECESSARY at L8-6**.

---

## Chain LB09 — Niche-law falsifier (SAME-TASK-OPERATOR-UNDEFINED caveat)
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L9-1 | Niche law dies if a generalist wins ≥3 same tasks on quality AND scope-completeness. | D-01 L10-11 / Q0032 bind. | — | NECESSARY | Q0032 |
| L9-2 | Why the conjunction (quality AND scope-completeness)? | A generalist that wins on quality alone misses burrows; the conjunction prevents the falsifier from firing on a lucky single-axis win. | "Quality alone suffices" | NECESSARY | D-01 L10-11 |
| L9-3 | Why ≥3 same tasks? | A single task is anecdote; the threshold gives the falsifier statistical resistance. | "1 task suffices" | NECESSARY | D-01 L10-11 |
| L9-4 | Why "same tasks"? | Stopped. | — | **ARBITRARY** — debt. "Same" is undefined in D-01 L10-11. Same-by-task-spec? Same-by-axis? Same-by-burrow? Without an operator, two tasks can never be "same enough", and the falsifier is unfalsifiable-by-construction. The chain ends at an operator gap. | D-01 L10-11 |

Stop: **ARBITRARY at L9-4**. → **UNPAID-WHY #3** — the same-task operator is missing.

---

## Chain LB10 — Maker forges only on documented demand
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L10-1 | Maker forges only on documented demand. | Q0040 / ch-003-maker.md L9 bind. | — | NECESSARY | Q0040 |
| L10-2 | Why documented and not colloquial? | The retirement trigger (C0032 — ch-003-maker.md L26) requires a *count* of NO NICHE calls and Owner demands. A count requires records. | "We can count vibes" | NECESSARY | ch-003-maker.md L26 |
| L10-3 | Why does Maker need a retirement trigger? | Because Maker itself was demoted from axiom to application of niche law (rj-001 L11). An application without a retirement trigger is a charter that never dies — exactly what arc-protocol.md L7 forbids. | "Maker is special" | NECESSARY | rj-001 L11; arc-protocol.md L7 |
| L10-4 | Why was Maker demoted? | RJ-001's premises trial: progressive birth was the paradox (rj-001 L13). Maker had to become contingent on demand, not pre-scheduled. | "Birth on schedule" | NECESSARY | rj-001 L11-13 |
| L10-5 | Why dissolve the paradox? | Stopped. | — | NECESSARY — same constitution stop. | rj-001 |

Stop: **NECESSARY at L10-5**.

---

## Chain LB11 — All four charters SIGNED into active law 2026-09-06
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L11-1 | All four charters are signed AND budget-gated. | RATIFICATION-BATCH-001 L15 (typed Owner line) and L12 (budget-gated note) bind. | — | NECESSARY | Q0056 |
| L11-2 | Why the conjunction (signed AND budget-gated)? | X0001 (CONTRA.md L4) names the live hallucination: dropping the budget-gated half turns the signature into a claim that zero-day is past. F0018 names the same trap. | "Signed means active" | NECESSARY | X0001; F0018 |
| L11-3 | Why is the budget-gated note authoritative? | RATIFICATION Part 6 (L29) records the Owner line "NOT YET — 2026-09-06" — the Owner's standing indefinite-hold pace ruling. The Owner line is the loop-breaker (R8). | "The signature is enough" | NECESSARY | RATIFICATION-BATCH-001 L29; R8 |
| L11-4 | Why is R8 a terminus? | Constitution. | — | NECESSARY | R8 / RULES.md L33-35 |
| L11-5 | Why the Owner and not a committee? | Stopped. | — | PRAGMATIC — value-alignment-in-one-person is the recorded reason (D-05 L36-42), and the cost of going deeper is dissolving the constitution's founding frame. | D-05 L36-42 |

Stop: **PRAGMATIC at L11-5**. (D-05 is the level of explanation the records admit; further regress enters the founding frame.)

---

## Chain LB12 — Provider exchange not built; nothing claimable working
| step | statement | why | instead-of | stop-type | anchor |
|------|-----------|-----|------------|-----------|--------|
| L12-1 | The provider exchange is NOT BUILT. | provider-exchange-note.md L16 binds; "Nothing here may be claimed working." | — | NECESSARY | Q0061 |
| L12-2 | Why is "not built" the load-bearing claim, not the design? | Landing criterion (L17-18): a real task that rate-limits, demand-documented per R7 spirit. Without demand, the design is speculative building — R7 bans. | "Design suffices as documentation" | NECESSARY | provider-exchange-note.md L17-18; R7 |
| L12-3 | Why R7 here? | The exchange is runtime (note L13 — R11/R12 place it there, not in doctrine). Building runtime before demand violates R11 + R12. | "We can build it anyway" | NECESSARY | note L13; R11/R12 |
| L12-4 | Why R11/R12? | Constitution. | — | NECESSARY | R11/R12 / RULES.md L50-58 |
| L12-5 | Why the constitution? | Stopped. | — | NECESSARY (constitution stop) | R1..R12 |

Stop: **NECESSARY at L12-5**.

---

## Recurring stop-points (for Op 09)
- **S-N1 (NECESSARY, hits constitution)**: L1-6, L3-5, L5-5, L6-5, L10-5, L11-4, L12-5 (7 chains).
- **S-N2 (NECESSARY, hits R6)**: L1-3, L7-2, L8-5 (3 chains).
- **S-P1 (PRAGMATIC, named-record-level)**: L2-5, L11-5 (2 chains).
- **S-A1 (ARBITRARY, debt)**: L4-4, L7-5, L9-4 (3 chains) → 3 UNPAID-WHY.