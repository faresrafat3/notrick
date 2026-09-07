# PRIMITIVES — one-line purpose: the frozen primitive set of the skeleton (op 0417, frozen 0484).
| ID | primitive | definition (one dry sentence) | source anchor |
|---|---|---|---|
| P1 | QUOTE | A frozen quadruple (path, line, text, digest) holding a verbatim source string; the only debit atom. | C0036, C0020 |
| P2 | RECEIPT | A raw byte string produced by executing a GATE against workspace files, stored with honoring-cost; the only credit atom. | C0020, C0019 |
| P3 | GATE | A named re-runnable criterion fixed before OPEN, deterministic over frozen inputs, never owned by the claimer. | C0040, C0025 |
| P4 | ENTRY | A record row (quote, receipt, gate, slot-values, verdict-field); the only verdict-carrying unit. | C0001, C0036 |
| P5 | SUSPENSE | The state of an entry whose receipt does not match its gate; never asserted true or false. | C0040 |
| P6 | CHART | A finite named vocabulary (axis, wall) that refuses out-of-set slot values. | D0001, D0002 |
| P7 | WRITE_DOWN | A recorded removal (entry-id, reason, violation-line); the only lawful departure from the ledger. | C0048, C0049 |
| P8 | STALE | A predicate over two entries differing on one settled slot; marks both until one is re-entered. | D0044 |
Count: 8 ≤ 8 (0474). Freeze: primitive names frozen 2026-09-06; renaming = F0030.