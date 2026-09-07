# DERIVED — one-line purpose: derived objects constructed from primitives, with building steps (ops 0418-0423).
## D1 K-LINE — construction (0418)
Steps: (1) OPEN(P1 quote, P3 gate, slots bound to P6 charts) → P4 entry; (2) VERIFY → P2 receipt; (3) CLOSE → verdict CLOSED. 
Result: an entry with axis∈AxisChart, wall∈WallChart, verdict closed. This is the rcvm 4-tuple re-entered under the ledger (C0001).

## D2 TRIAL_BALANCE — construction (0419)
Steps: (1) take the entry set of a period; (2) run CLOSE on each; (3) list every entry not CLOSED and not WRITTEN_DOWN. 
Result: the set of unmatched entries — the machine's honesty report (C0040).

## D3 PERIOD — construction (0420)
Steps: (1) name an interval and a close rule; (2) collect entries CLOSED or WRITTEN_DOWN within it; (3) output summary with honoring-cost total. 
Result: the period-close unit (D0047, EARNED_PATH.5).

## D4 ACCOUNT — construction (0421)
Steps: (1) fix one chart value (e.g., axis=W); (2) filter the entry set on that slot. 
Result: a view of accumulated entries at one chart value — the chart-of-accounts unit D0001/D0002.

## D5 PINNED — construction (0422)
Steps: (1) take a file and a digest; (2) assign the gate "sha256 equals digest"; (3) verify. 
Result: a doctrine/quotation text under integrity check (C0036, T0016).

## Kill check (0423)
- D1 not a label: adds the closed-verdict requirement to an entry → new constraint.
- D2 not a label: the unclosed-list is a new artifact (the machine's report).
- D3 not a label: interval+close rule is a new object with a new state (closed period).
- D4 IS only a filter view — kept solely as the D0001/D0002 account unit; flagged as view, not entity.
- D5 not a label: the hash-match gate is a specialization of P3 with a fixed criterion.
No derived object is a pure rename; D4 is the weakest and is marked view-only.