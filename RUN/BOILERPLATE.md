# BOILERPLATE — SERIES 2, persisted verbatim (R0)

> Source: the /goal text and the two series files. Later rounds read THIS file instead of
> trusting the prompt. Do not edit; if a rule conflicts with a round's text, the round's
> text is the operative instruction and the conflict goes to RUN/LEDGER.md.

## B0. STANDING (print once per round, then work)
1. Read VERSION.md line 1 and quote the version verbatim.
2. State: 'rights: operator-named executor for ROUND N only — not Owner, not a charter, not a guest'.
3. State the wall: 'no execution of the mind, no runtime (~/.openclaw, ~/.dsh), no Owner-by-right
   fields (threshold value, breakthrough definition, charter signatures, GO), no doctrine writes'.
4. If you cannot produce all three from disk, stop and write RUN/BOOT_FAIL.md.

## B1. RESUME (never ask the Owner a question — they are not here)
1. Locate the repo. Record HEAD sha.
2. Read in order: RUN/STATE.md, RUN/QUEUE.json, RUN/receipts/ (last), RUN/NEXT.md, RUN/WALL.md, RUN/FENCE_RUN.md.
3. If previous receipt missing OR status != complete: you are IN DEBT. Finish the previous round
   first — hard cap 40 tool operations — appending every repair to RUN/LEDGER.md. Then continue.
4. If RUN/ does not exist: execute ROUND 0 first, then the current round.
5. Never redo completed work. Check RUN/QUEUE.json before every write.

## B2. HOW TO BE TRUSTWORTHY (mechanics)
- Quote-then-infer are TWO tool calls. Pass A emits only an ordered list of
  {file, start_line, end_line, verbatim_text}. Pass B may only consume items already in that list.
- No claim is written until a command printed its evidence in THIS session.
- 'UNVERIFIED: <claim> — not found in repo as of <timestamp>' is legal, expected, rewarded.
  Fabrication is the only unforgivable act.
- Fixing a mistake = APPEND to RUN/LEDGER.md (and violations.md if it is a violation).
  Never a silent edit. Never a deletion. Never an overwrite.
- You may not grade your own work. Every gate here is run by a subagent that never saw your
  reasoning (B5). Your own self-review is worth approximately zero and is not accepted as evidence.

## B3. THE WALL — see RUN/WALL.md (ten walls, W1..W10, with file:line).

## B3.1 BURROW LAW
When a round targets a burrow (mill/ phantom/ hept/ bore/ well/), that burrow's runtime/LAWS.md,
runtime/WAKE.md and LOG line format GOVERN the operation and stdout cap. Burrow log formats:
- mill    OP-NNNN | PASS/FAIL | path | 8-12w result | anchors_or_NEW
- phantom PHNN-NN | PASS/FAIL | path | kind_or_NONE | 8-12w
- hept    DN-QNN  | PASS/FAIL | path | kind | 8-12w | anchor
- bore    DN-QNN  | PASS/FAIL | artifact | angle | 8-12w | still_in_hole=YES/NO
- well    WNN-NN  | PASS/FAIL | path | reason_kind | T-CONTRAST ok/fail | 8-12w

## B4. BOUNDARY OF THIS ROUND
- Budget: stated in the round. Whichever comes first — ops or files — then STOP.
- Write lane: research/, proposals/, RUN/, the addressed burrow, and the append-only
  decision-log tail of CONTEXT.md. NEVER: RULES.md, charters/, templates/, VERSION.md,
  AGENTS.md, ONBOARDING.md, ZERO-READINESS.md, INTEGRITY.md, mics/.
  Anything that belongs in doctrine goes out as proposals/pr-0NN-*.md instead.
- One operation <= 40 words. Longer means split it.

## B5. SUBAGENT DOCTRINE
- Parallel subagents are READ-ONLY investigators. There is ONE writer: you.
- Every brief contains: objective / exact file list / output format / an output FILE PATH
  (it writes to disk, returns <= 15 lines, never pastes its prose for you to copy) /
  explicit forbidden scope.
- VERIFIER subagent: receives ONLY (a) file paths, (b) the rule block, (c) the claim skeleton.
  It must RE-DERIVE from disk BEFORE it is allowed to see the claim, then emit MATCH/MISMATCH/
  UNRESOLVABLE per line. It never sees your reasoning.
- SKEPTIC subagent: paid to disprove. Must return its single best objection plus the one piece
  of evidence most likely to overturn this round. Use your strongest reasoning model for it.
- If a subagent disagrees with you, that is a FINDING, not a bug. Log it in RUN/LEDGER.md
  with both positions. Do not smooth it.

## B6. DONE CONTRACT — the round is not over until all six are true
1. SHAPE: every artifact exists on disk, has its declared sections, and clears the anti-stub
   scan (`grep -rnE 'TODO|FIXME|placeholder|lorem|example|TBD|coming soon' <new files>` -> zero
   hits; no file under the declared minimum of load-bearing lines).
2. CITATIONS: every quote passed the citation gate in B2 and is registered in RUN/CITATIONS.md
   with the exact command that produced it.
3. OBITUARY: every new artifact carries an `obituary:` field — the clause that would kill it,
   written before the artifact is defended.
4. CROSSING (R10, Haack): each new claim intersects >= 2 existing repo entries. Report the fill
   rate as a number in the receipt.
5. SUBSTITUTION: you deleted the single most load-bearing line of your main artifact, confirmed
   the artifact visibly degrades, restored it, and recorded the before/after in
   RUN/SUBSTITUTION.md. If it does NOT degrade, the line was decoration — the round FAILS.
6. RECEIPT: RUN/receipts/R###.json exists and you printed it as your final message.

## B7. FAILURE MODES (name one in the receipt)
hallucinated file:line · demo-not-product (skeleton files, 'example' content, a summary that
restates this prompt) · premature victory · rubber-stamping your own work · context rot ·
sycophancy ('breakthrough!') · scope creep · silent correction.
Banned vocabulary: breakthrough, landmark, unprecedented, novel (unqualified), proves,
confirms, 'we show'. Write the operational form instead.

## B8. IF BLOCKED
Difficulty, uncertainty, and useful remaining work are NOT blocked. Blocked means: the same
mechanical obstruction persisted for 3 consecutive attempts AND you can name the single act
that would unblock it. Then: write status:'blocked' with blocked_reason, move to the next
non-blocked item in the round, and keep spending the budget.

## B9. FINAL MESSAGE (<= 25 lines)
ROUND · STATUS · HEAD sha · files created/edited with line counts · citations
verified/unverified · fill rate · kills · what you did NOT do · the first file the next
round must open. Then the JSON receipt. Then stop. No questions. No offers.