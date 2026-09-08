# CHECKER (D2-Q15)

Audit: every debt cites an id; every discrepancy has a cost that is not "nuance".

## Rule 1 — Debts D0001-D0020

| Debt | Cites anchor id | Verdict |
|------|-----------------|---------|
| D0001 | TERMS.md absent entry — anchor = absent | FAIL: no id; "absent entry" is a non-citation |
| D0002 | rcvm.md:49,66-69 | PASS |
| D0003 | FOUNDATIONAL-BRIEF.md:45-46 | PASS |
| D0004 | RULES.md:44-47 | PASS |
| D0005 | FOUNDATIONAL-BRIEF.md:13-14; CONTEXT.md:13-14 | PASS |
| D0006 | ZERO-DAY-RUNBOOK.md:4 | PASS |
| D0007 | FOUNDATIONAL-BRIEF.md:47; CONTEXT.md:197-208 | PASS |
| D0008 | VERSION.md:4-17; CONTEXT.md:311-316 | PASS |
| D0009 | FOUNDATIONAL-BRIEF.md:16; CONTEXT.md:319-321 | PASS |
| D0010 | RULES.md:21-22; CONTEXT.md:73 | PASS |
| D0011 | CONTEXT.md:13-14 | PASS |
| D0012 | ten-axis-knowledge-map.md; pr-005:9 | PASS |
| D0013 | RULES.md:44-47 | PASS |
| D0014 | VERSION.md:11 | PASS |
| D0015 | RULES.md:15-18 | PASS |
| D0016 | rcvm.md:144 | PASS |
| D0017 | rcvm.md:166-178 | PASS |
| D0018 | charters/ch-001-prime.md:37-39 | PASS |
| D0019 | CONTEXT.md:58-66 | PASS |
| D0020 | hypotheses-ledger.md:11-35 | PASS |
| **TOTAL** | 19/20 cite — D0001 fails | **1 FAIL** |

## Rule 2 — Discrepancies DS1-DS8 (cost not "nuance")

| Disc | Cost column | Verdict |
|------|-------------|---------|
| DS1 | queue substitutes for verdicts | PASS |
| DS2 | hidden repair via same-turn cure | PASS |
| DS3 | repetition masks stalled compile | PASS |
| DS4 | role-fusion persists as paper patch | PASS |
| DS5 | same-turn cure IS silent repair | PASS |
| DS6 | formal machinery costume until run | PASS |
| DS7 | delegation dilutes terminus to rubber-stamp | PASS |
| DS8 | moment re-defined per use | PASS |
| **TOTAL** | 8/8 | PASS (0 "nuance") |

## Rule 3 — Fractures FR01-FR05
- All 5 have cost column and evidence ids (from D2-Q03 audit) — PASS 5/5.

## D0001 mid-turn fix (auditor rule: one rebuild)
D0001's anchor "TERMS.md absent entry" is a non-citation. Re-anchor to the source of the word's use: the term "stigmergy" appears in claims-v1.md:6 ("stigmergy: البيئة القابلة للكتابة هي الوسيط الوحيد") and FOUNDATIONAL-BRIEF.md. Re-anchored D0001 -> claims-v1.md:6; TERMS.md absence remains the observation, not the citation.

## Final
- After D0001 re-anchor: debts 20/20 cite; discs 8/8 costed; fractures 5/5 costed. CHECKER PASS.