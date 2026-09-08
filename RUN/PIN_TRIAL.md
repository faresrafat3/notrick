# PIN_TRIAL — R3 recompute (2026-09-08)

> Method: python loop over INTEGRITY.md hash lines calling sha256sum per file — equivalent to `sha256sum -c <(grep -E '^[0-9a-f]{64}' INTEGRITY.md)` (run this session: 43 OK / 1 FAILED). Full hashes shown for MISMATCH rows; truncated (12 hex) for MATCH rows to keep the table readable.

| path | pinned_hash | computed_hash | verdict |
|---|---|---|---|
| ./AGENTS.md | be4ed6e5f620… | be4ed6e5f620… | MATCH |
| ./charters/ch-001-prime.md | e7a01c71dfef… | e7a01c71dfef… | MATCH |
| ./charters/ch-002-council.md | 8bd514021432… | 8bd514021432… | MATCH |
| ./charters/ch-003-maker.md | d73107dd8c6d… | d73107dd8c6d… | MATCH |
| ./charters/ch-004-chief-of-staff.md | 17bfce31caf7… | 17bfce31caf7… | MATCH |
| ./FOUNDATIONAL-BRIEF.md | 910d60880120… | 910d60880120… | MATCH |
| ./mics/mic-07-budget-counter.md | aa224614a4a4… | aa224614a4a4… | MATCH |
| ./mics/mic-11-id-formatter.md | 428aea5c1ca5… | 428aea5c1ca5… | MATCH |
| ./mics/mic-23-gate-runner.md | 87d9dc1b9070… | 87d9dc1b9070… | MATCH |
| ./mics/mic-31-axis-tagger.md | c1751f92aaf2… | c1751f92aaf2… | MATCH |
| ./ONBOARDING.md | 6fd5333c8b64… | 6fd5333c8b64… | MATCH |
| ./proposals/pr-001-proposal-template.md | f65912ff7194… | f65912ff7194… | MATCH |
| ./proposals/pr-002-quorum-tiers.md | 07fc84acb094… | 07fc84acb094… | MATCH |
| ./proposals/pr-003-measurers.md | 622cf8f3478b… | 622cf8f3478b… | MATCH |
| ./proposals/pr-004-paper-rj-quorum.md | b81582d49b3a… | b81582d49b3a… | MATCH |
| ./proposals/pr-005-cheap-receipts.md | b0f61942438e… | b0f61942438e… | MATCH |
| ./proposals/pr-006-receipt-attacks-and-math.md | ba681738dfe0… | ba681738dfe0… | MATCH |
| ./proposals/pr-007-the-crossing.md | c826a6153c89… | c826a6153c89… | MATCH |
| ./proposals/pr-008-veiled-eye.md | baa86e04aecf… | baa86e04aecf… | MATCH |
| ./proposals/pr-009-srs-methodology.md | 375846c5a378… | 375846c5a378… | MATCH |
| ./research/session-2026-09-06-closeout.md | db2f37118a7a… | db2f37118a7a… | MATCH |
| ./proposals/README.md | 51caac2a8bdb… | 51caac2a8bdb… | MATCH |
| ./RATIFICATION-BATCH-001.md | ef4634c856f1… | ef4634c856f1… | MATCH |
| ./research/adversarial-audit.md | 62c9fba1d5b2… | 62c9fba1d5b2… | MATCH |
| ./research/arc-protocol.md | 83b7813e8685… | 83b7813e8685… | MATCH |
| ./research/crossword-engine.md | 74c57be1b563… | 74c57be1b563… | MATCH |
| ./research/decision-review.md | 9c676f301069… | 9c676f301069… | MATCH |
| ./research/hypotheses-ledger.md | 6c67f85f2e8d… | 6c67f85f2e8d… | MATCH |
| ./research/proposal-cross-exam.md | cea35befd3ae… | cea35befd3ae… | MATCH |
| ./research/provider-exchange-note.md | dcbf7fc1c781… | dcbf7fc1c781… | MATCH |
| ./research/rcvm.md | 0c4697fafe3b… | 0c4697fafe3b… | MATCH |
| ./research/rj-001-premises-ruling.md | 57f5bb50dfee… | 57f5bb50dfee… | MATCH |
| ./research/ten-axis-knowledge-map.md | 973304cfb7e2… | 973304cfb7e2… | MATCH |
| ./RULES.md | 2b70b7b47bf4… | 2b70b7b47bf4… | MATCH |
| ./SUPERVISOR-CHIP.md | 58d632bb3cba… | 58d632bb3cba… | MATCH |
| ./templates/CH.md | 0ef13257675c… | 0ef13257675c… | MATCH |
| ./templates/DS.md | b48239b0fc07… | b48239b0fc07… | MATCH |
| ./templates/MIC.md | 325fd73951dc… | 325fd73951dc… | MATCH |
| ./templates/PROPOSAL.md | f6986abac919… | f6986abac919… | MATCH |
| ./templates/RJ.md | 7f4e760fd02a… | 7f4e760fd02a… | MATCH |
| ./VERSION.md | d56582de75ca… | d56582de75ca… | MATCH |
| ./violations.md | 868d35aa707f0f4ef92a7e13c20b8035cd15b097cb9d8c1457a3e858481ca325 | c39f54c05e16530b1fa69f834186e84b414a92dde66c6e16823f429eb56a9fbc | MISMATCH |
| ./ZERO-DAY-RUNBOOK.md | 70def32cc156… | 70def32cc156… | MATCH |
| ./ZERO-READINESS.md | 9430cc413a15… | 9430cc413a15… | MATCH |

## The three counts (W9 — commands)
- hash lines INTEGRITY.md holds: `grep -cE '^[0-9a-f]{64}' INTEGRITY.md` = 44
- files the header claims: `sed -n '24p' INTEGRITY.md` = "## Pinned hashes (sha256) — 42 files"
- doctrine files NOT pinned: doctrine set = 8 root doctrine files + 4 charters + 5 templates + 4 mics + 6 protocols = 27 files; `comm -23` against the 44 pinned paths = **7 unpinned** (INTEGRITY.md itself + 6 protocols/ files; commands in LEDGER R3 entry)

## UNPINNED-BUT-DOCTRINE (the 7)
| path | note |
|---|---|
| INTEGRITY.md | the pin file itself — self-pinning is the L5 paradox the skeptic names; its integrity rides on git history |
| protocols/AFM-v1.md | protocol, not law (W8: nothing is law until the generator exists) |
| protocols/AFM-DESIGN-NOTES.md | same class |
| protocols/ADHA-v1.md | same class |
| protocols/ADHA-DESIGN-NOTES.md | same class |
| protocols/CWVP-v1.md | same class (and carries the S-18 43-vs-44 line-count error, RUN/STALE.md) |
| protocols/VERIFICATION-CHECKLIST.md | same class |

---
obituary: this file dies the moment its numbers cannot be reproduced by the same commands on the same tree state; a pin trial that is not re-runnable is a superstition with a spreadsheet.

## POSTSCRIPT (2026-09-08, same round, pre-commit)
After the trial ran, this series APPENDED V-003 to ./violations.md (mandated by the round's
task 3: mismatches are filed there verbatim). The file's computed hash changed a second time:
c39f54c0… (row above) → c46f161a8d65583987b76406bc8251929ba3f42565dc1004c51ac07369160d37.
The MISMATCH row above therefore records the trial-time state, not the current state — this
snapshot is not rewritten. The pin is now mismatched by lawful action twice over; the
red-by-default deadlock (r3-skeptic brief §2) is demonstrated by this round itself.
