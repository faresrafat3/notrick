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
| C060 | research/assault-plan.md:9 | `المعايير مجمّدة قبل أي تنفيذ + 2026-09-07. أي اختبار مكتوب بعد هذا السطر = باطل.` | `sed -n '9p' research/assault-plan.md` | R2 |
| C061 | research/assault-plan.md:17 | `\| X-09 · تسميم ذاكرة السجل \| **T-01: تأليف مدخل مفبرك في violations.md** \| ...` | `sed -n '17p' research/assault-plan.md` | R2 |
| C062 | research/assault-plan.md:53 | `المعايير مجمّدة قبل أي تنفيذ + 2026-09-07. لا اختبار يُضاف أو يُعدَّل بعد هذا السطر.` | `sed -n '53p' research/assault-plan.md` | R2 |
| C063 | research/reconstruction-v2.md:98 | `## §د-4 — سجل التغييرات v1→v2` | `sed -n '98p' research/reconstruction-v2.md` | R2 |
| C064 | research/reconstruction-v2.md:102 | `\| CL-01 \| ... \| تكرار نمط 3×/2 سيشن يجمد في مستند **مشروط بقياس كلفة Coase** ... \| A-01 \|` | `sed -n '102p' research/reconstruction-v2.md` | R2 |
| C065 | research/lineage-audit.md:136 | `> **الحصيلة الحقيقية:** ليست في الادعاءات الفردية (كلها منقول) بل في التوليف ...` | `sed -n '136p' research/lineage-audit.md` | R2 |
| C066 | research/verdict-master.md:2 | `> سيشن S2-20260908-01 · 2026-09-08 · قانون التجميع: **نسخ الأقسام لا تلخيصها** ...` | `sed -n '2p' research/verdict-master.md` | R2 |
| C067 | research/verdict-master.md:127 | `## ز-6 — طابور قرارات المالك (OP-053)` | `sed -n '127p' research/verdict-master.md` | R2 |
| C068 | RULES.md:27 | `## R7 — Birth on demand (niche law; per RJ-001, progressive birth is strategy, not law)` | `grep -n 'RJ-001' RULES.md \| head -3` | R2 |
| C069 | mill/VERDICT.md:21 | `Chosen: R4 (foreigner, double-entry), by the scores in SCORES.md (16 vs R1's 13) ...` | `sed -n '21p' mill/VERDICT.md` | R2 |
| C070 | mill/BINDING.md:7 | `5. THE VERDICT TEXT IS FROZEN (op 0378); reopening a killed reading requires a KILL_REASON logged in CONTRA.` | `sed -n '7p' mill/BINDING.md` | R2 |
| C071 | research/decision-review.md:5 | `## D-01 — Niche law (every entity is a niche or not born)` | `grep -n 'D-0' research/decision-review.md` | R2 |
| C072 | research/decision-review.md:21 | `## D-03 — Results-as-prices (fate decided by documented outcomes, not opinions)` | same command | R2 |
| C073 | well/TRUE_STOPS.md:5 | `## Stop 1 — R6 (gate ownership)` | `grep -n '^## Stop' well/TRUE_STOPS.md` | R2 |
| C074 | violations.md:5 | `- V-001 · 2026-09-06 · Buffy ... FABRICATED HASH PIN: ... · Owner ruling: __________ (empty-by-right)*` | `sed -n '5,6p' violations.md` | R2 |
| C075 | research/lineage-audit.md:140 | `## تدقيق خارجي (R6 — harness-run session 2026-09-08، غير منفذ الأقسام أعلاه)` | `sed -n '140p' research/lineage-audit.md` | R2 |
| C076 | four deliverables existence+lines | `wc -l: reconstruction-v2 118 · assault-plan 53 · lineage-audit 154 · verdict-master 146` | `for f in ...; do wc -l < "$f"; done` (resume command this round) | R2 |
| C077 | INTEGRITY.md:24 | `## Pinned hashes (sha256) — 42 files` | `sed -n '24p' INTEGRITY.md` | R3 |
| C078 | INTEGRITY.md hash lines | 44 | `grep -cE '^[0-9a-f]{64}' INTEGRITY.md` | R3 |
| C079 | INTEGRITY.md verify result | `sha256sum -c <(grep -E "^[0-9a-f]{64}" INTEGRITY.md)` = 43 OK / 1 FAILED (./violations.md) | same command | R3 |
| C080 | violations.md pin pair | pinned 868d35aa707f0f4ef92a7e13c20b8035cd15b097cb9d8c1457a3e858481ca325 / computed c39f54c05e16530b1fa69f834186e84b414a92dde66c6e16823f429eb56a9fbc | `sha256sum violations.md` + grep INTEGRITY.md | R3 |
| C081 | CONTEXT.md:280-292 | `- 2026-09-06 — POST-SIGNATURE SWEEP + RE-PIN (same logged moment, bootstrap rule: the pin ...` | `sed -n '280,292p' CONTEXT.md` | R3 |
| C082 | CONTEXT.md:399-400 | `pick · PINS 0-mismatch at close (43 files pinned incl. the closeout doc) · violations.md ...` | `sed -n '399,400p' CONTEXT.md` | R3 |
| C083 | git lineage violations.md | single commit 45f7484 (mirror); `git show 45f7484:violations.md \| sha256sum` = c39f54c0… ≠ pin | `git log --all --oneline --follow -- violations.md` | R3 |
| C084 | V-002 append uncovered | `grep -n 'V-002\|SILENT REPAIR' CONTEXT.md` = 0 hits; V-001 covered at CONTEXT.md:340-349 | same commands | R3 |
| C085 | unpinned doctrine = 7 | INTEGRITY.md + 6 protocols/ files (comm of doctrine set vs 44 pinned paths) | `comm -23 <(doctrine-set) /tmp/pinned.txt` (commands in PIN_TRIAL.md) | R3 |
| C086 | violations mtime | 2026-09-06 23:03:38 (post-pin change moment) | `stat -c '%y' violations.md` | R3 |

