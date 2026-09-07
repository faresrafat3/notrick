# CROSS-EXAMINATION — attacking the guest proposals before they become law
> 2026-09-06 · by the AI supervisor · house style applied to our own guests: assume the
> patch is attackable, find how, then say what survives. Per proposal: the gap (real?) →
> the patch (sound?) → attacks ON the patch → interaction with the audit's P-drafts →
> merged recommendation for the Owner. Nothing here approves anything.

## PR-001 · the missing PROPOSAL template — verdict: REAL GAP, NOW CLOSED, RESIDUE REAL
- The gap was real at filing time (the law pointed at a template that did not exist —
  R10 would indeed refuse a claim intersecting nothing). Closed since: templates/PROPOSAL.md
  exists (20:20). The guest is owed the acknowledgment: they caught doctrine pointing at void.
- RESIDUE FINDING (mine, from their filing): NAMESPACE COLLISION. The template says
  `P-{NNN}`; the audit's patch ledger uses `P-001..P-008` (research labels); the guest
  filed as `PR-{NNN}`. Three names, one prefix family — guaranteed confusion at ruling time.
- Recommendation: proposals = `PR-{NNN}` (the guest de-facto standardised it); the audit's
  P-drafts stay research labels, NOT legal IDs until adopted; add one line to
  templates/PROPOSAL.md: "IDs are PR-{NNN}, assigned at filing in arrival order."

## PR-002 · quorum tiers for H1..H5 / D-01..D07 — verdict: SOUND, ADOPT-READY
- The gap is real: flat ledgers invite a task-1 verdict on a 5-task hypothesis — a false
  failure exactly of the kind R6 exists to stop.
- Attack on the patch: tiers could become an excuse shelf ("not yet at tier" used to dodge
  an early kill). Mitigation: tiers bind the CLAIMANT too — a hypothesis may not be
  declared CONFIRMED before its tier fills. Symmetric, not one-sided.
- Interaction: composes cleanly with the H-ledger's EXPLORATORY tag. Tier map (annotation,
  no structure change): task-1 verdicts: H2 only · 3 tasks: H1, H4 · 5 runs: H3 ·
  3 K-line hits: H5.
- Recommendation: adopt as a header note in hypotheses-ledger.md (Owner rules).

## PR-003 · named measurers for the falsifiers — verdict: SOUND, ONE MISSING RULE
- Real: an unowned falsifier is a wish. The five named gaps are correctly cited.
- Attack on the patch: the measurer could be the INTERESTED party (the agent whose charter
  is measured grades itself) — Goodhart through the back door.
- The missing rule: MEASURER-DISINTEREST — a falsifier's measurer cannot be the entity the
  falsifier tests. Mapping: D-01/D-02/D-03 → supervisor-on-duty · D-05 → the Owner (his own
  latency IS the metric; only he can read his calendar honestly) · H3 manual inspection →
  Owner + supervisor jointly (neither alone).
- Recommendation: adopt with the disinterest line added (Owner rules).

## PR-004 · the paper-RJ quorum problem — verdict: REAL AND SUBTLE; THE DEEPEST OF THE SIX
- The gap: H4 counts "3 RJs with binding conditions"; the council is `refining` with an
  empty Owner field; first-task RJs will be PAPER by necessity (precedent: RJ-001 itself).
  The theater rule would then judge PAPER theater, not the layer — a false kill of the
  council before it is legally alive.
- Attacks on the obvious patches:
  (a) "Count paper RJs anyway" → wrong: paper seats are worn by one brain; their
  disagreement metric (P-006) would be near-zero BY CONSTRUCTION — we would measure the
  sycophancy of a solo model and call it council failure.
  (b) "Delay H4 until ratification" → right but incomplete: without a tag, nothing stops
  a paper RJ from being cited later as if it counted.
- Merged patch: paper RJs are legal (precedent RJ-001) but carry `mode: paper` in the
  header; H4's counter reads ONLY `mode: ratified` RJs; paper RJs still land lessons
  (they are rehearsals, and rehearsals feed the ledger — house style).
- Interaction: this is the bridge between the guest's finding and my P-006 — BOTH are
  about not fooling ourselves with correlated seats. Adopt together.

## PR-005 + PR-006 · CHEAP RECEIPTS — verdict: THE MOST IMPORTANT PROPOSAL YET; DEEP EXAM
- The gap is real and it is ECONOMIC, not moral: if cost(verify) = cost(execute), then at
  swarm parallelism the verification budget is a second execution budget — the fuel
  bankrupts before H3's quorum fills. Nobody priced the checking itself. This composes
  with the audit's X-04/X-08 and is STRONGER than my P-003 alone (hashing freezes
  evidence; receipts make evidence CHEAP). Direction: adopt — but the receipt model has
  its own attacks, found here before it becomes law:

### Attacks on receipts (mine, extending their annex):
- R-1 · N-gaming: the claimant picks N (the number of checkable lines) — a lazy task
  declares N=1, produces one trivial line, the receipt is perfect, nothing real happened.
  → Wall: N is set by the DS gate spec (the frozen page), never by the claimant.
- R-2 · Cherry-picking: claimant shows the passing subset. → Wall: the receipt covers ALL
  lines — a COUNT with a range, not a sample; MIC-07 echoes the count alongside the budget.
- R-3 · Hash-context gaming: hash file A, deliver file B. → Wall: the receipt's hash is
  computed by the command NAMED IN THE FROZEN DS (the criterion), never ad hoc; MIC-23's
  re-run uses that same command — mismatch = UNVERIFIED, automatic.
- R-4 · The residual-cheat limit (honest): receipts prove an output EXISTED and was
  self-consistent; they do NOT prove it is CORRECT — a wrong-but-consistent output
  receipts cleanly. Receipts are EVIDENCE, not TRUTH. Truth remains the full re-run →
  keep SAMPLING: full re-run with probability p per claim, plus ALWAYS on fate-decision
  claims (expand/refine/retire) and any claim the Owner personally reads.
- R-5 · The game-theoretic core (their math, restated as a wall): cheating pays only if
  gain > p × penalty. The design goal is NOT "impossible to cheat" but "p and penalty
  publicly known, with p × penalty > expected gain for every cheat class." This makes the
  gate ECONOMICALLY self-defending — the Hayek move applied to verification itself.
- Verdict: adopt, with R-1..R-5 as the receipt spec's walls. The DS template needs a
  receipt-spec field (v2 draft) — merge with P-006's RJ v2 into ONE template-v2 pass for
  the Owner, not six small edits.

## Cross-cutting verdicts for the Owner (one screen)
1. Adopt PR-002, PR-003 (with the disinterest line), PR-004 (mode: paper tag) — low-risk,
   high-integrity, consistent with existing law.
2. Adopt PR-005+006 DIRECTION with walls R-1..R-5 — executed as ONE template-v2 pass
   (DS + RJ), not scattered edits.
3. Fix the ID namespace (PR- vs P-) in one line (PR-001 residue).
4. Everything above lands ONLY via your approved-docs moment; the RATIFICATION page can
   take a Part 7 line if you want the batch to stay single-page.