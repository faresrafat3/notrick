# BREAKER — Y-SERIES: five new attack vectors beyond X-01..X-18
> breaker lane · guest-breaker: read+attack, propose via BRK · wall: no execution, no
> builder files, no Owner fields. Paper-only. Every vector: scenario → severity → existing
> wall → GAP → patch-as-BRK-proposal. Every patch carries its OWN falsifier + a
> disinterested measurer (never the breaker).
> Method note: the X-series (research/adversarial-audit.md) attacked the DESIGN; the
> Y-series attacks the RECORD-SYSTEM through which design is enforced. Pre-registered
> paper findings, never claimed as proven protections.

---

## Y-01 · CONTEXT-AMNESIA (long-session memory edits under window pressure) — SEVERITY: HIGH
- **Scenario:** a session running long feels its context window compress. Under that
  pressure, an agent "summarizes" CONTEXT.md — the persisted brain (CONTEXT.md:1 "reads
  back the whole conversation") — and the compaction silently drops a detail that costs
  the doctrine: a binding condition, an unresolved objection, a row in an open ledger.
  The Decision log tail is append-only by rule (CONTEXT.md:86), but a summarizer can
  legally move earlier prose to a "summary" section and *append a note that the summary
  supersedes*. X-09 already named the attack (adversarial-audit.md:113-116, "Decision-log
  gaslighting"); what X-09 did NOT name is the WINDOW-PRESSURE MECHANIC: the edit happens
  exactly when the agent is least able to hold the full prior text in mind, so the drop is
  undetectable during the very turn that performs it. X-09's patch (out-of-band pin
  baseline, adversarial-audit.md:121-123) pins BYTES; it cannot detect a lossless-looking
  *rephrase-and-drop* that keeps the file's hash plausible if re-pinned.
- **Existing wall:** append-only discipline (CONTEXT.md:86, INTEGRITY.md:17-19: "CONTEXT.md
  is excluded from pinning by rule") + git history (INTEGRITY.md:19) + X-09's out-of-band
  baseline. All three detect CHANGE; none detects a SMOOTH LOSS because CONTEXT.md is
  deliberately unpinned and its semantic density is not measured.
- **GAP:** nothing measures CONTEXT.md's content-coverage over time. A "compaction" that
  removes the phrase "issued" from "a valid title" is invisible to every existing wall
  until someone needs that phrase and finds it gone.
- **Patch (→ BRK-006, folded into the veto-block of BRK-001):** per-session CONTEXT
  digest-checksum: each session opener appends a one-line "load-bearing terms carried
  over" list (rule names R1..R12, open items 1..6, the five zero-day gates) citing the
  section that holds each; the NEXT session (or the breaker sweep) compares consecutive
  lists. A term present in session N's carry-over and absent from N+1's, without an
  explicit "retired/demoted" note, = flagged loss, not silent. Cost: one line per session.
  - **Falsifier of the patch:** if 5 consecutive sessions carry over zero terms and yet
    zero historical losses are ever found → the list is decorative → kill it.
  - **Measurer:** the supervisor-on-duty (`research/arc-protocol.md:86-87` disinterest
    precedent — ARC's author cannot measure ARC; the breaker cannot measure its own patch).
- **Interaction:** composes with PR-007's triple-lock (Hand/Eye/Trace) — a CONTEXT
  compaction is a MOVE and must carry Eye+Trace, not be treated as housekeeping.

## Y-02 · MODEL-DRIFT (same doctrine, different model family — does any gate depend on one model's habits?) — SEVERITY: MEDIUM
- **Scenario:** a gate is written as a free-text verdict line: "confirm the quote matches
  verbatim." Some model families quote perfectly; others paraphrase confidently and stamp
  MATCH. The SAME process (a spot-check, a council seat, a supervisor sweep) produces
  different truth-values under different models. H4, the council-theater verdict rule
  (research/hypotheses-ledger.md:29), counts objecting conditions — a sycophantic model
  produces near-zero objections *by habit*, and H4 then rules "council is theater" even
  though the LAYER is fine — or vice versa under a contrarian model. Proposals
  pr-002 (quorum tiers) and pr-003 (named measurers) assume the measuring HEAD is
  interchangeable. The faceplate: every gate in the tree is defined on the assumption
  that "re-read and compare" is model-invariant.
- **Existing wall:** the disagreement metric (P-006, adversarial-audit.md:135-138: "seats
  SHOULD run different models") — designed to MEASURE correlation, but no gate is
  calibrated per model family, and no verdict rule carries a model-family tag.
- **GAP:** no verdict-rule line says "this rule's counts are normalized by the model
  family that produced them"; H4's verdict could be triggered by a model habit, not by
  council behavior. One model's default = another model's theatre.
- **Patch (→ BRK-007, in the veto block):** every RJ/audit verdict record gains a
  `head: {model-family}` header field (paper-wearable); H4's counter reads only
  within-family comparisons across ≥2 families (per PR-002's tiers, a Tier-1 rule).
  A family producing near-zero objections across 3 RJs is flagged as a HABIT, not a
  council property, until a second family is represented.
  - **Falsifier:** if the same family's objection rates vary MORE across two tasks than
    two families differ on the same task → the family tag is noise → kill it.
  - **Measurer:** the Owner or a named deputy (pr-003's disinterest line: the measurer
    cannot be the entity the falsifier tests; here the entity is "model families," so a
    human or a third family grades).
- **Interaction:** directly hardens H4 (hypotheses-ledger.md:29) and P-006; the
  same-hat/veiled pair in pr-008 (veiled eye) is the natural carrier.

## Y-03 · LANGUAGE-SPLIT EXPLOIT (Arabic-thinking vs English-docs divergence hiding contradictions) — SEVERITY: HIGH
- **Scenario:** the workspace is bilingual by construction: doctrine and LOG lines are
  English (RULES.md, AGENTS.md), session narratives and the demolition logs are Arabic
  (research/demolition-log.md, LOG.md). A contradiction can hide BETWEEN the languages:
  an English rule says "a gate it does not own" (RULES.md:25) while the Arabic log's
  three-field attack (الناقل/الجرح/البديل) records a verdict that would violate it — and
  no sweep compares the two because each is internally consistent. The split is also a
  REAL operational condition: THIS breaker lane thinks in Arabic while documents are
  English, and the state-audit itself operates bilingually (research/claims-v1.md:1-3).
- **Existing wall:** R10's crossword rule demands intersection with already-placed
  entries (RULES.md:43-47) — but "entries" are not defined to span languages; every
  violation-checker greps one language at a time. The state-audit caught Arabic/English
  mismatches only as a side effect of a manual full-tree read (research/
  state-audit-2026-09-06.md:113-125 §A-4 lists 9, all same-language pairs).
- **GAP:** no wall requires that a claim quoted in one language be re-verifiable in the
  other. A contradiction placed as "انتهى — تم التنفيذ" in a log while the English
  verdict line says PENDING is legal until a bilingual reader happens to hold both.
- **Patch (→ BRK-008):** the breaker sweep (Round 7) adds a cross-lingual spot rule:
  any verdict-like line in an Arabic log that references an English doctrine file must
  quote the English file:line IN ENGLISH alongside (quote-then-infer as two steps, the
  house style); the sweep samples ≥2 such lines per session and files divergence as data.
  - **Falsifier:** if 3 consecutive sweeps find zero cross-lingual divergences AND zero
    language-boundary faults, the threat is over-weighted → downgrade.
  - **Measurer:** a disinterested reader fluent in both (the Owner's named deputy; never
    the breaker who wrote the sweep).
- **Interaction:** this is the language-space shadow of X-07 (document injection): a
  poisoned trace can be written in the language the checker is NOT grepping.

## Y-04 · VERIFICATION-BANKRUPTCY (parallel claims × receipt cost > fuel — price it) — SEVERITY: HIGH
- **Scenario:** the swarm runs M claims in parallel; each claim requires a receipt
  (pr-005/pr-006 direction: cost(verify) ≈ cost(execute) at parallel scale,
  proposal-cross-exam.md:57-59 "the fuel bankrupts before H3's quorum fills"). Nobody
  prices the CORRELATED cost: N parallel claims sharing one budget still each demand a
  full verify run. At swarm parallelism the verification budget is a SECOND execution
  budget — the exact arithmetic PR-005 named — and H1..H5's quorums (2-of-3 pairs, 3 RJs,
  5 runs, 3 hits) each multiply it. The demonstrable arithmetic, from the works cited
  below: with one execution costing E and one verification costing V ≈ E on average
  (MIC-23 re-runs the full criterion),
  holding every parallel claim's receipt costs ΣV ≈ N·E. The fuel is finite and the
  falsifiers (H1..H5) each require MULTIPLE full-task verifications, so total verify cost
  at quorum ≈ (sum over hypothesis quorums of their verification runs) × E — unless
  sampling probability p (proposal-cross-exam.md:76-77) is chosen so that p × N·E stays
  under fuel. With p small enough to be affordable, the honest residual is R-4
  (proposal-cross-exam.md:73-77: receipts prove existence, not correctness).
- **Existing wall:** R-1..R-5 (proposal-cross-exam.md:65-81) — walls, but they PRESCRIBE
  sampling without pricing the sampler: no fuel-budget line for verification itself, and
  no threshold where verification drops to a cheaper class (hash-only, count-only).
- **GAP:** every falsifier's verification demand is priced as FREE. The doctrine has no
  VERIFICATION BUDGET LINE per task, separate from the execution budget; "cheap
  receipts" is a direction, not a budget.
- **Patch (→ BRK-009):** every DS gains a `verify-budget` line (a fraction of total
  budget, written BEFORE the run, Owner-deferred field stays empty); when the cumulative
  verification spend passes the line, remaining claims downgrade to class-2 receipts
  (hash+count, no full re-run) and the downgrade is RECORDED — a permanent debt line in
  the receipt wall. Cheating is only economical when p × penalty ≤ gain (R-5); an
  unfunded verify budget makes p effectively zero for most claims.
  - **Falsifier:** if 3 tasks complete with zero claims ever downgraded because the
    verify budget never bound → the line is decorative → re-forge the budget rule.
  - **Measurer:** the council's Seat III (Tomorrow — prices the change-cost; ch-002
    council seat, charters/ch-002-council.md:39) or the Owner; never the breaker.
- **Interaction:** prices PR-005's claim honestly; feeds BRK-002 (the measurement
  spec) because grid-fill-rate itself must count verification spend.

## Y-05 · LOG/TIMESTAMP FORGERY (backdated appends, interleaved lines from two writers) — SEVERITY: HIGH
- **Scenario:** LOG.md and research/ state-audit are append-only in spirit, but the
  filesystem gives no append-only guarantee. Two writers can interleave: writer A's line
  lands at 09:00:00 while writer B's later line is written chronologically AFTER it —
  with no per-line writer tag, the record reads as one contiguous story. A backdated
  append (writer B writes a line that *claims* to be from 08:00) breaks order-based
  reasoning: PR-006's commit-then-reveal (proposal-cross-exam.md:76-77) needs the sampler
  index to PREDATE the claim; a backdated sampler line fabricates that predate. The tree
  is live right now: LOG.md already carries duplicated OP-023/OP-027 identity rows with a
  hand-annotated fix (LOG.md:64-65 "T2.0-FIX | OP-023-dup noted"), and the git mirror is
  the only real ordering witness (git diff HEAD shows LOG.md +25 lines).
- **Existing wall:** INTEGRITY.md pins BYTES of doctrine files (INTEGRITY.md:24) but pins
  NO session logs; git history is the ordering oracle but nothing REQUIRES a commit per
  session; the "append-only" rule is prose discipline.
- **GAP:** no monotonicity check: nothing asserts that line timestamps in LOG.md are
  non-decreasing, and no per-line writer ID exists. An interleaved or backdated line is
  indistinguishable from an honest one after the fact.
- **Patch (→ BRK-010):** LOG.md moves to a two-column monotonic form: every line begins
  `{op-id} | {writer-id} | {unix-ts} | {text}`; the breaker sweep (or a MIC-11-style
  refusal) re-checks monotonicity on read — a descending timestamp = FORGED flag, filed
  verbatim in violations.md with the file:line. Session closeouts commit to git (a
  cheap, mechanical monotonic witness that already exists).
  - **Falsifier:** if 3 consecutive sessions show zero timestamp inversions AND zero
    interleave faults, the monotonicity check is over-kill → downgrade to sampling.
  - **Measurer:** the supervisor-on-duty or the Owner's deputy; the check is mechanical
    and the measurer needs no model judgment (a `sort -c` on the timestamp column).
- **Interaction:** Y-05 is the substrate under Y-01 (an amnesia edit needs to look like
  an innocent append; monotonicity + writer ID kills the disguise) and under Round 7's
  stranger test (pr-009 SRS, B1..B5 — a stranger re-derives order from the record alone).

---

## Cross-cutting Y-finding
Y-01..Y-05 all attack the same unguarded act: WRITING THE RECORD. The X-series assumed
the record is honest unless an agent cheats; the Y-series shows the record system itself
(low monitoring of CONTEXT semantics, model-variant judgment, language-gapped checks,
unfunded verification, unordered logs) is the surface. The single highest-leverage
patch is not any one BRK item but the MEASUREMENT SPEC (BRK-002, Round 5): every Y-vector
above becomes a counted, priced line item in the grid — which is exactly what "novel-
viable" needed to mean.

## Y-table (pre-registered verdict slots — filled only by evidence, never by the breaker)

| Vector | Severity | Existing wall | GAP | Patch (BRK) | Patch falsifier | Measurer |
|---|---|---|---|---|---|---|
| Y-01 context-amnesia | HIGH | append-only + git + X-09 | no content-coverage metric | BRK-006 carry-over list | 5× zero-term sessions with zero losses found → kill | supervisor-on-duty |
| Y-02 model-drift | MEDIUM | P-006 disagreement metric | no per-family verdict calibration | BRK-007 head: family tag; within-family H4 counts | family variance > between-family on same task → kill | Owner or named deputy |
| Y-03 language-split | HIGH | R10 crossword | cross-language verification absent | BRK-008 bilingual quote rule | 3 sweeps zero divergence → downgrade | bilingual deputy |
| Y-04 verification-bankruptcy | HIGH | R-1..R-5 | no verify-budget line; quorums priced free | BRK-009 DS verify-budget | 3 tasks never bound → re-forge | Seat III / Owner |
| Y-05 log forgery | HIGH | INTEGRITY pins (no logs) + git | no monotonicity/ writer-ID check | BRK-010 two-column monotonic LOG | 3 sessions zero faults → sampling | supervisor-on-duty |

*Falsifier + disinterested measurer per patch as promised; none is the breaker.*