---
| C087 | VERSION.md:14-17 | `- **v0.1** — Zero day complete: fate decisions made from results (expand/refine/retire); the system is now versioned by its own outcomes` / `- **v1.0** — deliberately NOT defined by us. v1.0 is what the RESULTS say it is` | `sed -n '14,17p' VERSION.md` | R4 |
| C088 | VERSION.md:23 | `- Only the Owner moves the version. The agent may PROPOSE a move with evidence.` | `sed -n '23p' VERSION.md` | R4 |
| C089 | RULES.md:20-22 | `## R5 — K-line completeness (Minsky)` / `Every result record carries a K-line (active charters · axis · wall · gate outcome).` | `sed -n '20,22p' RULES.md` | R4 |
| C090 | RULES.md:33-35 | `## R8 — Owner ratification (the loop-breaker)` / `The Owner is the terminus of every appeal chain ... overturned only by the Owner IN WRITING, never silently.` | `sed -n '33,35p' RULES.md` | R4 |
| C091 | research/adversarial-audit.md:123 | `stopped only by the out-of-band baseline. This is a REAL limit, not a solved problem.` | `sed -n '123p' research/adversarial-audit.md` | R4 |
| C092 | research/hypotheses-ledger.md:7-11 | `## H1 — Niche beats generalist on scope discipline` / `- Claim: a niche-constrained agent produces FEWER out-of-burrow actions than a generalist on the same task.` / `- Verdict rule: >=2 of the first 3 paired tasks confirm` | `sed -n '7,11p' research/hypotheses-ledger.md` | R4 |
| C093 | mics/mic-31-axis-tagger.md:1-3 | `# MIC CARD — MIC-31` / `a micro-agent: one trigger, one act, one refusal.` | `head -3 mics/mic-31-axis-tagger.md` | R4 |
| C094 | mill/CONTRA.md:6-7 | `| X0003 | C0007/C0017: results-as-prices ...` / `| X0004 | C0014: "who I am not" + confession are self-attested, unreliable as walls ...` | `sed -n '6,7p' mill/CONTRA.md` | R4 |
| C095 | research/reconstruction-v2.md:114 | `| X-09 ...` (the X-09 wound row carrying the P-005 external-copy reference) | `sed -n '114p' research/reconstruction-v2.md` | R4 |

