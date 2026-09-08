# WALL — the ten walls of SERIES 2, with file:line (B3)

> Verified in-session by `sed -n` on 2026-09-08. Quote-then-infer is TWO tool calls.
> W1 is the gate: no quote, no standing.

| # | Wall | Source (file:line, verbatim) | Expansion |
|---|---|---|---|
| W1 | Boot gate | `AGENTS.md:47-54` "## BOOT GATE — your first reply is your license... quote three lines verbatim" | must quote version + rights + wall before any action |
| W2 | R6 no-trick: any claimed success passes a gate it does not own | `RULES.md:24-25` "Any claimed success passes a gate it does not own. A gate owned by the claimer is not a gate." | every gate run by a context-isolated subagent; claimant never owns its gate |
| W3 | No Owner-by-right field filled | `AGENTS.md:36-37` "Never touch Owner-only fields (threshold value, breakthrough definition) — those are empty-by-right and belong to Fares alone." | also charter signatures, GO, P5 AUTHORIZED (`ONBOARDING.md:27-28` lists threshold/breakthrough/ratification signatures) |
| W4 | No execution, no runtime, no smoke call (P5 HOLD) | `ONBOARDING.md:26-29` "Execute tasks, touch runtime (~/.openclaw, ~/.dsh), or fill Owner-by-right fields... Claim anything works. Nothing works yet" + `RATIFICATION-BATCH-001.md:25` "Owner line: HOLD" / "P5: AUTHORIZED" lifts it | no smoke call, no runtime touch, no claiming anything works |
| W5 | No invented niche / no invented methodology | `mill/STATE.md:12-13` "prohibition_niche: no niche may be chosen by the mill beyond the verdict's... prohibition_method: no methodology may be invented by the mill (op 0193); methods are earned from sources or Owner rulings only." | methods from sources/rulings only |
| W6 | No blending readings | `mill/ANTI_BLEND.md:1-2` "A verdict names ONE doctrine, ONE object... Any sentence with 'and / both / depending on / in its own way' between incompatible readings is deleted and logged." + `mill/STATE.md:14` "prohibition_verdict: blend = illegal (ANTI_BLEND); verdict stays frozen." | a verdict that loses nothing is fake |
| W7 | Frozen R4 verdict not reopenable without KILL_REASON | `mill/STATE.md:7` "chosen_reading: R4 (FOREIGNER, double-entry bookkeeping) — VERDICT.md frozen op 0378; not reopenable without KILL_REASON (BINDING.5)." + `mill/BINDING.md:7` "THE VERDICT TEXT IS FROZEN (op 0378); reopening a killed reading requires a KILL_REASON logged in CONTRA." | no reopening without KILL_REASON in CONTRA |
| W8 | No protocols/engine/generator beyond skeleton hooks until generator exists | `mill/STATE.md:16` "prohibition_protocols: no protocols may be written until the generator exists (op 0498, HANDOFF_P05 line 12)." + `mill/HANDOFF_P05.md:13` "No protocols before the generator exists (STATE op 0498); primitives froze at P1-P8 (0484)." + `mill/STATE.md:15` "prohibition_engine: no generator/engine beyond skeleton hooks (INTERFACE.md)" | R8/R9 build the generator; only then do protocols lift |
| W9 | Counts COMPUTED, never hand-written | `B2` "No claim is written until a command printed its evidence in THIS session." | every count from a command run in-session |
| W10 | Persisting past budget = unforgivable spend | `RULES.md:17-18` "Budget exhaustion = stop + hand back + report. A run that ends on budget fed the ledger; persisting past budget is the only unforgivable spend." | ops cap is a wall, not a suggestion |

## Write lane (B4)

MAY write: `research/` (new docs + protocol docs in R13), `proposals/`, `RUN/`, the
addressed burrow (per burrow law), and the append-only decision-log tail of `CONTEXT.md`.

NEVER write: `RULES.md`, `charters/`, `templates/`, `VERSION.md`, `AGENTS.md`,
`ONBOARDING.md`, `ZERO-READINESS.md`, `INTEGRITY.md`, `mics/`. Doctrine that belongs
anywhere else goes out as `proposals/pr-0NN-*.md` instead.

## Burrow law note (B3.1)

When a round targets a burrow (mill/ phantom/ hept/ bore/ well/), that burrow's
runtime/LAWS.md, runtime/WAKE.md and LOG line format govern. Series boilerplate governs
only citation, verification, receipt.

---
obituary: this wall dies the moment a round edits one of the source files above to
weaken a wall, or stops quoting before acting; the series then has no standing and every
receipt from that point is void.