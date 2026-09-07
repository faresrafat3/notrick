# Crossword Engine — the hidden computational structure of NOTRICK
> 2026-09-06 · breakthrough framing: NOTRICK is not an agent system — it is a crossword engine. Every component maps to a crossword primitive. This document derives the methodology from the metaphor.

## The Core Insight (R10 + K-lines + DS Template)

R10 (Haack): "Evidence is a CROSSWORD. Every new claim must intersect already-placed entries at every crossing point."

Minsky K-lines: "memory = re-instantiating the active agent-set of a solved problem."

DS template K-line field: `{CH-active set · axis · wall · gate-result}`

**Every result record is a crossword square that must satisfy FOUR crossing constraints simultaneously:**
1. CH-active set (which charters were active) → ACROSS constraint
2. axis (MIC-31 tag) → DOWN constraint  
3. wall (what constraint was broken) → THE INTERSECTION
4. gate-result (MIC-23 verdict) → THE VERIFICATION

A result without a K-line "is not indexable — the Curator refuses it" (R5). This is exactly: a square that doesn't fit both across and down is rejected by the editor.

## Complete Component Mapping

| NOTRICK Component | Crossword Primitive | Why |
|-------------------|---------------------|-----|
| **Charters (CH-001..004)** | **ACROSS CLUES** | Structural constraints spanning the entire grid. One sentence niche = clue definition. Powers = solving directions. Prohibitions = "this answer cannot be..." Retirement trigger = clue expires when theme shifts. |
| **MICs (07,11,23,31)** | **DOWN CLUES** | Operational constraints going deep. One trigger/act/refusal = precise clue. MIC-31 axis-tagger = tags the down-clue column. 3 same-tag = column complete → promotes to across-theme (Prime migration). |
| **DS Result Records** | **FILLED SQUARES** | Each result = one square. K-line = proof the square fits both across (charters) and down (axis). Lesson line = pencil marks for future solvers. Fate decision = expand/refine/retire the clue. |
| **K-line** | **CROSSING VERIFICATION** | The 4-tuple {CH-set × axis × wall × gate} IS the crossing proof. No K-line = square doesn't fit = Curator rejects. |
| **Curator (open item 5)** | **CROSSWORD EDITOR** | Maintains grid integrity. Rejects contradictory entries (R10). Promotes local patterns to structural themes. Born ONLY when backlog demands (R7: birth on demand). |
| **Prime (CH-001)** | **THEME REVEALER** | "Break the wall that stops a long-horizon task." When down-clues (axis tags) align 3× → the across-theme emerges → Prime migrates the wall. |
| **Council (CH-002)** | **ACROSS-CLUE VALIDATORS** | 4 seats = 4 validation angles. RJ rounds = judge before ink commits. "SILENCE — deliberate" = pencil mark, not ink. |
| **Maker (CH-003)** | **CLUE FORGER** | Forges new clues (charters) ONLY on documented NO NICHE call. "Cannot solve tasks itself" = forger doesn't solve, only makes clues. |
| **CoS (CH-004)** | **GRID LAYOUT ARTIST** | Composes DS = designs the empty grid section for this task. Three voices = across/down/theme. Zero authority = layout artist doesn't solve. |
| **Version Scale (v0.00001 → v1.0)** | **CROSSWORD DIMENSIONS SOLVED** | Each zero consumed = one cognitive dimension unlocked. See Version Curriculum below. |
| **Provider Exchange (concept)** | **NEW CLUE SOURCES** | 38 keys = 38 potential clue providers. Rate limits = clue scarcity. Exchange = clue marketplace. |
| **Hypotheses (H1..H5)** | **PREDICTED PATTERNS** | Pre-registered crossword patterns. H1: niche constraints reduce wrong-direction fills. H2: grid solves without central solver. H3: editor catches bad fills. H4: validators improve clues. H5: solved squares accelerate future fills. |
| **ADRs (D-01..D07)** | **GRID STRUCTURE DECISIONS** | Each ADR = a decision about grid topology. Falsifier = "this grid structure fails at..." |
| **Owner** | **PUZZLE AUTHOR** | Defines grid boundaries (threshold, breakthrough). Ratifies solutions (R8). Only one who can say "this puzzle is complete." |

## Version Curriculum — The Five Dimensions