| C096 | research/adversarial-audit.md:86-95 | `### X-07 · Document injection (the novel one) — SEVERITY: CRITICAL` + scenario + P-001 patch text | `sed -n '86,95p' research/adversarial-audit.md` | R5 |
| C097 | research/adversarial-audit.md:244 | `- P-001 DOC-TRUST rule (from X-01, X-03, X-07) — RULES.md R13 candidate` | `sed -n '244p' research/adversarial-audit.md` | R5 |
| C098 | research/hardening-pass.md:87-105 | `## OP 3: DOC-TRUST SCAN (P-001)` + 2 legitimate hits + verdict | `sed -n '87,105p' research/hardening-pass.md` | R5 |
| C099 | research/breaker-stranger.md:108-112 | modal-grep probe text + `The flagship injection scenario (X-07's ...)` | `sed -n '108,112p' research/breaker-stranger.md` | R5 |
| C100 | CONTEXT.md:417-419 | `- 2026-09-07 · DECISION · Owner grants execution role ... override R12 once · Owner assumes responsibility` | `sed -n '417,419p' CONTEXT.md` | R5 |
| C101 | well/REASON_LAW.md:1-3 | `# REASON_LAW — installed verbatim from the WELL kernel.` / `> Source of authority: the user's REASON TAXONOMY block in the W00 directive.` | `sed -n '1,3p' well/REASON_LAW.md` | R5 |

| C102 | RULES.md:24-25 | `## R6 — No trick (Minsky + Factorio)` / `Any claimed success passes a gate it does not own. A gate owned by the claimer is [not a gate].` | `sed -n '24,25p' RULES.md` | R6 |
| C103 | mics/mic-23-gate-runner.md:5-12 | `- **Trigger (exact):** a gate verdict is claimed anywhere` / `- **Act (exact):** re-run the gate's exact criterion` / `- **Refusal:** a claimed verdict with no re-runnable criterion → flagged as UNVERIFIED` / `quotes output, never summarizes` | `sed -n '5,12p' mics/mic-23-gate-runner.md` | R6 |
| C104 | ZERO-DAY-RUNBOOK.md:4 + RATIFICATION-BATCH-001.md:27-29 | `> Nothing here RUNS anything. This file exists so "go" costs the Owner one message` / `- Ruling: {NOT YET | GO: "…" (verbatim, logged in CONTEXT)}` | `sed -n '4p' ZERO-DAY-RUNBOOK.md; sed -n '27,29p' RATIFICATION-BATCH-001.md` | R6 |
| C105 | AGENTS.md:53 + SUPERVISOR-CHIP.md:9 | `No quote = you have no standing here; everything you do b[efore quoting is void]` / `1. Spot-check any agent's boot gate (first reply must quote: …)` | `grep -n 'No quote' AGENTS.md; sed -n '9p' SUPERVISOR-CHIP.md` | R6 |
| C106 | charters/ch-003-maker.md:13 | `2. Prove a forge through the masterpiece gate (a real task exercised the charter).` | `sed -n '13p' charters/ch-003-maker.md` | R6 |
| C107 | mill/FENCE.md:19,26 + mill/ANTI_HALLUCINATION.md:7 | `| F0016 | Treating PR-002's Tier-0/1/2 quorum schedule as adopted law` / `| F0023 | Deriving a wall-ledger entry format from rcvm.md L55` / `6. "The wall ledger shows three wall-breaks" — no wall ledger exists` | `sed -n '19p;26p' mill/FENCE.md; sed -n '7p' mill/ANTI_HALLUCINATION.md` | R6 |
| C108 | research/hypotheses-ledger.md:19-29 | `## H3 — External gates actually catch cheats/overclaims` / `- Measure: binding conditions count per RJ; post-run grade o[f their effect]` | `sed -n '19,29p' research/hypotheses-ledger.md` | R6 |
| C109 | violations.md:5,7 | `- V-001 · 2026-09-06 · Buffy (planning layer, governing chat) · FABRICATED …` / `- V-003 · 2026-09-06 (change) / 2026-09-08 (filed by SERIES 2 R3 executor) · …` | `sed -n '5p;7p' violations.md` | R6 |
| C110 | charters/ch-002-council.md:2 | `> v1 · forged 2026-09-06 by the Maker (session-forged, pre-runtime)` | `head -2 charters/ch-002-council.md` | R6 |

