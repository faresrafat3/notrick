# RCVM — Recursive Crossword Virtual Machine
> 2026-09-06 · the computational substrate of NOTRICK. The crossword grid IS the virtual machine. K-lines are the instruction set. Charters are opcode definitions. MICs are microcode. The Owner is the hardware architect. The version scale is the computation trace.

---

## 1. The Machine Definition (The All-in-One)

An RCVM is a 7-tuple: **(G, K, C, M, O, V, Φ)**

| Component | Symbol | Description |
|-----------|--------|-------------|
| Grid | **G** | The crossword grid state — persistent, append-only, addressed by (row, col) = (task-id, attempt-id) |
| K-line Algebra | **K** | The instruction set: 4-tuple crossing proofs {CH-set × axis × wall × gate} |
| Charter Opcodes | **C** | CH-001..004 as primitive operations on G |
| Microcode | **M** | MIC-07,11,23,31 as micro-operations implementing K verification |
| Owner Port | **O** | The single external interface: threshold write, breakthrough read, ratification pulse |
| Version Register | **V** | 5-bit register (v0.00001 → v1.0), each zero = one dimension resolved |
| Fixed Point | **Φ** | The self-referential constraint: RCVM specifies itself in RCVM notation |

---

## 2. Memory Model: The Grid as Persistent Store

**Grid G** = sparse matrix of squares. Each square = (task-id, attempt-id) → {status, K-line, lesson, fate}

### Addressing
- **Row**: DS-{NNN} (task identifier from CoS output)
- **Column**: attempt-{M} (sequential attempt number within task)
- **Coordinate**: (DS-{NNN}, attempt-{M})

### Invariants
- **Write-once**: a square fills exactly once (K-line written = gate passed)
- **Immutable**: filled squares never change (R3: budget exhaustion = stop + hand back)
- **Indexable**: only squares with valid K-line are readable (R5: Curator refuses non-K-line)

### Memory Operations
| Operation | Signature | Effect |
|-----------|-----------|--------|
| `ALLOC(task)` | TaskSpec → DS-id | reserves row in G, returns DS-id |
| `FILL(ds-id, attempt, K-line)` | DS-id × Attempt × K → Unit | writes square, atomic iff gate verifies |
| `READ(ds-id)` | DS-id → List[Square] | returns all filled squares in row (task history) |
| `SCAN(axis)` | Axis → List[Square] | returns all squares with matching axis tag (MIC-31 column view) |
| `THEME(axis)` | Axis → Signal | returns Prime migration trigger when SCAN(axis) ≥ 3 |

---

## 3. Instruction Set: K-Line Algebra

Every valid state transition is a K-line production. **K-line = 4-tuple crossing proof:**

```
K = (A, D, W, G) where:
  A ∈ ℘(Charters)     // ACROSS: active charter set (non-empty subset of {1,2,3,4})
  D ∈ Axis            // DOWN: MIC-31 axis tag (from finite axis vocabulary)
  W ∈ Wall            // INTERSECTION: wall identifier broken (from wall ledger)
  G ∈ {PASS, FAIL}    // VERIFICATION: MIC-23 gate verdict
```

### Well-Formedness Predicate
```
WF(K) ≡ (A ≠ ∅) ∧ (D ∈ Axis) ∧ (W ∈ Wall) ∧ (G = PASS)
```
Only WF(K) squares enter G. This **IS R5 + R6 + R10 combined**.

### Composition
K-lines compose along shared axes:
- **Across-composition**: K₁ ∘ₐ K₂ = combined across-constraint (charters union)
- **Down-composition**: K₁ ∘𝒹 K₂ = combined down-constraint (axis alignment)
- **Full composition** requires both: the crossword intersection

---

## 4. Charter Opcodes (Primitive Operations on G)

Each charter is a primitive operation on the grid. They are **NOT agents — they are OPCODES**.