| Version Transition | Zero Consumed | Dimension Unlocked | Crossword Meaning |
|--------------------|---------------|-------------------|-------------------|
| v0.00001 → v0.0001 | 1st | **Governance** | Across-clues (charters) ratified → grid has structural constraints |
| v0.0001 → v0.001 | 2nd | **Energy** | Fuel verified (smoke call) → grid has power to solve |
| v0.001 → v0.01 | 3rd | **Cognition** | First DS result → first square filled legitimately |
| v0.01 → v0.1 | 4th | **Metacognition** | Curator/Verifier born → editor and checker active |
| v0.1 → v1.0 | 5th | **Autopoiesis** | Self-modifying code → grid rewrites its own clues |

**The version IS the distance-to-zero because the crossword has exactly 5 dimensions to solve.** Gates consume zeros as they open. Never moves backward (a solved dimension stays solved). Only Owner moves it (author decides when dimension is truly solved).

## Why This Framing Explains Everything

### No Live Orchestrator (D-02) = Crossword Has No Central Solver
A crossword is solved by **clues alone** — no central process coordinates the filling. Each square is solved by the intersection of its across and down clues. Stigmergy (traces in environment) = the grid itself. Blackboard = the grid. Contract Net = "this clue needs a solver" → Maker forges → Owner ratifies.

### Documents Are the Only Voice (R1/R10) = The Grid IS the Medium
Transaction costs (Coase) decide interfaces. In a crossword, the grid IS the interface — zero transaction cost between clues. Documents persist the grid state. No live messages needed — the grid coordinates.

### K-line on Every Result (R5) = Every Square Must Prove Crossing
R5: "A result without a K-line is not indexable." Translation: a square without crossing proof is not a valid fill. The Curator (editor) enforces this.

### Phase A (Human-Worn MICs) = Human Crossword Testing Before Automation
Paper-worn MICs (D-06) = humans test the clues before code automates them. Falsifier: "if manual honoring misses violations → Phase B demanded." Exactly: if human solvers miss bad fills, we need automated checker.

### Birth on Demand (R7) = New Clues Only When Grid Demands
R7: "A new charter is forged ONLY on: a documented NO NICHE call, or explicit Owner demand." Translation: don't add clues speculatively. Only when the grid has a hole that no existing clue fits.

### Antifragile Walls (R3) = Contradicting Clues Are Assets
R3: "A wall failed 3× on one axis is not a shame record — it is an escalation trigger AND an asset." Translation: a down-clue that contradicts the across-theme 3 times = that column has a NEW THEME emerging. The axis ledger feeds Prime's next angle.

### Breakthrough Metric Deferred = The Metric IS Grid Fill Rate
Owner defines breakthrough at zero day. In crossword terms: breakthrough = "grid fill rate without contradictions." Until the grid exists, the metric is undefined — correctly deferred.

## Import Mirror Revisited: Every Canon Import Lands as a Clue Type

| Canon Import | Lands As | Crossword Role |
|--------------|----------|----------------|
| Kitcher/Gause (epistemic division, competitive exclusion) | Charter niche law (Gause check) | Across-clue uniqueness constraint |
| Hayek (distributed knowledge, prices) | Results-as-prices (DS records) | Square values = price signals |
| Minsky K-lines | K-line field in DS | Crossing verification mechanism |
| Minsky Society of Mind | MIC population | Down-clue solver diversity |
| Goodhart's Law | Human seat (Council Seat IV) | Metric corruption counterweight |
| Boyd OODA | Agent loop (perceive→intend→act→verify→learn) | Solving cycle per square |
| Clausewitz Schwerpunkt | DS Schwerpunkt field | The one square whose fall opens the grid |
| Kant | Kant check in ratification | Universalizability test for clues |
| Plato Noble Lie | Prohibition in every charter | "No false fills" rule |
| Montesquieu | Maker/Council/CoS/Verifier separation | Separation of clue-forging, validating, layout, checking |
| Sutton | CH versioning (R2) | Fixed form (clue template), moving content |
| Taleb | Antifragile walls (R3) | Contradictions strengthen the grid |
| Coase | Interface evolution (R1) | Transaction costs decide clue↔grid interfaces |
| Arendt | Plurality floor + natality (R9) | Minimum solvers + right to propose new clues |
| Haack | Crossword evidence (R10) | **THE FOUNDATIONAL METAPHOR** |
| Stigmergy | Documents as environment | Grid as shared medium |
| Blackboard | DS/RJ/CH as blackboard | Grid sections as workspace |
| Contract Net | NO NICHE → Maker → Owner | Task announcement → bid → award |

