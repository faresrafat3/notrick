# EX1 — one-line purpose: micro-example of a real workspace fragment rewritten in the skeleton (ops 0454-0455).
Fragment: V-001 — a fabricated sha256 pin "f0a9b3c2d1e4…f9a0" typed into INTEGRITY.md for pr-009 without computing it (violations.md L5).

Skeleton rewrite:
- ENTRY e1: QUOTE = (INTEGRITY.md, pr-009 pin line, "f0a9b3c2d1e4…f9a0", digest-of-that-text); GATE = "sha256sum ./proposals/pr-009-srs-methodology.md"; SLOTS = (axis=integrity, wall=hash-pin).
- VERIFY(e1) → RECEIPT = "375846c5a378d3f336ff1fd6d13d2475d117513fb68b62104265b7c174505e12" (honoring-cost: one sha256sum).
- CLOSE(e1) → SUSPENDED (receipt ≠ quoted text).
- WRITE_OFF(e1, reason="pin typed without compute; fabrication", violation-line=violations.md L5) → WRITE_DOWN. Verdict: WRITTEN_DOWN.
This is the machine catching V-001 exactly as the sources record it — C0048 as an instance, not a story.

## Snag list (0455)
1. The fabricated pin is a QUOTE without a preceding legal entry — i.e., O1 was bypassed in reality; the skeleton would mark the pin row as never-opened, needing a WRITE_DOWN of an unopened row.
2. Violations.md line serves as both reason and receipt-of-record in one file; the skeleton separates them (I3) — that is a schema difference to carry forward, not a fit problem.
3. `axis=integrity` is an invented chart value; per I4 it must be added to AxisChart with a definition before reuse.