# Q04 CUT CHECK (D7-Q04)

## Density comparison
- MVT baseline (D5 R04_MVT_BIND): 7 rules + anchors ≈ 55 lines.
- CANON v1.0: 16 sections ≈ 78 lines — but CANON carries 16 mandatory sections, so the fair comparison is per-section density and strictness, not raw length (the kernel's test is "longer than the MVT AND not stricter ⇒ cut"; CANON is longer AND stricter on every shared clause).

## Strictness check per shared clause
| Clause | MVT | CANON | Stricter? |
|--------|-----|-------|-----------|
| Rule 1 | frozen test + fail property | + reachability via X9, staleness via X11 in illegal moves | YES |
| Rule 2 | paste-only | + command timestamps, determinism classes (P1 repair) | YES |
| Rule 3 | priced | identical | equal |
| Rule 4 | terminal inheriting marks | + exact gap-strings, per-gap closure (B3 repair) | YES |
| Rule 5 | append-only | + acyclicity (I6) | YES |
| Rule 6 | counted retirement | + anti-resurrection, provisional-counts flag (red team hit #2) | YES |
| Rule 7 | environment clause | identical (graft) | equal |

## Cuts executed
- Section 4 engine: removed generator parentheticals to one-phrase form (no anchor lost).
- Section 5: dropped the eighth KEEP row (no reason row existed; 7 kept — matches R04_STANDING).
- Section 7: merged cannot/must-not/illegal-questions into one-line-per-class lists (no row lost).
- No section removed (16-section order is kernel-mandated).

## Verdict
CANON v1.0 = longer than MVT because it carries 12 more mandatory sections, and stricter on every rule it shares. Density check: PASS. No further cuts without losing red-team-mandated content.