**Pending Imports (no body yet) = Clues Not Yet Forged:**
- Leibniz harmony → needs first cross-agent experiment (first multi-square fill)
- Socratic elenchus → needs Council round field + recorded run (first validation cycle)
- Popper/Lakatos → retirement triggers exist; need one real retirement (first clue expiry)

## Falsification Criteria for the Crossword Engine Hypothesis

This framing is ITSELF a hypothesis. It falls if:

1. **A result record passes its gate but its K-line shows NO intersection** (CH-set × axis × wall × gate don't actually constrain each other) → crossing verification is theater.
2. **The Curator (when born) cannot detect a contradictory fill that a human spots** → editor is weaker than human.
3. **Version zeros are consumed but no new cognitive dimension emerges** (e.g., charters ratified but governance doesn't constrain behavior) → version scale is decorative.
4. **Hypotheses H1..H5 all fail their verdict rules** → the predicted crossword patterns don't exist.
5. **A task completes with zero K-line intersections** (no charters active, no axis tagged, no wall broken, no gate run) → the grid is optional.

## Methodological Implications for Zero Day and Beyond

### For the First Task (Zero Day Move 1)
The Owner names the first task. In crossword terms: **the author draws the first grid section and writes the first clues.** The task MUST be a falsifiable experiment (RJ-001 cond.1) = a grid section with a known solution pattern to test.

### For Council Review (Zero Day Move 2)
CoS composes DS-001 (grid layout). Council judges (RJ round) = validators check the clues before solving starts. Binding conditions = "this clue must be solved this way."

### For Execution (Zero Day Moves 3-4)
Cline wears MICs (Phase A) = human solvers fill the grid manually. MIC-23 re-runs gate = automated checker verifies each fill. Result record + K-line = filled square with crossing proof.

### For Curator Birth (Open Item 5)
Curator is born when backlog demands = when the grid has enough filled squares that local patterns need promotion to structural themes. Not invented early (R7).

### For Provider Exchange
When rate limits hit (demand-documented), the exchange becomes a **clue marketplace** — new clue providers (keys) bid to supply missing down-clues. Per-niche budget accounting (R3 axis ledger) = each clue column has its own budget.

### For Phase B (MICs as Code)
MICs become pure code = automated solvers for specific down-clue types. MIC-07 = budget-counter solver. MIC-11 = ID-formatter solver. MIC-23 = gate-verifier solver. MIC-31 = axis-tagger solver.

## The Breakthrough Definition (Owner's Empty Field)

When Owner fills the breakthrough definition at zero day, in crossword terms they define:
> **"Breakthrough = grid fill rate ≥ X% without contradictions across Y dimensions, sustained over Z tasks."**

This is the only metric that respects R10 (crossword evidence), R3 (antifragile walls), R5 (K-line completeness), and R6 (no trick — gate not owned by claimant).

## Connection to Existing Research

- **decision-review.md**: Each ADR = grid structure decision with falsifier = "this structure fails when..."
- **hypotheses-ledger.md**: H1..H5 = predicted crossword patterns with verdict rules
- **ten-axis-knowledge-map.md**: Import Mirror = canon imports → clue types; pending = clues not yet forged
- **provider-exchange-note.md**: Concept = clue marketplace; landing criterion = first rate-limit hit
- **rj-001-premises-ruling.md**: Approved premises = foundational grid rules; conditions = first grid section requirements
- **ZERO-READINESS.md**: A-lines = grid structure complete; B = power connected; C = author defines success; D = first five solving moves; E = dependency chain

## Next Research Moves (Predicted by This Framing)

1. **Crossword completeness metric** — formalize "grid fill rate without contradictions" as computable from K-lines
2. **Clue interaction algebra** — how across-clues (charters) and down-clues (MICs) compose at intersections
3. **Theme emergence dynamics** — when 3× same axis-tag triggers Prime migration, what's the formal condition?
4. **Editor (Curator) specification** — what algorithms maintain grid integrity? (contradiction detection, pattern promotion, clue retirement)
5. **Puzzle author (Owner) interface** — how does the author define grid boundaries (threshold) and verify solutions (breakthrough)?
6. **Clue marketplace mechanics** — provider exchange as automated clue procurement with budget accounting

---

**Status**: This framing is a HYPOTHESIS (not yet in hypotheses-ledger — it meta-frames the ledger itself). It survives iff it makes novel predictions that existing framings don't, and those predictions are falsifiable in zero day runs.

**Forcing cause**: The convergence of R10 (crossword evidence), K-lines (Minsky), DS template (4-tuple crossing), and version scale (5 zeros = 5 dimensions) in a single session — none of the existing documents made this unification explicit.
