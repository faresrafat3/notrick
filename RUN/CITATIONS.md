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

---
obituary: this register dies the moment a quote is registered without its producing
command, or an entry cites a file:line this tool cannot reproduce; the R14 audit re-derives
a random 20% and any MISMATCH is a violation, filed not fixed.