### OP:PRIME (CH-001) — Wall Break
```
PRIME(wall, axis, budget) → K-line
Pre:  wall ∈ Wall, axis ∈ Axis, budget ∈ Budget
Post: K = (A={1}, D=axis, W=wall, G=PASS) iff MIC-23 verifies break
Effect: writes square; if SCAN(axis) ≥ 3 → emits THEME(axis) signal
```
**Microcode**: MIC-23 (gate verification) + MIC-31 (axis tagging) + MIC-07 (budget echo)

### OP:COUNCIL (CH-002) — Pre-Fill Validation
```
COUNCIL(ds-id, proposed-K) → {APPROVED, REJECTED, CONDITIONAL(conditions)}
Pre:  ds-id allocated, proposed-K well-formed
Post: returns verdict with binding conditions (gate-verified)
Effect: writes RJ record; conditions become additional PRE for FILL
```
**Microcode**: 4-seat validation (Consistency, Evidence, Tomorrow, Human)

### OP:MAKER (CH-003) — Opcode Generation
```
MAKER(no-niche-proof) → new-CH-opcode
Pre:  documented NO NICHE call exists for (task, axis)
Post: forges CH-{new} with niche = that axis; status = refining
Effect: adds to C (charter opcode set); requires O.RATIFY before ACTIVE
```
**Microcode**: niche law enforcement (R7), Kant/Gause checks

### OP:COS (CH-004) — Grid Layout
```
COS(task-spec) → DS-template (grid section design)
Pre:  task-spec from Owner
Post: DS with: end-state, schwerpunkt, budget, burrow-map, gate-spec
Effect: allocates row in G; defines empty squares to be filled
```
**Microcode**: three-voice composition (plan/red-team/translate)

---

## 5. Microcode: MICs as Micro-Operations

MICs are **NOT agents. They are MICROCODE** — atomic operations implementing K verification.

| MIC | Micro-Operation | Signature |
|-----|-----------------|-----------|
| **MIC-07** | `BUDGET_ECHO(budget)` → writes budget verbatim into K-line context | `Budget → BudgetEcho` |
| **MIC-11** | `ID_FORMAT(doc)` → refuses if doc lacks valid ID | `Doc → Bool` |
| **MIC-23** | `GATE_RUN(claim, gate)` → re-runs gate, returns only output | `Claim × Gate → Verdict` |
| **MIC-31** | `AXIS_TAG(attempt)` → emits axis tag; tracks 3× count | `Attempt → Axis` |

### Execution Phases
- **Phase A**: Human executes microcode manually (Cline wears MICs)
- **Phase B**: Microcode compiled to native code (pure functions)

---

## 6. Owner Port: The Hardware Interface

Owner is **EXTERNAL to the VM** — the hardware architect. Only three signals cross the boundary:

```
O.THRESHOLD_WRITE(value) → writes to V.threshold (empty-by-right field)
O.BREAKTHROUGH_READ() → reads V.breakthrough (Owner-defined, deferred)
O.RATIFY(charter-id) → flips charter status: refining → active
```

**No other Owner operations exist.** This **IS R8 + R11 + R12 enforced at hardware level**.

The Owner Port is the **ONLY non-determinism** in the system. Everything else is pure computation on G.

---

## 7. Version Register: Computation Trace

**V = 5-bit register**. Each bit = one dimension resolved. Bits consume zeros:

| Bit | Zero | Dimension | Condition to Flip |
|-----|------|-----------|-------------------|
| 0 | 1st | Governance | O.RATIFY(CH-001..004) all active |
| 1 | 2nd | Energy | Smoke call PASS (fuel verified) |
| 2 | 3rd | Cognition | First FILL with WF(K) on real task |
| 3 | 4th | Metacognition | MAKER forges Curator + Verifier opcodes; O.RATIFY both |
| 4 | 5th | Autopoiesis | RCVM compiles its own microcode (Phase B complete) |

**V never decrements** (a resolved dimension stays resolved). **Only O.THRESHOLD_WRITE can advance V** (Owner moves version). This **IS VERSION.md law**.

---

## 8. The Fixed Point: Φ (Self-Reference)

RCVM specifies itself in RCVM notation. This is the "start of the end and end of start."

The RCVM specification **IS a grid G*** with these filled squares:

