# STATE SCHEMA (D4-Q06)

The state of a verification situation, in exactly 5 fields (≤6). Each field operationally defined — a stranger can fill it by following the definition.

```
S = (C, F, R, K, M)
```

| Field | Name | Operational definition | Legal values |
|-------|------|------------------------|--------------|
| C | CRITERION | the frozen test text + its named fail condition; must be writable into the header BEFORE any run | string + fail-condition; ∅ only if state is pre-attempt |
| R | RECEIPT | the raw command+output paste, byte-exact, with the in-turn timestamp | paste-block or ∅ |
| K | COST | the pre-committed check price, and the spent amount after the run | integer pair (committed, spent); committed=∅ illegal after first run |
| M | MARK | the current verdict state of the RECORD | UNSET → PASS \| UNVERIFIED(gap) |
| F | FORK | the live rival this state defers to, if any | rival-id + re-entry condition, or ∅ |

## Derivation notes
- No field for "who did it" (attribution is R2's suspended fork — the discipline needs provenance of VALUES (R field), not persons).
- No field for charters/roles: role is only visible as who pays K (COST) — a payer line inside K's committed part.
- M's three values are closed: PASS requires (C∧R∧K committed∧fail-not-fired); UNVERIFIED requires a named gap; UNSET is the only pre-state.
- F exists because VERDICT R1 carries a live fork (R2) — a theory state that cannot name its suspended rival cannot be honest about scope.

## Bound
- 5 fields ≤ 6 cap. Each maps to exactly one primitive family: C←TEST-TEXT, R←TRACE, K←COST, M←MARK, F←(new: fork pointer, minimal addition from D3's live-fork requirement).