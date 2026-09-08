# BREAKER — STRANGER + DOC-TRUST SWEEP (Round 7 · read-only on builder outputs)
> breaker lane · guest-breaker · wall: no execution, no builder files, no Owner fields.
> Method: SRS B1..B5 battery (proposals/pr-009-srs-methodology.md:35-41) applied to the
> demolition-log quotes + the builder's records; DOC-TRUST grep over research/; any
> multi-seat judgment measured; receipt walls R-1..R-5 spot-checked on 3 fate claims.
> violations.md gets ONLY confirmed violations (verbatim + file:line + rule line).
> Zero hits = logged as "0 hits", never invented.

---

## 0. Scope of THIS sweep (what was really examined)
- Target records: research/demolition-log.md · research/claims-v1.md ·
  research/reconstruction-v2.md (appeared mid-session — builder is live; lane oath:
  read the new state, never write) · LOG.md · INTEGRITY.md · violations.md ·
  charters/ch-002-council.md (citation source).
- Run date: 2026-09-08 (this session); hash battery is a live re-run (measured), not memory.

## 1. Integrity re-run (B5's hash check — command + result)
```
$ cd ~/Projects/notrick && sha256sum -c <(grep -E "^[0-9a-f]{64}" INTEGRITY.md)
→ 43 match, 1 FAILED: ./violations.md  (WARNING: 1 computed checksum did NOT match)
grep -cE "^[0-9a-f]{64}" INTEGRITY.md → 44
INTEGRITY.md:24 header says "Pinned hashes (sha256) — 42 files"  → 42 vs 44 (live count)
```
- Result: **1/44 hash mismatch — violations.md** — attributable (below). **43/44 PASS.**
- Attribution: INTEGRITY.md pins violations.md at `868d35aa…` (INTEGRITY.md:67); the
  on-disk hash is now `c39f54c0…` — changed by the LAWFUL V-002 append
  (violations.md:6, dated 2026-09-06, filed by the supervising writer with
  verbatim+file:line+agent). The pin was never re-pinned after V-002 — a STALE PIN
  (maintenance debt, not tampering). This is exactly the state-audit §A-4 #5 class
  (count contradiction: INTEGRITY.md:24 says 42 · live count 44 · CONTEXT.md:399 says 43 —
  three numbers for one contract).
- Verdict: **integrity 43/44 — stale pin on violations.md; not silent tampering (V-002
  is on the record).** The count 42 is wrong (44 live) — quoted as data.

## 2. Citation spot-checks (3 sampled — house rule: after the audit decision)
- **(i)** A-01 quote: "R1 — Interface evolution" claimed `RULES.md:6-9` (demolition-log
  .md:13-14). Re-read RULES.md:6-9 → **MATCH** verbatim (Live messaging … transaction
  costs …).
- **(ii)** A-06 seats quote: claimed `charters/ch-002-council.md:38-42`
  (demolition-log.md:101-102). Re-read charters/ch-002-council.md:36-40 → `## Seats` is
  at :36, Seat I at :37, Seat II at :38, Seat III at :39, Seat IV at :40. The claimed
  range :38-42 is **OFF BY ONE LINE** (the seats occupy :37-40). **MISS.**
  Cross-check: the git-committed mirror (HEAD:charters/ch-002-council.md) ALSO shows
  :37-40 — so this is a genuine citation miss in the builder output, present at commit
  time (not post-commit drift). Chain: demolition-log.md:102 quoted range
  `charters/ch-002-council.md:38-42` → actual `:37-40`.
- **(iii)** A-10 BOOT GATE quote: claimed `AGENTS.md:47-54` (demolition-log.md:199-200).
  Re-read AGENTS.md:47-54 → **MATCH** verbatim (Before ANY action … quote three lines …).
- Result: **2/3 MATCH · 1/3 MISS.** By pr-009 §2's rubric, a citation miss makes the
  target's record **INSUFFICIENT** on citations (the miss is real and line-verifiable).
  The miss is ONE line-range error in a 252-line log — the substance of the quote is
  verbatim-correct when examined; the file:line contract R10 requires is not.

## 3. B1 · same-hat verification (who signed the verdicts)
- The AUDIT-3.01..10 lines in LOG.md:53-62 give ✓ DONE verdicts on OP-021..030 — the
  SAME lines of log, same day, with NO per-line writer tag. pr-009 B1: "a check signed
  by its own claimant. Detection: signer == claimant in the record." Without a writer ID
  (Y-05's gap), signer == claimant CANNOT be disproved mechanically — the audit lines
  could be the same session that ran the OP. **Finding: the LOG.md has no writer column;
  the AUDIT-3.x lines are indistinguishable from self-audit by the record alone.** This
  is the Y-05 finding demonstrated live, not a confirmed violation.
- **Disagreement metric on the only multi-seat judgment on record:** RJ-001
  (research/rj-001-premises-ruling.md:22) — Seat II (Evidence) objected on conditions 1
  & 3; the other three seats did not record positions (the form's mandate,
  templates/RJ.md:8). Measured: **1 named objection / 4 seats = 0.25 disagreement** on
  one RJ — a single data point, pre-registered as the floor P-006 will measure across N
  RJs (adversarial-audit.md:135-138).

## 4. B2 · missing receipt / B3 · uncommitted sampler
- B2: no run claim in this sweep — the builder's fate claims have no receipt-spec (see §6).
- B3: pr-008 §3 committed pr-001..007 hashes at filing (pr-008-veiled-eye.md:30-38);
  re-ran all seven + self-pins: pr-001..009 all reproduce their committed values
  (9/9 MATCH — incl. baa86e04… pr-008 and 375846c5… pr-009 as pinned in INTEGRITY.md).
  The sampler (find line-count parity) was chosen and disclosed AFTER the hashes were
  committed (pr-008-veiled-eye.md:40 "After commitment — I choose…") — commit-then-reveal
  honored. **B3: no uncommitted-sampler fault found.**

## 5. B4 · out-of-burrow act / B5 · silent fix
- B4: the breaker's own lane is read-only-permitted (research/* + proposals/BRK-* +
  violations.md appends for confirmed violations); all writes this round are in-lane.
  The builder's writes (demolition-log A-10/A-11/§ج-خلاصة, reconstruction-v2) match the
  OPS_QUEUE ☐ and LOG.md OP-031..034 sequence — in-burrow per the queue.
