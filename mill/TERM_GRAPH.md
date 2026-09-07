# TERM_GRAPH — one-line purpose: how terms use/depend/confuse each other, with claim IDs. Link|type|evidence
| Link | type | evidence |
|---|---|---|
| T0001 K-line uses T0004 gate | uses (4th tuple slot is the gate verdict) | C0001 / rcvm.md L52-57 |
| T0001 K-line uses T0005 axis-tag | uses (axis slot D) | C0001 / rcvm.md L54 |
| T0001 K-line uses T0010 wall | uses (wall slot W, from wall ledger) | C0001 / rcvm.md L55 |
| T0001 K-line depends T0002 grid | depends (only grid squares with WF K-lines enter) | C0001 / rcvm.md L63 |
| T0003 burrow depends T0014 burrow-map | depends (borders read from the DS map, not self-description) | C0014 / adversarial-audit.md L28-29 |
| T0013 NO-NICHE-call depends T0003 burrow | depends (call fires when a line finds no burrow) | C0030 / ZERO-READINESS.md L27-28 |
| T0012 masterpiece-gate depends T0004 gate | depends (proof of a forge is a real task + gate it does not own) | C0031 / ch-003 L13 |
| T0014 burrow-map uses T0003 burrow | uses (maps task lines onto burrows) | ch-004 L12 / ZERO-DAY-RUNBOOK L19-22 |
| T0008 results-as-prices depends T0011 falsification-criterion | depends (a price signal without kill-switches is unfalsifiable) | C0021+C0023 / decision-review D-03 |
| T0008 results-as-prices confuses T0015 Owner-by-right-fields | confuses (who decides fate: results or Owner — unresolved X0003) | CONTRA X0003 |
| T0019 quorum depends T0011 falsification-criterion | depends (no verdict before quorum; verdicts feed falsifiers) | C0022+C0029 / pr-002 L14-19 |
| T0020 honoring-cost depends T0007 receipts | depends (cost exists only if receipts price the checking) | C0019 / pr-005 L24-34 |
| T0016 hash-pin depends T0017 re-pin | depends (pins are only current as of a lawful re-pin) | C0036 / INTEGRITY L14-15 |
| T0018 boot-gate depends T0015 Owner-by-right-fields | depends (rights quoted at boot are Owner-granted, never self-claimed) | SUPERVISOR-CHIP L9 / AGENTS BOOT GATE |
| T0010 wall confuses T0003 burrow | confuses (constraint being broken vs region allowed to act — sources slide between the two) | CONTRA X0004 / ch-001 L6 vs L7 |
