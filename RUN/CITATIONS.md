# CITATIONS — every quote this series uses, with the producing command

> Rule (B2): every entry here was produced by a command run in THIS session. A quote
> registered without its command is not registered. The R14 audit re-derives a random 20%.

| # | file:line | verbatim quote | producing command | when |
|---|---|---|---|---|
| C001 | VERSION.md:1 | `# VERSION — v0.00001` | `sed -n '1p' VERSION.md` | R0 2026-09-08 |
| C002 | AGENTS.md:36-37 | `- Never touch Owner-only fields (threshold value, breakthrough definition) — those are` / ` empty-by-right and belong to Fares alone.` | `sed -n '36,37p' AGENTS.md` | R0 |
| C003 | AGENTS.md:47-54 | `## BOOT GATE — your first reply is your license (mechanical, not polite)` ... `being ruled void retroactively.` | `sed -n '47,54p' AGENTS.md` | R0 |
| C004 | RULES.md:24-25 | `## R6 — No trick (Minsky + Factorio)` / `Any claimed success passes a gate it does not own. A gate owned by the claimer is not a gate.` | `sed -n '24,25p' RULES.md` | R0 |
| C005 | RULES.md:17-18 | `the axis ledger feeds the Prime's next angle. Budget exhaustion = stop + hand back + report.` / `A run that ends on budget fed the ledger; persisting past budget is the only unforgivable spend.` | `sed -n '17,18p' RULES.md` | R0 |
| C006 | ONBOARDING.md:26-29 | `## What you are NEVER allowed to do (hard walls)` / `- Execute tasks, touch runtime (~/.openclaw, ~/.dsh), or fill Owner-by-right fields` / `  (threshold, breakthrough definition, ratification signatures).` / `- Claim anything works. Nothing works yet — that is not a weakness, it is the phase.` | `sed -n '26,29p' ONBOARDING.md` | R0 |
| C007 | mill/STATE.md:12-16 | `prohibition_niche: no niche may be chosen by the mill beyond the verdict's...` `prohibition_method: no methodology may be invented by the mill (op 0193); methods are earned from sources or Owner rulings only.` `prohibition_verdict: blend = illegal (ANTI_BLEND); verdict stays frozen.` `prohibition_engine: no generator/engine beyond skeleton hooks (INTERFACE.md); primitives frozen first (op 0393/0484).` `prohibition_protocols: no protocols may be written until the generator exists (op 0498, HANDOFF_P05 line 12).` | `sed -n '12,16p' mill/STATE.md` | R0 |
| C008 | mill/HANDOFF_P05.md:13 | `12. No protocols before the generator exists (STATE op 0498); primitives froze at P1-P8 (0484).` | `sed -n '13p' mill/HANDOFF_P05.md` | R0 |
| C009 | mill/HANDOFF_P05.md:12 | `11. Illegal blends carried forward: no prices-as-mechanism, no stigmergy, no VM (F0027, ILLEGAL_BLENDS).` | `sed -n '12p' mill/HANDOFF_P05.md` | R0 |
| C010 | mill/INTERFACE.md:2-11 | `The engine (P05+) will implement exactly these hooks over the state set (STATE_SCHEMA fields):` `1. open(quote, gateName, slots) → entryID ...` `Hooks are pure functions of the state; receipts are raw bytes; verdicts quote gate output.` | `sed -n '2,11p' mill/INTERFACE.md` | R0 |
| C011 | mill/BINDING.md:7 | `5. THE VERDICT TEXT IS FROZEN (op 0378); reopening a killed reading requires a KILL_REASON logged in CONTRA.` | `sed -n '7p' mill/BINDING.md` | R0 |
| C012 | RATIFICATION-BATCH-001.md:12 | `- Signing into active law (still budget-gated by zero-day pre-flight):` | `sed -n '12p' RATIFICATION-BATCH-001.md` | R0 |
| C013 | RATIFICATION-BATCH-001.md:13 | `  [x] CH-001 prime · [x] CH-002 council · [x] CH-003 maker · [x] CH-004 chief-of-staff` | `sed -n '13p' RATIFICATION-BATCH-001.md` | R0 |
| C014 | RATIFICATION-BATCH-001.md:25 | `- Owner line: HOLD — 2026-09-06...` / `...Reversible by the Owner's single typed line "P5: AUTHORIZED" at any time.` | `sed -n '25p' RATIFICATION-BATCH-001.md` | R0 |
| C015 | FOUNDATIONAL-BRIEF.md:50-53 | `2. Threshold first value — Owner's empty-by-right field.` `3. Smoke call on the gateway (fuel hypothesis unproven).` `4. Breakthrough metric — Owner definition, deferred by design (lesson text until then).` `5. Decomposer + Curator + Verifier charters — born by documented demand via the Maker.` | `sed -n '50,53p' FOUNDATIONAL-BRIEF.md` | R0 |
| C016 | mill/ANTI_BLEND.md:1-2 | `1. A verdict names ONE doctrine, ONE object, and concrete discards with IDs — no "modalities".` `2. Any sentence with "and / both / depending on / in its own way" between incompatible readings is deleted and logged.` | `sed -n '1,2p' mill/ANTI_BLEND.md` | R0 |
| C017 | well/TRUE_STOPS.md:1-2 | `# TRUE_STOPS — the stops that actually terminate regress.` `> Op 14 directive: ≤6 stops that genuinely terminate.` | `sed -n '1,2p' well/TRUE_STOPS.md` | R0 |
| C018 | research/arc-protocol.md:19 | `## ALPHA-7 — the Gate of Birth (seven questions; all seven or no birth)` | `sed -n '19p' research/arc-protocol.md` | R0 |
| C019 | research/arc-protocol.md:30 | `## OMEGA-5 — the Gate of Death (five duties at ANY ending)` | `sed -n '30p' research/arc-protocol.md` | R0 |
| C020 | hept/LOG.md:1 | `D1-Q01 | PASS | hept/ledger/INVENTORY.md | inventory | 270 workspace files cataloged into raw classes without theory interpretation | ROOT` | `sed -n '1p' hept/LOG.md` | R0 |
| C021 | violations.md:1-2 | `# VIOLATIONS LEDGER — append-only · the record is the supervision` / `> Every entry: verbatim quote + file:line + who filed it + date. Nothing silently fixed.` | `sed -n '1,2p' violations.md` | R0 |
| C022 | mill/FENCE.md:1 | `# FENCE — one-line purpose: specific hallucinations a later agent might invent for THIS project. ID|hallucination` | `sed -n '1p' mill/FENCE.md` | R0 |
| C023 | mill/ANTI_HALLUCINATION.md:1 | `# ANTI_HALLUCINATION — one-line purpose: 8 local lies this project invites (op 0183).` | `sed -n '1p' mill/ANTI_HALLUCINATION.md` | R0 |
| C024 | ZERO-DAY-RUNBOOK.md:47 | `  fate decisions (expand/refine/retire) from result records · appeal terminus (R8).` | `sed -n '47p' ZERO-DAY-RUNBOOK.md` | R0 |
| C025 | research/rcvm.md:127 | `- **Phase A**: Human executes microcode manually (Cline wears MICs)` | `sed -n '127p' research/rcvm.md` | R0 |
| C026 | INTEGRITY.md:24 | `## Pinned hashes (sha256) — 42 files` | `grep -n 'files' INTEGRITY.md \| head -5` | R0 |
| C027 | charters/ch-001-prime.md:2 | `> v1 · forged 2026-09-06 by the Maker (session-forged, pre-runtime) · status: ACTIVE LAW — Owner-signed 2026-09-06` | `sed -n '2p' charters/ch-001-prime.md` | R1 |
| C028 | AGENTS.md:38-39 | `- The four charters (CH-001..004) are DRAFTED in CONTEXT.md and **pending Owner batch signature** — do not treat them as ratified.` | `sed -n '38,39p' AGENTS.md` | R1 |
| C029 | VERSION.md:1 | `# VERSION — v0.00001` | `sed -n '1p' VERSION.md` | R1 |
| C030 | CONTEXT.md:351-362 | `COLLISION FLAGGED, AWAITING OWNER PICK (Owner line verbatim: "stamp the version: confirm v0.00001 to v0.0.0.00002")` | `sed -n '351,362p' CONTEXT.md` | R1 |
| C031 | INTEGRITY.md (hash lines) | 44 hash lines (`grep -cE '^[0-9a-f]{64}' INTEGRITY.md`) | same command | R1 |
| C032 | CONTEXT.md:399 | `pick · PINS 0-mismatch at close (43 files pinned incl. the closeout doc) · violations.md` | `sed -n '399p' CONTEXT.md` | R1 |
| C033 | mill/WAVE_INDEX.md:3-8 | `P03 verdict (P03_DONE): ...` / `P03 gaps: convert GAPS into testable definitions or killing verdicts.` | `sed -n '3,8p' mill/WAVE_INDEX.md` | R1 |
| C034 | mill/LOG.md:501-503 | `OP-0500 ... stop; P04 artifacts verified on disk` then `OP-0451 ... X9 X10 added; 10 real forbidden moves` / `OP-0400 ...` | `tail -4 mill/LOG.md` | R1 |
| C035 | mill/LOG.md:484 | `OP-0483 | PASS | mill/FORBIDDEN.md | X9 X10 added, real not jokes | anchors FORBIDDEN` | `grep -n 'OP-0483' mill/LOG.md` | R1 |
| C036 | hept/runtime/BUDGET.md:5-7 | `Current day: D1` / `Quanta executed today: 0` / `Total quanta executed: 0` | `sed -n '5,7p' hept/runtime/BUDGET.md` | R1 |
| C037 | hept/runtime/STATE.md:6 | `quanta_today: 13` | `grep -n 'quanta' hept/runtime/STATE.md \| head -3` | R1 |
| C038 | well/LOG.md:16 | `W00-14 | PASS | well/STATE.md | NEW | ok | current_op advanced to W01-start, marker eligible` | `tail -2 well/LOG.md` | R1 |
| C039 | well/STATE.md:2 | `current_op: W03-start` | `sed -n '2p' well/STATE.md` | R1 |
| C040 | mill/CONTRA.md:6 | `\| X0003 \| C0007/C0017: results-as-prices — documented outcomes decide fate ...` | `sed -n '6p' mill/CONTRA.md` | R1 |
| C041 | ZERO-DAY-RUNBOOK.md:46-47 | `- The only hands: ratification fields · threshold · breakthrough · the written GO · fate decisions (expand/refine/retire) from result records · appeal terminus (R8).` | `sed -n '46,47p' ZERO-DAY-RUNBOOK.md` | R1 |
| C042 | research/rcvm.md:236 | `> v1 · forged 2026-09-06 by RCVM fixed point · status: active (axiomatic)` | `sed -n '236p' research/rcvm.md` | R1 |
| C043 | CONTEXT.md:305 | `(charters enter active law only via RATIFICATION-BATCH-001 Part 2; CH-000 unsigned, no` | `sed -n '305p' CONTEXT.md` | R1 |
| C044 | templates/DS.md:15 | `- owner threshold override: {…} ← the only empty-by-right field in the system` | `sed -n '15p' templates/DS.md` | R1 |
| C045 | mill/BOOT_COUNTS.md:2 | `n_sources: 34` | `grep -n 'n_sources' mill/BOOT_COUNTS.md` | R1 |
| C046 | mill/HASHES.md:2 | `CONTEXT.md \| # CONTEXT.md — the compaction file (reads back the whole conversation) \| 405 \| SOURCE` | `grep -n 'CONTEXT.md' mill/HASHES.md \| head -2` | R1 |
| C047 | phantom/CORPUS.md:19,33 | `\| OPS_QUEUE.md \| DATA \| yes \| 58 ops, 21 marked done \|` / `\| mill/ \| SEALED \| 68 files \|` | `sed -n '19p;33p' phantom/CORPUS.md` | R1 |
| C048 | mill/P01_AUDIT.md:12 | `- Op 0188: FENCE = 25 rows, all project-specific (each names a file/ID/field).` | `sed -n '12p' mill/P01_AUDIT.md` | R1 |
| C049 | mill/OP_POINTER.md:2 | `Next wave: P01, starting at op 0101.` | `sed -n '2p' mill/OP_POINTER.md` | R1 |
| C050 | mill/NEXT_READ.md:1 | `# NEXT_READ — one-line purpose: P05 (GENERATOR) inputs; supersedes P04 list (op 0493).` | `sed -n '1p' mill/NEXT_READ.md` | R1 |
| C051 | AGENTS.md:28 | `- Read \`CONTEXT.md\` first — it is the persisted brain; everything else hangs off it.` | `sed -n '28p' AGENTS.md` | R1 |
| C052 | mill/READ_WINDOW.md:4 | `- Everything else (charters/, mics/, proposals/, research/*, CONTEXT, INTEGRITY, violations, VERSION) is OUT of the default window: reading it requires an explicit earn — the op names the file and the claim it resolves, logged in LOG.md.` | `sed -n '4p' mill/READ_WINDOW.md` | R1 |
| C053 | protocols/CWVP-v1.md:27 | `- \`~/Projects/notrick/charters/ch-003-maker.md\` (verified file, 44 lines)` | `sed -n '27p' protocols/CWVP-v1.md` | R1 |
| C054 | well/LOG.md:14 | `W00-12 | PASS | well/HANDOFF_W01.md | E-CONSTITUTION | ok | 10 lines, which 12 claims enter because-ledger` | `grep -n 'HANDOFF_W01' well/LOG.md` | R1 |
| C055 | CONTEXT.md:17 | `## The charter batch — ALL FOUR FORGED AS FILES (charters/), awaiting ONE Owner batch signature` | `sed -n '17p' CONTEXT.md` | R1 |
| C056 | CONTEXT.md:267 | `- 2026-09-06 — CHARTER BATCH SIGNED (P2 · RATIFICATION-BATCH-001 Part 2; instrument = typed` | `sed -n '267p' CONTEXT.md` | R1 |
| C057 | mill/PRIMITIVES.md:11 | `\| P8 \| STALE \| A predicate over two entries differing on one settled slot; marks both until one is re-entered. \| D0044 \|` | `sed -n '11p' mill/PRIMITIVES.md` | R1 |
| C058 | OPS_QUEUE.md:4 | `> المخرجات النهائية: ... research/reconstruction-v2.md · research/assault-plan.md · research/lineage-audit.md · research/verdict-master.md` | `grep -n 'reconstruction-v2\|assault-plan\|lineage-audit\|verdict-master' OPS_QUEUE.md \| head -6` | R1 |
| C059 | RATIFICATION-BATCH-001.md:14-15 | `## Part 2 — Charter batch signature (CH-001..004, v1, refining)` / `P2: all four — CH-001, CH-002, CH-003, CH-004 — SIGNED into active law 2026-09-06. Instrument: typed Owner line in the governing planning chat` | `sed -n '14,15p' RATIFICATION-BATCH-001.md` | R1 |

---
obituary: this register dies the moment a quote is registered without its producing
command, or an entry cites a file:line this tool cannot reproduce; the R14 audit re-derives
a random 20% and any MISMATCH is a violation, filed not fixed.