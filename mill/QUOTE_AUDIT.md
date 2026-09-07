# QUOTE_AUDIT — one-line purpose: spot-check of quotes against sources via grep; mismatches corrected.
| QID | method | result |
|---|---|---|
| Q0001 | grep -F "Only WF(K) squares enter G" research/rcvm.md | PASS (1 hit, L63) |
| Q0004 | grep -F "Nothing exists in NOTRICK without its death written first" research/arc-protocol.md | PASS (1 hit, L7) |
| Q0012 | grep -F "ALL FIVE: pre-registered, untested, awaiting zero day" research/hypotheses-ledger.md | PASS (1 hit, L39) |
| Q0019 | grep -F "bankrupts before H3's quorum fills" research/proposal-cross-exam.md | PASS (L59; quote spans L57-59 — first grep failed on line break, not on text) |
| Q0020 | grep -F "Receipts are EVIDENCE, not TRUTH" research/proposal-cross-exam.md | PASS (L75) |
| Q0025 | grep -F "results are the prices" FOUNDATIONAL-BRIEF.md + ten-axis | PASS (both L45/L8) |
| Q0027 | grep -F "passes a gate it does not own" FOUNDATIONAL-BRIEF.md | PASS (L10) |
| Q0008 | grep -F "documents ARE the environment" ten-axis-knowledge-map.md | PASS (first grep used wrong case; source confirmed lowercase) |
Verdict: 8/8 verbatim; zero mismatches; no corrections needed. All quotes in QUOTES.md were taken from direct file reads of the cited paths.