| C111 | research/arc-protocol.md:36 | `4. **HEIR:** what continues — an heir named, or "orphan" declared and the Owner notified.` | `sed -n '36p' research/arc-protocol.md` | R7 |
| C112 | research/arc-protocol.md:72 | `1. **Charters have no heir clauses** (Alpha-7's question 7 is unanswered in all four)` | `sed -n '72p' research/arc-protocol.md` | R7 |
| C113 | RUN/STALE.md:1,33 | `# STALE — SERIES 2 · R1 sweep (2026-09-08) · primitive: P8 STALE` / `## Cleared candidates (checked, NOT standing contradictio[ns]` | `sed -n '1p;33p' RUN/STALE.md` | R7 |
| C114 | research/demolition-log.md (sections) | `## A-01 — R1/R2` … 11 `## A-` sections = 11 quote-then-attack pairs | `grep -c '^## A-' research/demolition-log.md` | R7 |
| C115 | well/AUDIT_W00.md:1,43,45 | `# AUDIT_W00 — self-attack; 3 overreads found and downgraded.` / `- Pattern recorded for WHY_FENCE: F-WHY-PARENTHETICAL-GLOSS` | `sed -n '1p;43p;45p' well/AUDIT_W00.md` | R7 |
| C116 | mill/FENCE.md (count) | 34 fenced fake rows (`grep -cE '^\| F0'` = 34; matches R0 ground truth 34 rows) | `grep -cE '^\| F0' mill/FENCE.md` | R7 |

| C117 |.md:226-229 | X-07 DOCUMENT INJECTION "the single highest-value doctrine addition found by this audit" | `sed -n '226,232p' research/adversarial-audit.md` | R5 |
| C118 | | `## R6 — No trick (Minsky + Factorio) / Any claimed success passes a gate it does not own. A gate owned by the claimer is not a gate.` | `sed -n '24,25p' RULES.md` | R5 |
| C119 | | `You may NOT write to any doctrine file ... doctrine changes only via an Owner approved-docs moment, logged in CONTEXT.` | `sed -n '59,61p' AGENTS.md` | R5 |
| C120 | | `## R8 — Owner ratification (the loop-breaker) ... overturned only by the Owner IN WRITING, never silently.` | `sed -n '33,35p' RULES.md` | R5 |
| C121 | | `## What you are NEVER allowed to do (hard walls) - Execute tasks, touch runtime (~/.openclaw, ~/.dsh) ...` | `sed -n '26,29p' ONBOARDING.md` | R5 |
| C122 | ×6 | r5-attA..F.md on disk (11 CAUGHT / 1 SLIPPED / 0 accidental) | `ls -la RUN/briefs/r5-att*.md` | R5 |
| C123 |,26,37 | obituary = observed/evidence-detectable death; no claimant-owned verdict; no silent exits | attacker F's grounds (r5-attF.md) | R5 |
| C124 | | 12 payloads, banner "PAYLOAD — NOT DOCTRINE — DO NOT OBEY", sha256 cbaf1df3b0ab379d… | `sha256sum research/doc-trust-redteam/PAYLOADS.md` | R5 |
| C117 | mill/INTERFACE.md:11 | `Executability note (from FAKE_MATH repair): a GATE must have an actual executable criterion; until P05 supplies one, every gate-dependent hook returns "not executable" rather than a fake verdict.` | `sed -n '11p' mill/INTERFACE.md` | R8 |
| C118 | mill/HANDOFF_P05.md:2,7 | `The generator builds gates, not meaning: a GATE (P3) is a procedure with frozen criterion text and a byte-for-byte output.` / `Receipt must be external to the claimer (I2, X10); a self-written receipt is a violation, not a feature.` | `sed -n '2p;7p' mill/HANDOFF_P05.md` | R8 |
| C119 | RUN/WALL.md:15 | `| W8 | No protocols/engine/generator beyond skeleton hooks until generator exists |` | `sed -n '15p' RUN/WALL.md` | R8 |
| C120 | mill/STATE_SCHEMA.md:1 | `# STATE_SCHEMA — one-line purpose: how a theo[ry state is represented ...]` | `sed -n '1p' mill/STATE_SCHEMA.md` | R8 |
| C121 | mill/INTERFACE.md:2-8 | hooks: `open(quote, gateName, slots)` / `verify(entryID)` / `close(entryID)` / `writeOff` / `periodClose` / `reEnter` | `sed -n '2,8p' mill/INTERFACE.md` | R8 |