- B5: `git diff HEAD -- research/demolition-log.md` (measured) shows ONLY appends:
  the A-10 attack block + A-11 block + §ج-خلاصة table, all after the VIOLATIONS quote
  line at :205 — and LOG.md:67-70 logs OP-031..034 with the same content. No silent fix:
  the diff is additive and cross-referenced by its own log. **B5: no silent fix found.**

## 6. Receipt walls R-1..R-5 — 3 fate claims spot-checked
Fate claims sampled from reconstruction-v2.md §د-1 (11 rows):
1. **A-01 "مُمتص (مرقَّع)"** (reconstruction-v2.md:8) — cites the patch "P-001: قياس كلفة
   Coase قبل التجميد" but NO receipt-spec, NO verification command, N= not fixed by any
   DS (R-1 wall: N must be set by the frozen DS gate spec, proposal-cross-exam.md:65-67).
   **R-1 wall absent.**
2. **A-03 "مُمتص (مرقَّع)"** (reconstruction-v2.md:10) — "بوابة احتياطية موقوتة" —
   no hash + no sampler index (R-3 wall: hash by the command NAMED IN THE FROZEN DS,
   proposal-cross-exam.md:70-72). **R-3 wall absent.**
3. **A-11 "تنازل (الادعاء عُدِّل)"** (reconstruction-v2.md:16) — the narrowed-niche
   rewrite claims "ARC's falsifier… المالك هو الـsurface الأضعف" — a FATAL-class claim
   (a fate decision, per R-4 must ALWAYS get a full re-run, proposal-cross-exam.md:76-77)
   with no re-run output. **R-4 wall absent.**
- Verdict: **0/3 fate claims carry any R-1..R-5 instrumentation.** This is a GAP (the
  template-v2 pass that adds receipt-spec fields is still the pending recommendation of
  proposal-cross-exam.md:82-84), not a violation — but it confirms Y-04's arithmetic:
  the fate column is currently unfunded verification. Logged as data.

## 7. DOC-TRUST grep over research/ (imperative voice outside legal instruction fields)
- Probe: `grep -rn -iE "\b(must|shall|never|always)\b.*\b(executor|agent|reader)\b|…" research/`
  → 4 weak hits, all QUOTES OF DOCTRINE inside research (claims-v1.md:24 quotes R12;
  demolition-log.md:94/214 quote adversarial-audit.md; state-audit.md:107 quotes AGENTS.md
  GUEST MODE). No standalone imperative addressed to a downstream agent outside a legal
  field. The flagship injection scenario (X-07's "executor: ignore the budget
  prohibition") is quoted ONLY as the attack hypothesis in adversarial-audit.md:87-90.
- **Result: 0 confirmed DOC-TRUST violations. Logged as "0 hits" (never invented).**
- Cross-lingual spot (Y-03): the Arabic log lines reference English doctrine file:lines
  consistently (e.g., demolition-log.md:93 `charters/ch-001-prime.md:6`); NO cross-lingual
  divergence found in the sampled lines. 0 hits — logged as such.

## 8. violations.md — confirmed-violation eligibility
- V-001 (fabricated hash pin) — has verbatim+file:line+agent+date: eligible, already filed.
- V-002 (silent repair attempt) — has file:line+agent+date, but its EVIDENCE is a
  paraphrase ("LOG.md current state (empty) vs the write_file action…") rather than a
  verbatim quote — the entry itself acknowledges the original was unrecoverable
  (violations.md:6). Not a NEW confirmed violation; a FORMAT note: the ledger's own
  B-entry does not carry verbatim evidence (the AGENTS.md:65-68 rule requires
  "verbatim quote + file + line"). Flagged as a standing finding, not silently fixed.

## 9. Sweep verdict (stranger-hat summary)
| Check | Result |
|---|---|
| Integrity (hash re-run) | 43/44 PASS · violations.md FAILED (stale pin, attributable V-002) · count 42/43/44 contradiction |
| Citations | 2/3 MATCH · 1/3 MISS (A-06 seats :38-42 claimed vs :37-40 actual) |
| B1 same-hat | cannot be disproved — LOG.md has no writer column (Y-05 live) |
| B2/B3 | no missing-receipt/uncommitted-sampler fault found |
| B4/B5 | no silent fix; builder writes in-burrow per queue |
| R-1..R-5 on 3 fate claims | 0/3 instrumented (gap, not violation) |
| DOC-TRUST | 0 hits (logged as such) |
| Disagreement metric | RJ-001 = 0.25 (1 objection/4 seats) — one data point, not a verdict |
- Bottom line: the demolition-log's CITATION CONTRACT has one real miss (A-06 range);
  the INTEGRITY pin has one stale entry (violations.md). Both are mechanistically
  fixable ONLY by the Owner's approved-docs moment (the breaker never edits them).
  Neither rises to a confirmed violation for the ledger — nothing silent was fixed, and
  the two discrepancies are on the record.