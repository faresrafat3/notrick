# PRIMITIVES_PROBE — one-line purpose: propose + break-test each primitive before freeze (ops 0402-0416).
Rule: definitions are one dry sentence. Atmosphere = fail.

## P1 QUOTE — propose (0402)
A frozen quadruple (path, line, text, sha256 digest) holding a verbatim source string; the machine's only debit atom.
Break-test (0403): if removed, entries can cite loose memory instead of files — the ledger admits unanchored debits; machine dies. KEEP.

## P2 RECEIPT — propose (0404)
A raw byte string produced by executing a GATE against workspace files, stored with its honoring-cost; the machine's only credit atom.
Break-test (0405): if removed, nothing external closes an entry; every verdict collapses to self-report. KEEP.

## P3 GATE — propose (0406)
A named re-runnable criterion (procedure + pinned criterion text) fixed before OPEN, whose output is deterministic over frozen inputs.
Break-test (0407): if removed, re-run is impossible; CLOSE has no executing body. KEEP.

## P4 ENTRY — propose (0408)
A record row (quote, receipt, gate, slot-values, verdict-field); the only unit that can hold a verdict state.
Break-test (0409): if removed, SUSPENSE and WRITE_DOWN have no subject; the store is vacuous. KEEP.

## P5 SUSPENSE — propose (0410)
A state assigned to an ENTRY whose receipt does not match its gate; the machine never asserts such an entry true or false.
Break-test (0411): if removed, unmatched claims are either silently true or silently false; C0040 dies. KEEP.

## P6 CHART — propose (0412)
A finite named vocabulary (axis, wall) with automatic refusal of out-of-set slot values.
Break-test (0413): if removed, slot values float; D0001/D0002 and I4 have no enforcement. KEEP.

## P7 WRITE_DOWN — propose (0414, justified 4 lines)
A recorded removal (entry-id, reason, violation-line) that is the only lawful way an entry leaves the ledger.
Justification: C0048/C0049 require recorded not silent removal; a deletion-with-note is the atom that makes removal auditable; without it, KILLED entries leak out of the record. KEEP.

## P8 STALE — propose (0415, justified 4 lines)
A binary predicate: two entries differ on one settled slot; both are marked STALE until one is re-entered.
Justification: D0044 (version conflict) is exactly this predicate; the machine must detect it before any later OPEN on that slot, or conflicting entries both read as closed; it is a detection primitive, not a label. KEEP.

## Costume kills (0416)
- price (C0007) — killed at verdict; no buyer exists → not primitive.
- stigmergy (C0008) — no trace-read mechanism → not primitive.
- VM/opcode (C0003) — flavor only → not primitive.
- obituary (T0006) — a write-down rider, not an atom → not primitive.
- lesson/heir (D0003/D0004) — no slot; costume risk → not primitive.
PROBE RESULT: 8 kept, no kill needed among 0402-0415 proposals.