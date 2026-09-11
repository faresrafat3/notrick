# BREAKER — THIRD NUMBERING INCIDENT + REGISTRY TALLY + HEPT ARC-RECORD (round-12 sweep)
> breaker lane · guest-breaker · read+attack, propose via BRK · wall: no execution, no
> builder files, no Owner fields.
> READ-ONLY; every claim cold re-derived by command this session. Targets: the
> PR-FILING-INCIDENT (third numbering event), the CARD02 registry tally correction
> (23→22), and hept/records/ARC-OBIT-R001 (first receipts-domain record).

---

## 1. THIRD NUMBERING INCIDENT — same root cause as Q-29, mechanically resolved again

### 1a. The event (LOG.md:282, verbatim)
- "PR-FILING-INCIDENT | ✓ أُصلح لحظيًا (ضيف — جلسة harness-run) | خطأ فهرسة ذاتي: كتبتُ
  proposals/pr-011-sanad-unification.md **بعد فحص pr-010 فقط (07:56) دون فحص pr-011..020
  التي وصلت لاحقًا من كاتب موازٍ** — SCRIVENER اكتشف التصادم قبل استهلاك [الرقم]..."
- The harness lane filed a unification proposal as pr-011 because it checked the ONE
  number it knew was taken (pr-010) instead of scanning the directory. The lane then
  renamed to **proposals/pr-021-sanad-unification.md** (on disk now, ID line "PR-021",
  single ownership verified; no stale pr-011-sanad remains — only pr-011-regency.md).

### 1b. The pattern is now THREE-for-THREE (Q-29 systemic hole, still open)
| Event | Cause | Fix |
|---|---|---|
| P-011 collision (round 8) | two lanes, no register | rename to pr-012 + LEDGER CORRECTION |
| P-012 collision (round 8) | S2 filed 3 min after R2's rename | caught by me (Q-29); lane has not resolved |
| pr-011-sanad (this round) | check-one-number, not directory scan | renamed pr-021 + LOG incident line |
- Each fix was non-silent and mechanical (credit), but the ROOT CAUSE is unchanged:
  **proposal numbers are allocated by convention (last-known + 1), with no register,
  no lock, and no directory-scan step in the filing procedure.** Three incidents across
  three lanes in one day. Q-29's "ADD-NUMBERING-REGISTER" decision type is now
  empirically triple-justified. pr-020's expiry mechanism (if adopted) would retire
  stale numbers but does not allocate new ones — the register hole needs its own fix.

## 2. Registry tally correction VERIFIED (CARD02, commit 175a7be)

- The commit message says "tally corrected 23→22 by count". Measured this session:
  registry §1 table = **31 entity rows**; rows marked موجودة (live-quoted gate) = **22**;
  مسودة drafts = 6 (d1..d6); remaining 3 = the new CARD-02 rows / class rows (R-1..R-5
  walls, patch-ledger class, supervisor chip per the commit message).
- §3's "بوابات موجودة ومقتبسة: **22 صفًا**" now matches the live-gate count exactly —
  the correction re-derives. (My round-9 check of the pre-extension registry also
  reconciled: 26 rows then, 31 now after the 6 additions + CARD-02 line.)
- Credit: another count fixed by command, not by narrative.

## 3. hept/records/ARC-OBIT-R001 — the receipts domain OPENS (new, read)

- hept-canon section 12 declared the receipts domain empty; this record opens it under
  canon v1.0 standing orders. Six-part header, per canon §3: CRITERION (frozen, quoted
  verbatim from arc-protocol's falsifier: "if after the first 3 real tasks, Arc-compliance
  produced ZERO catches... → RETIRE verdict"), named fail condition (3 exposures with
  catches=0 → RETIRE on research/arc-protocol.md), TRACE = none ("no invocation has
  occurred; nothing has been claimed, so nothing is pasted"), PRICE committed.
- Falsifier's reading: an EMPTY record opened honestly is the correct state — the
  alternative (pre-filling traces) would be the fabrication the criterion exists to
  catch. Watch-item: the criterion's counter (3 exposures, catches=0) now has a home;
  whether any invocation ever lands is the Owner's post-zero question.

## 4. Series-close residue — all stable (re-verified)
- QUEUE 15/15 true, STATE SERIES-COMPLETE, receipts 15, INTEGRITY sha 1711587b5aa79d6b
  unchanged (my round-11 fence audit stands).
- CARD01/CARD02 commits closed the RUN series' own endgame paperwork (QUEUE + OBITUARY
  REGISTRY coverage lines, STATE.md linked).

## 5. Owner queue — Q-29 STRENGTHENED (third incident); no new seed needed
- Q-29's evidence column now carries three incidents; the decision type
  ADD-NUMBERING-REGISTER is triple-justified. The row's source list gains
  LOG.md:282 (PR-FILING-INCIDENT) and proposals/pr-021-sanad-unification.md.
- No new seed: the registry tally re-derives; ARC-OBIT-R001 is an honest empty record.

## 6. Summary (cold-stranger hat)
- The lanes keep self-correcting loudly (rename + incident line; tally 23→22 by count;
  empty record opened empty) — and the systemic hole keeps regenerating the same defect
  class. Three numbering incidents, one day, three lanes: the register is not optional.
- hept's receipts domain opened honestly empty — the right start for a canon-governed
  record.
- Zero violations appended by me; zero builder/doctrine writes; queue at 32 (Q-29
  evidence strengthened).

---

*Round-12 goal sweep complete. Breaker namespace only: this file +
research/breaker-log.md.*