| DS-id | Attempt | K-line (A, D, W, G) | Lesson |
|-------|---------|---------------------|--------|
| DS-RCVM-001 | 1 | ({1,2,3,4}, "meta", "self-spec", PASS) | "The machine specifies itself" |
| DS-RCVM-002 | 1 | ({3}, "charter-forge", "boot", PASS) | "MAKER forges the charter opcodes" |
| DS-RCVM-003 | 1 | ({4}, "grid-layout", "template", PASS) | "CoS designs the grid sections" |
| DS-RCVM-004 | 1 | ({2}, "validation", "rj-round", PASS) | "Council validates before fill" |
| DS-RCVM-005 | 1 | ({1}, "wall-break", "zero-day", PASS) | "Prime breaks the zero barrier" |

**Φ holds iff**: reading G* produces the same RCVM definition. This is the bootstrap proof.

---

## 9. The Unified Meta-Template (Replaces CH/RJ/DS/MIC)

One template generates all four. The **RCVM-CARD**:

```
# RCVM-CARD — {OPCODE-TYPE}-{NNN}
> v{N} · forged {YYYY-MM-DD} by {MAKER|OWNER} · status: {refining|active|retired}

## Opcode Signature
- **Mnemonic:** {PRIME|COUNCIL|MAKER|COS|MIC-07|MIC-11|MIC-23|MIC-31|CURATOR|VERIFIER}
- **Arity:** {inputs} → {outputs}
- **Preconditions:** {WF predicates on G, K, V}
- **Postconditions:** {WF predicates on G', K', V'}
- **Microcode:** {list of MICs invoked}

## Niche (for charters) / Axis (for MICs) / Pattern (for hypotheses)
- **Burrow:** {one-sentence niche for charters} OR {axis tag for MICs} OR {predicted pattern for H}
- **Negative Space:** {what this is NOT — nearest confusion}

## Verification Gate (THE gate this opcode does not own)
- **Gate:** {runnable command / criterion — never narrative}
- **Gate Owner:** {different opcode | Owner | external}

## Success Metric (measured from G)
- **Metric:** {computable from grid state}
- **Falsifier:** {condition that triggers re-forge/retirement}

## K-Line Contribution
- **Writes:** {which K-line fields this opcode produces/validates}
- **Requires:** {which K-line fields must pre-exist}

## Ratification (for charters only)
- **Kant Check:** {PASS/FAIL + note}
- **Gause Check:** {PASS/FAIL + note}
- **Maker Signature:** {date} · **Owner Ratification:** {date | empty-by-right}

## Refinement Log (append-only; every entry cites forcing K-line)
- {date} — {change} — forced by {K-line ref}
```

### All existing templates are SPECIALIZATIONS of RCVM-CARD:
- **CH template** = RCVM-CARD with Opcode-Type ∈ {PRIME, COUNCIL, MAKER, COS}
- **MIC template** = RCVM-CARD with Opcode-Type ∈ {MIC-07, MIC-11, MIC-23, MIC-31}
- **RJ template** = RCVM-CARD with Opcode-Type = COUNCIL (verdict record)
- **DS template** = RCVM-CARD with Opcode-Type = COS (grid layout) + result record = filled square

---

## 10. The Ω-Charter (CH-000) — The Charter That Charters Charters

Derived from RCVM fixed point Φ. CH-000 is the **meta-opcode** that governs the opcode set C itself.

