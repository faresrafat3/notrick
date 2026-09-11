# SPLITS — concurrency split census

Format (per G-B OBSERVE brief): `SPnn | id_a + id_b | slot | OPEN/CLOSED/IMPOSSIBLE | resolver | 8-12 words`

Provenance (2026-09-09, `dsh..observe` round 1): this file did not exist before this round.
A repo-wide grep for `SP-?0[1-9]` over `*.md` returned zero rows — the SP01..SP06 rows the
brief refers to are NOT on this tree. Nothing was renumbered; the census starts at SP01.
The executable test `python3 tools/plurality.py splits` is UNAVAILABLE (`tools/` absent at
root; `RUN/tools/` holds only `cite.sh` and `count.sh`; `find` over the tree returns zero
hits for plurality/windows/beat/guard scripts). Rows below were found by manual inspection
of committed artifacts and git history, per the brief's degrade-never-halt clause.

---

SP01 | harness-run guest (S2) + regency lane (S2-20260908-01) | proposals/ pr-011 ID slot | CLOSED | SCRIVENER pre-consume catch; guest copy removed, refiled pr-021 | Two writers filed pr-011 blind to each other; renumbered pr-021
- evidence: LOG.md:282 (PR-FILING-INCIDENT — committed; `git show HEAD:LOG.md` grep count = 1, this session) · proposals/pr-011-regency.md:7,10-11 (filed 2026-09-08, mtime 08:36) · guest checked only pr-010 at 07:56 (pr-010-stale-reentry.md mtime 07:56) · proposals/pr-021-sanad-unification.md exists on disk.

SP02 | R5 execution-repair lane + parallel citation-numbering writer | citation-ID space C117-C124 | CLOSED | renumber landed in commit 6b8b4ce | Citation IDs double-assigned by concurrent writers; collision renumbered later
- evidence: commit 6b8b4ce message "citations C117-C124 (collision renumbered)" — message-level committed evidence; the second writer is not named in the message.

SP03 | two R11 blind verifiers | RUN/briefs/ r11-verifier.md brief path | CLOSED | process defect logged, commit a910293 | Two verifiers shared one brief path; defect logged
- evidence: commit a910293 message "brief-path collision process defect logged; two disjoint blind catches on one matrix".

---

Checked and NOT classified as SPLIT (brief's definitions applied, not vibes):
- RUN/QUEUE.json R9-R14 passes flips by the resumed G6 lane + the series executor after a
  14h gap: the later entry answered the earlier and both reconciliations converged →
  STALE, already recorded as such by the lanes (RUN/STATE.md:11; commits 3da9a0f, 778b243).
- OPS_QUEUE OP-043..047 identical-sync race at 07:43:01: the outside write superseded the
  local intent, "no content conflict"; only one entry ever occupied the slot → recorded
  race, not a SPLIT (CONTEXT.md:428-432).
- pr-010 name taken by pr-010-stale-reentry.md: the later entry self-describes as a
  stale-reentry (answers the earlier) → STALE-shaped (proposals/pr-011-regency.md:10-11).
