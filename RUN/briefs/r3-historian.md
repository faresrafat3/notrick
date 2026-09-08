# r3-historian

## git lineage of violations.md (sha | date | note)
- `45f7484` 2026-09-07 "initial public mirror (Owner-authorized)" — ONLY commit ever (all branches): `git log --all --oneline --follow --format='%h %ad %s' -- violations.md`.

## pin-era identification (which commit matches 868d35aa)
- NONE. `git show 45f7484:violations.md | sha256sum` → c39f54c0… (= live, `sha256sum violations.md`) ≠ pinned 868d35aa (INTEGRITY.md:67). Brute-force of all 31 line-subsets of live 5-line file (± trailing \n) never hits 868d35aa → exact as-of-pin bytes NOT reconstructable from disk; pin pre-dates the mirror commit.
- Pin era = header + V-001, WITHOUT V-002: CONTEXT.md:399-400 "PINS 0-mismatch at close … violations.md carries V-001" (close follows the 21:54 re-pin moment CONTEXT.md:335-338).

## authorization search (moments found/not found, with file:line)
- Found (V-001 append, pre-pin): CONTEXT.md:340-349 "PLANNER FABRICATION #2 SELF-CAUGHT AND FILED (V-001…)… Filed in violations.md per the ledger's own law"; re-pin under logged moment chain CONTEXT.md:335-338.
- NOT FOUND for V-002: `grep -n 'V-002\|SILENT REPAIR' CONTEXT.md` → 0 hits; LOG.md (OP-log) has no re-pin of violations.md; INTEGRITY.md:1-6 names only pre/post-signature moments (P2 / SWEEP+RE-PIN / ARRIVALS, CONTEXT.md:267/280/294) — all pre-dating V-002. No logged Owner approved-docs moment covers the post-pin change.
- V-001/V-002 at pin time: V-001 YES (per CONTEXT.md:399 above); V-002 NO — breaker-stranger.md:26-29 attributes hash change to the V-002 append; `git show 45f7484:violations.md | grep -c 'V-00'` = 2 (both in committed mirror, post-date).

## VERDICT: (b) VIOLATION — unlogged change
No logged Owner approved-docs moment covers the post-pin V-002 append, so per INTEGRITY.md:6-7 ("A mismatch is NEVER silently fixed: file it in violations.md verbatim, Owner rules") the mismatch stands open — it is filed (RUN/LEDGER.md:17), not silently fixed, but the re-pin awaits its logged Owner moment.