```
# CHARTER CARD — CH-000 (Ω)
> v1 · forged 2026-09-06 by RCVM fixed point · status: active (axiomatic)

## Identity
- **Name:** omega
- **Niche:** Govern the charter opcode set C — admit, retire, re-forge opcodes.
- **Who I am not:** I am not a task opcode (PRIME/COUNCIL/MAKER/COS). I operate on opcodes.

## Powers (max 3)
1. ADMIT(opcode-spec) → adds to C iff Gause check passes (no niche collision)
2. RETIRE(opcode-id, forcing-K) → moves opcode to retired; archives its K-lines
3. REFORGE(opcode-id, new-spec, forcing-K) → versions opcode v+1; refinement log cites forcing-K

## Prohibitions
- Admitting opcode without Gause check (niche collision = two entities in one burrow)
- Retiring opcode without forcing-K (R3: wall failure = asset, not shame)
- Modifying own spec (self-modification requires Owner ratification via O.RATIFY)

## Success Metric
- Opcode set coherence: zero niche collisions in C (measured by Gause check on ADMIT)

## Retirement Trigger
- If C becomes empty (no charters) → Ω retires (system dead)
- If Owner ratifies new Ω (v+1) → this Ω retires

## K-Line Contribution
- Writes: {A={Ω}, D="meta", W="governance", G=PASS} on every ADMIT/RETIRE/REFORGE
- Requires: {A contains charter being governed}

## Ratification
- Kant check: PASS — universal "govern opcode set" contradicts no niche
- Gause check: PASS — unique by construction (only one Ω)
- Maker signature: 2026-09-06 (RCVM fixed point) · Owner ratification: __________ (empty-by-right)

## Refinement Log
- 2026-09-06 — v1 forged from RCVM Φ fixed point.
```

**CH-000 is the "all in one" — it contains the charter template, the Maker's logic, the Gause check, the version law (R2), and the Owner ratification gate. It is the fixed point of the charter system.**

---

## 11. Zero Day as VM Boot Sequence

The 5 moves in **ZERO-READINESS.md §D** are the **bootloader**:

1. **O.THRESHOLD_WRITE(task-spec)** → Owner names first task (loads first row spec)
2. **COS(task-spec)** → allocates DS-001 row in G (grid layout)
3. **COUNCIL(DS-001, proposed-K)** → pre-fill validation (RJ round)
4. **MAKER(no-niche)** → forges execution charters on demand (dynamic C expansion)
5. **PRIME + MICs** → human executes microcode (Phase A) → FILL writes first WF(K) square

**Boot completes when**: V.bit[2] flips (Cognition dimension) — first legitimate square filled.

---

## 12. Falsification of RCVM Itself

RCVM falls if:
1. **A valid state transition exists that is NOT a K-line production** → instruction set incomplete
2. **Two different K-lines produce the same grid state** → non-determinism without Owner Port
3. **Φ fails** — RCVM cannot specify itself in its own notation → not self-hosting
4. **Owner Port is bypassed** — V advances without O.THRESHOLD_WRITE → sovereignty violated
5. **CH-000 admits colliding opcode** → Gause check fails at meta-level

---

## 13. Connection to All Existing Artifacts

| Artifact | RCVM Interpretation |
|----------|---------------------|
| CH-001..004 | Primitive opcodes in C (PRIME, COUNCIL, MAKER, COS) |
| MIC-07..31 | Microcode implementations |
| DS template | COS output format + filled square format |
| RJ template | COUNCIL output format |
| K-line field | Instruction format (4-tuple) |
| Version scale | V register (5-bit) |
| Hypotheses H1..H5 | Predicted computation patterns (pre-registered) |
| ADRs D-01..D07 | Design decisions about VM architecture |
| Import Mirror | Canon imports → opcode/microcode implementations |
| Provider Exchange | External microcode providers (key pool = microcode cache) |
| ZERO-READINESS | Bootloader + A/B/C/D/E as VM init sequence |

---

## 14. What This Enables (Novel Predictions)

1. **Formal verification of NOTRICK properties** — e.g., "no orchestration" = G has no central scheduler, only opcode composition
2. **Automatic Curator synthesis** — Curator = garbage collector for G (removes unreachable squares) + pattern miner (finds repeated K-line compositions → promotes to new opcodes via MAKER)
3. **Phase B = JIT compilation** — MIC microcode → native code; verified by MIC-23 gate
4. **Cross-task optimization** — SCAN(axis) finds reusable K-line compositions (H5: K-line memory reuse)
5. **Owner delegation without sovereignty loss** — O.THRESHOLD_WRITE can write *classes* of thresholds (standing orders), not just values
6. **Grid snapshots as checkpoint/restore** — G is the entire system state; portable, auditable, replayable

---

*End of RCVM Specification. The crossword computer is defined.*
