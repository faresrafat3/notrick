# TERMS — one-line purpose: technical terms with LOCAL meaning only. ID|term|meaning|stability|example anchor
| ID | term | local meaning | stability | example anchor |
|---|---|---|---|---|
| T0001 | K-line | 4-tuple {active charter set × axis × wall × gate verdict} proving a result square fits the grid. | stable | C0001 / rcvm.md L52-57 |
| T0002 | grid (G) | persistent crossword-shaped store of result squares, addressed (DS-id, attempt). | stable | C0001 / rcvm.md L24 |
| T0003 | burrow | the mapped niche a charter is allowed to act in; borders read from the DS map, not self-description. | stable | C0010 / adversarial-audit.md L26-29 |
| T0004 | gate | verification a claim does not own; MIC-23 re-runs it. | stable | C0013 / RULES.md L25 |
| T0005 | axis tag | MIC-31 label of an attempt's direction; 3 same tags promote a column to theme. | stable | C0009 / rcvm.md L42-43 |
| T0006 | obituary | pre-registered death condition written at birth; "when useful" is not one. | stable | C0004 / arc-protocol.md L24-25 |
| T0007 | receipts | cheap per-line evidence an output existed and was self-consistent; never proof of correctness. | stable | C0020 / proposal-cross-exam.md L73-75 |
| T0008 | results-as-prices | outcomes, not words, allocate attention/fuel across the swarm. | slippery (metaphor-level; no pricing mechanism specified) | C0007 / ten-axis-knowledge-map.md L8 |
| T0009 | paper mode | rulings/verdicts produced by one brain wearing all seats; legal as rehearsal, never counted as ratified. | stable | C0018 / proposal-cross-exam.md L50-52 |
| T0010 | wall | a named constraint broken by an attempt; feeds the axis ledger and the Prime's next angle. | slippery (referenced everywhere; ledger format never shown) | C0001 / RULES.md L16-18 |
| T0011 | falsification criterion | the kill-switch line every D-NN decision must carry; states the observation that re-forges the decision. | stable | C0021 / decision-review.md L2-3 |
| T0012 | masterpiece gate | a forge counts only after a real task exercised the charter; paper rehearsal never proves it. | stable | C0031 / ch-003-maker.md L13 |
| T0013 | NO NICHE call | the named trigger fired when a task line finds no burrow; the only lawful demand for a new charter. | stable | C0030 / ZERO-READINESS.md L27-28 |
| T0014 | burrow map | the DS-page section mapping task lines to charters; also the Maker's trigger document. | stable | ch-004 L12-14 / ZERO-DAY-RUNBOOK.md L19-22 |
| T0015 | Owner-by-right fields | slots (threshold, breakthrough, signature, GO) only the Owner may fill; empty until zero by design. | stable | C0034 / RATIFICATION-BATCH-001.md L17-18 |
| T0016 | hash pin | a sha256 line in INTEGRITY.md freezing a doctrine file's content; mismatch = tampering or unlogged change. | stable | C0036 / INTEGRITY.md L24-69 |
| T0017 | re-pin | the act of refreshing INTEGRITY hashes, lawful only after a logged Owner approved-docs moment. | stable | INTEGRITY.md L14-15 |
| T0018 | boot gate | an agent's first reply quoting version + rights + walls verbatim; no quote, no standing. | stable | SUPERVISOR-CHIP.md L9 / AGENTS.md BOOT GATE |
| T0019 | quorum | the minimum recorded task count before a verdict (H/D judgment) is lawful at all. | slippery (tier schedule exists only as unadopted proposal) | pr-002 L14-19 / C0029 |
| T0020 | honoring-cost | minutes spent honoring a claim through receipt checks, proposed as a K-line field to price verification. | slippery (PR-005 candidate, unadopted, never measured) | pr-005 L24-34 / C0019 |

T0001 K-line: stable — same 4-tuple in R5, rcvm, crossword-engine, DS template. Example: "K = (A, D, W, G)" (rcvm.md L52).
T0002 grid (G): stable — same sparse-matrix store across rcvm and crossword-engine. Example: "Row: DS-{NNN} ... Column: attempt-{M}" (rcvm.md L27-29).
T0003 burrow: stable in law usage (R7, X-01 patch). Example: "my burrow's borders are read from the DS map" (adversarial-audit.md L28-29).
T0004 gate: stable; R6 defines ownership test. Example: "A gate owned by the claimer is not a gate." (RULES.md L25).
T0005 axis tag: stable; MIC-31 emits it. Example: "AXIS_TAG(attempt) → emits axis tag; tracks 3× count" (rcvm.md L124).
T0006 obituary: stable in arc-protocol; used as verdict source. Example: "the pre-written condition is quoted" (arc-protocol.md L33).
T0007 receipts: stable within PR-005/006 and cross-exam. Example: "a COUNT with a range, not a sample" (proposal-cross-exam.md L68-69).
T0008 results-as-prices: slippery — asserted 3× but no mechanism computes a price. Example: "results are the prices" (FOUNDATIONAL-BRIEF.md L45).
T0009 paper mode: stable in cross-exam (mode: paper header). Example: "H4's counter reads ONLY mode: ratified RJs" (proposal-cross-exam.md L51).
T0010 wall: slippery — central to R3/K-line but never instantiated in a real wall ledger. Example: "wall ∈ Wall ... (from wall ledger)" (rcvm.md L55).
| P04 pointer ONLY (0485) | T0001 (K-line = derived D1) · T0004 (gate = P3) · T0005 (axis tag = slot into AxisChart) · T0007 (receipts = P2) · T0010 (wall = slot value in WallChart) · T0016 (hash pin = P1 digest / D5 PINNED) — terms point at primitives; nothing redefined. |