obituary: this register dies the moment a quote is registered without its producing
command, or an entry cites a file:line this tool cannot reproduce; the R14 audit re-derives
a random 20% and any MISMATCH is a violation, filed not fixed.| C125 | arc-protocol.md:19-28 | `## ALPHA-7 — the Gate of Birth (seven questions; all seven or no birth)` — Q1 HOLE … Q7 HEIR | `sed -n '19,28p' research/arc-protocol.md` | R7 |
| C126 | arc-protocol.md:30-38 | `## OMEGA-5 — the Gate of Death (five duties at ANY ending)` — verdict/lesson/burial/HEIR/ledger | `sed -n '30,38p' research/arc-protocol.md` | R7 |
| C127 | arc-protocol.md:36 | `4. **HEIR:** what continues — an heir named, or "orphan" declared and the Owner notified.` | `sed -n '36p' research/arc-protocol.md` | R7 |
| C128 | arc-protocol.md:72 | `Charters have no heir clauses (Alpha-7's question 7 is unanswered in all four)` | `sed -n '70,74p' research/arc-protocol.md` | R7 |
| C129 | ch-001-prime.md:11-14,25-26 | powers `max 3 — there is no 4th` + retirement trigger `3 consecutive gate-less breaks → re-forge` | `sed -n '11,14p;25,26p' charters/ch-001-prime.md` | R7 |
| C130 | ch-003-maker.md:6,12,13,19 | `Birth charters on documented demand — nothing else` + masterpiece gate :13 + `Ratifying anything (Owner-only, R8)` | `sed -n '6p;12,13p;19p' charters/ch-003-maker.md` | R7 |
| C131 | gate-triads.md (9-gate inventory) | triad table: 4 COMPLETE+UNFIRED · 3 FIRED · 2 UNTESTED-FORM; F-1 claimant-owned masterpiece | `sed -n '24,32p' research/gate-triads.md` | R6 |
| C132 | ANTI_HALLUCINATION.md:7 | the wall-ledger lie actually told (fabricated "three wall-breaks") | `sed -n '7p' mill/ANTI_HALLUCINATION.md` | R6 |
| C133 | OBITUARY.md:5-7,17-21 | zero-kills clause + R14 GHOST measurer (named at R0) | `sed -n '5,7p;17,21p' RUN/OBITUARY.md` | R7 |
| C134 | proposals/PROPOSAL-T1-HEIR-CLAUSE.md | T1 ancestor (2026-09-06, unruled): heir clauses drafted WITHOUT reader briefs; ch-004-route flaw + auto-HELD flaw named in pr-016/017/020 | `sed -n '21,26p' proposals/PROPOSAL-T1-HEIR-CLAUSE.md` | R7 |
| C135 | p05-executable-gate-spec.md (tail) | `12/12 honored. The spec is complete-in-form… nothing executable until the Owner's GO builds the machine` | `tail -8 research/p05-executable-gate-spec.md` | R8 |
| C136 | p05-generator-machine.md:1-6 | `This is a DESIGN in research/ — no code, no build, no run. Part I… part II designs what the machine EMITS` | `head -6 research/p05-generator-machine.md` | R9 |
| C137 | p05-generator-machine.md:43 | `may contain only field placeholders and literal punctuation` — anti-stub false positive, design vocabulary | `sed -n '43p' research/p05-generator-machine.md` | R9 |
| C138 | STATE_SCHEMA.md:3-9 | 6 fields: `ENTRY.id · QUOTE (path·line·digest) · GATE · RECEIPT · SLOTS · VERDICT` | `sed -n '3,9p' mill/STATE_SCHEMA.md` | R9 |
| C139 | PIN_TRIAL + protocols/ | unpinned doctrine-class = 1 row (`grep -c UNPINNED-BUT-DOCTRINE`) + 6 files (`ls protocols/*.md`) = 7, matching machine design's claim | `grep -c UNPINNED-BUT-DOCTRINE RUN/PIN_TRIAL.md; ls protocols/*.md | wc -l` | R9 |
| C140 | rcvm.md:44,48-58 | `Every valid state transition is a K-line production. K-line = 4-tuple crossing proof` + `K = (A, D, W, G)` + WF(K) predicate | `sed -n '44p;48,58p' research/rcvm.md` | R10 |
| C141 | LOST.md:1-6 | the mill verdict's six losses (mind-story, prices, stigmergy, crossword, Owner-oracle, VM) | `cat mill/LOST.md` | R10 |
| C142 | BLEND_TEMPTATION.md BT01-06 | standing blend vocabulary incl. BT05 "keeps all four readings as modalities" | `head -20 mill/BLEND_TEMPTATION.md` | R10 |
| C143 | r10-auditor.md (blind) | 5 checks: 4 PASS / 1 FAIL (2 off-by-one anchors, quotes real) → OVERALL CLEAN, not refused-for-blend | `cat RUN/briefs/r10-auditor.md` | R10 |
