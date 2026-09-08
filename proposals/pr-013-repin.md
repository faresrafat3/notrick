# PROPOSAL — P-013
> the ONLY thing a guest may create. Filed in proposals/. Never edited after filing
> (corrections = a new proposal citing the old one). Owner reads, rules, and only an
> approved-docs moment moves its content into doctrine.

## Meta
- **ID:** P-013 · **filed:** 2026-09-08 · **by:** executor, SERIES 2 R3 pin trial (glm-5.3-flash session, ROUND 3)
- **boot-gate quote (must match the agent's first reply):** "# VERSION — v0.00001" · rights: operator-named executor for ROUND 3 only — not Owner, not a charter, not a guest · wall: no execution of the mind, no runtime (~/.openclaw, ~/.dsh), no Owner-by-right fields (threshold value, breakthrough definition, charter signatures, GO), no doctrine writes.
- **type:** rot report + re-pin request (R3 pin trial; NOT a doctrine edit — INTEGRITY.md untouched by this round)

## The proposal (one sentence)
The Owner is asked to (a) rule V-003 (violations.md changed after its pin with no logged moment — filed, not fixed), and (b) authorize one approved-docs moment that settles the pin-count self-contradiction (header says 42; file holds 44) and either re-pins the tree as-of a quiet moment or formally reclassifies violations.md (and CONTEXT-class files) as unpinned-by-rule.

## Evidence (R10 — every claim crosses an existing entry)
1. **The trial (commands, 2026-09-08):** `sha256sum -c <(grep -E '^[0-9a-f]{64}' INTEGRITY.md)` = **43 OK / 1 FAILED**; full per-file table in RUN/PIN_TRIAL.md. The one failure: `./violations.md` pinned 868d35aa707f0f4ef92a7e13c20b8035cd15b097cb9d8c1457a3e858481ca325, computed c39f54c05e16530b1fa69f834186e84b414a92dde66c6e16823f429eb56a9fbc (mtime 2026-09-06 23:03:38).
2. **The count rot (S-03, RUN/STALE.md):** `grep -cE '^[0-9a-f]{64}' INTEGRITY.md` = **44 hash lines** vs `sed -n '24p' INTEGRITY.md` = "**42 files**" vs CONTEXT.md:399 "(43 files pinned incl. the closeout doc)" — three values on one settled slot; the honest reconciliation is mechanical: 44 pins exist now, the header was written before the last two pins were appended (or miscounted), and no moment ever fixed the header.
3. **The authorization search:** `git log --follow -- violations.md` = ONE commit (45f7484, the public mirror) whose content already carries the current hash — the pinned state was never git-recorded; the change happened 2026-09-06 23:03:38 per mtime; CONTEXT.md decision log contains re-pin moments (:164, :185, :232-234, :280-292) but NONE names violations.md; INTEGRITY.md:6 says "A mismatch is NEVER silently fixed: file it in violations.md verbatim, Owner rules" — V-003 filed accordingly this session.
4. **The structural question (V-003 note):** violations.md is append-only-by-design (AGENTS.md "the record is the supervision") — every agent must append to it, so its hash CANNOT stay stable while the system works; CONTEXT.md is already excluded from pinning for exactly this mutability (INTEGRITY.md:17-19, governing-chat rule). Pinning violations.md guarantees a permanent mismatch or forces agents to choose between filing violations (V-003-class) and obeying the append-only law.
5. **Comptroller agreement (B5):** independent recompute (RUN/briefs/r3-comptroller.md, run 05:53:04Z) agrees on all four numbers (44/42/43/1) and the hash pair — no disagreement to log.
6. **Requested Owner acts (mechanical):** (i) rule V-001..V-003; (ii) pick ONE: [A] re-pin everything as-of a quiet moment + fix the header count + exempt append-only files by rule (the CONTEXT precedent), or [B] keep violations.md pinned and accept that every legitimate append creates a filed mismatch (documented as intended friction).

## Owner ruling
- {APPROVED into doctrine via {date} approved-docs moment | REJECTED, reason | HELD}
- *(empty-by-right — the guest NEVER fills this)*

---
obituary: this proposal dies the moment its evidence stops re-deriving (run the sha256sum -c
command against any later tree state and the counts no longer match what the Owner was asked
to rule on), or the moment a re-pin happens WITHOUT the Owner moment it requests — either
event makes this demand decorative, and it retires via Omega-5 with heir = the next citing
proposal.