# RESEARCH WAVES — converting a large inference budget into distinct ideas

> Added 2026-09-08 · methodology, pre-registered · status: **PROPOSED**, pending Owner
> approved-docs moment. Every number below is cited; the derivations are marked as such.

## The measured constraint (read before spending anything)

There is **no published scaling curve for idea quality versus sample count**. Every clean
coverage curve is measured on automatically verifiable domains (math, code, SWE-bench). For
ideas specifically, the only direct measurement is a saturation result:

> "Out of the 4000 generated seed ideas, there are only **200 non-duplicate unique ideas**."
> — Si, Yang & Hashimoto, *Can LLMs Generate Novel Research Ideas?*, arXiv:2409.04109, §7.1
> (dedup at cosine > 0.8). And: "the percentage of non-duplicates in newly generated batches
> keeps decreasing, and accumulated non-duplicate ideas eventually plateau… Increasing the
> number of generated ideas simply leads to repeating duplicate ideas."

So **~1,000 generated ≈ 50 distinct**, and the curve is not linear. Two further measurements
fix where the money goes:

- **Selection plateaus near 100 samples** without an automatic verifier, while coverage keeps
  climbing to 10,000 (Brown et al., *Large Language Monkeys*, arXiv:2407.21787 — on MATH:
  coverage 82.9% → 98.44% against selected accuracy 40.50% → 41.41%).
- **A single judge is near a coin flip**: best LLM evaluator 53.3% balanced accuracy vs human
  inter-reviewer 56.1% (arXiv:2409.04109, Table 11). **A five-review ensemble reaches 69%**,
  with F1 above inter-human agreement (Sakana, *Nature*, 2026-03-25).

**Therefore: generation is cheap and saturates; ranking is where budget converts.**
Co-Scientist states the same allocation: "the majority of the system's computation is
dedicated to verifying these hypotheses."

## The seven waves

Structural rule: **independence first, debate second.** Measured on >10,000 proposals, the
highest diversity comes from Nominal Group Technique (blind writing before any discussion) and
subgroup isolation; dense topologies accelerate a "rush to agreement", and **leader-led
structures collapse almost identically to no structure at all** ("authority-induced collapse",
Chen et al., arXiv:2604.18005, ACL 2026).

**W-0 RECON.** Map what exists before generating anything. 12 read-only subagents, one per axis
of `research/ten-axis-knowledge-map.md`, each with a different retrieval seed and source class.
Explicit source-quality rule — agents "consistently chose SEO-optimized content farms over
authoritative but less highly-ranked sources" (Anthropic, 2025-06-13).

**W-1 DIVERGE.** The largest wave. Zero inter-agent communication. **Cluster size ≈ 7, not 50**:
effective diversity per agent (Vendi/N) falls from 1.03 at N=3 to 0.47 at N=7 — doubling agent
count bought +0.20 net distinct ideas for ~54% lower efficiency (arXiv:2604.18005). Use
**verbalized sampling** ("propose 8 directions with their probabilities", not "propose the best
idea"): measured diversity gain 1.6–2.1×, orthogonal to temperature, largest on the strongest
models (Zhang et al., arXiv:2510.01171). Route by difficulty: easy → sequential depth,
hard → breadth plus depth; compute-optimal routing is >4× more efficient than best-of-N
(Snell et al., arXiv:2408.03314).

**W-2 DEDUPE.** Embed, cluster at cosine > 0.8, one representative per cluster. Publish
`generated / distinct / survival_rate`. If survival > 0.15, stop: either the threshold is loose
or W-1 leaked.

**W-3 TOURNAMENT.** Five independent judges, separate contexts, different models where
available, scoring against a fixed-weight rubric **before reading any narrative**; one separate
aggregator call; double-elimination pairwise debate with Elo on the top 20. One dedicated
**diversity judge** may veto a ranking that collapses into a single family (Co-Scientist's
Proximity agent). Caveat: Elo is self-generated — anchor it to an external check periodically.

**W-4 RED-TEAM.** For each top-20 idea, two subagents that cannot see each other: one paid to
destroy it, one paid to steelman it. Then run the idea's own pre-registered falsifier with a
command and report FIRED / DID NOT FIRE. `NEGATIVE_RESULTS.md` must gain ≥1 entry per idea.

**W-5 SYNTHESIS.** Merge hierarchically in batches of ≤7, **shuffled before each merge** —
performance degrades sharply in the middle of a long context (Liu et al., *Lost in the Middle*,
arXiv:2307.03172), so flat concatenation systematically under-weights the middle reports. Every
surviving claim must intersect ≥2 existing repo entries (R10).

**W-6 OMEGA.** Bury every idea whose falsifier fired: verdict · lesson · burial · **heir** ·
ledger. **Success condition is destruction: `kill_count` > 0.** A wave that kept everything
failed.

## Budget arithmetic (unit costs are sourced; the split is derived)

| Item | Value | Source |
|---|---|---|
| Full pipeline paper, AI Scientist v1 | < $15 | arXiv:2408.06292 |
| Same, Agent Laboratory (gpt-4o) | $2.33 | arXiv:2501.04227 |
| Agent vs chat tokens; multi-agent | 4× ; 15× | Anthropic, 2025-06-13 |
| Token usage alone explains performance variance | 80% | Anthropic, 2025-06-13 |
| Model upgrade vs doubling the token budget | upgrade wins | Anthropic, 2025-06-13 |
| Idea survival after dedup | ~5% | arXiv:2409.04109 |
| Single judge vs five-judge ensemble | 53.3% → 69% | arXiv:2409.04109; Sakana/*Nature* 2026 |
| Agent-count saturation | Vendi/N 1.03 → 0.47 (N=3→7) | arXiv:2604.18005 |

Derived (not published): split **30 / 20 / 50** — generation / dedup-and-diversity /
ranking-and-falsification. Buy the better base model before doubling tokens.

## Operating rules (from documented field experience, not theory)

1. **No flat self-coordination.** Cursor: twenty agents performed like two or three, then became
   risk-averse — "No agent took responsibility for hard problems." Planner / worker / judge works.
2. **Model before tokens.** FLOPs-matched, a 14× larger model beats test-time compute on the
   hardest difficulty bins (Snell et al.).
3. **Independence before debate.** Blind writing → subgroups → discussion, in that order only.
4. **One writer.** Parallelism is for reading, attacking and verifying (Cognition, 2025-06-12).
5. **The record outlives the wave.** Everything above is worthless without the dossier, the
   spine and the mirror (`research/log-constitution.md`).

## Honest ceiling

- No published coverage-vs-samples curve exists for idea generation; both nearest results are
  saturations.
- Human expert agreement on idea quality is only 56.1% — below paper review (66–72%). Any
  "best idea" verdict carries that error floor.
- Reviewers weight excitement (r = 0.854) far above feasibility (r = 0.097).
- Executed LLM ideas produce compilable code that "skipped or modified baseline steps and
  mis-defined metric functions" — the paper's own warning: "we have to verify the faithfulness
  of the implementations."

## Falsifier (pre-registered)

If, after three full wave cycles, `distinct/generated` stays ≈ constant while compute doubles,
the wave architecture measures only volume and must be re-forged around ranking. Burial by
Omega-5; heir: `research/hypotheses-ledger.md` H5 instrumentation.
