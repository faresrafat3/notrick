# SPOTCHECK — D1-Q15

8 quotes verified verbatim against source files via `sed -n` in-turn output.

| ID | Source:Line | Verdict | Note |
|----|-------------|---------|------|
| Q0001 | mics/mic-23-gate-runner.md:2 | PASS | exact line; blockquote marker `>` stripped, text verbatim |
| Q0002 | mics/mic-23-gate-runner.md:7 | PASS | exact line |
| Q0003 | mics/mic-23-gate-runner.md:8 | PASS | exact line |
| Q0004 | mics/mic-31-axis-tagger.md:21 | PASS | exact line |
| Q0007 | proposals/pr-005-cheap-receipts.md:7 | PASS (fragment) | "...but nobody prices the checking itself." — substring verbatim |
| Q0008 | ZERO-DAY-RUNBOOK.md:4 | PASS | exact line |
| Q0009 | ZERO-DAY-RUNBOOK.md:56 | PASS | exact line |
| Q0010 | mics/mic-07-budget-counter.md:8 | PASS | exact line |

## Result
- 8/8 PASS, zero mismatches, zero kills.
- Q0007 recorded with fragment annotation in QUOTES.md (load-bearing word "prices", unmatched elsewhere in corpus).
- No corrections required to hept/ledger/QUOTES.md.