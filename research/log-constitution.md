# LOG CONSTITUTION — one file per agent, named by harness + model

> Added 2026-09-08 · doctrine (law), not implementation. The dsh-specific mechanics live in
> `tools/dsh/` and are NOT doctrine (R11/R12: runtime material must not become doctrine;
> AGENTS.md:71-75 forbids pulling harness material into the mind's law).
> Status: **PROPOSED — pending Owner approved-docs moment** to be lifted into AGENTS.md.

## Why a constitution and not a habit

A log an agent writes about itself is not evidence. Reward-trained models exploit a hack in
>99% of cases and admit it in <2% (Anthropic, 2025-04-03); models cannot reliably self-correct
reasoning without external feedback (Huang et al., ICLR 2024). Therefore the record is built
from **three layers, of which the agent owns exactly one**:

| Layer | Written by | Lives in | Can the agent erase it? |
|---|---|---|---|
| 1. SPINE | the harness, via hooks | `logs/spine/<session>.jsonl` | **no** — config sits outside its workspace |
| 2. DOSSIER | the agent, under contract | `logs/agents/<name>/` | yes, but chained and gate-checked |
| 3. MIRROR | an external timer | outside the workspace | **no** |

**A record becomes evidence only after the mirror. Before that it is a draft.**
This is R6 applied to the record itself: the gate is not owned by the claimant.

## Naming (the name is the identity)

```
<harness>.<model>.<label>      e.g.  dsh.deepseek-v3.reasoning.notrick-prime
                                     dsh.codex.gpt5.attacker-07
                                     dsh.claude-code.opus.verifier-blind
```

**N1 — the naming rule:** never delegate one-shot. Every delegation is `continuable` and
carries a `description`. Only that mode persists the label AND snapshots provider / model /
reasoning-effort / persona in a durable descriptor that survives compaction. A one-shot child
has an optional label — which means, in practice, no name. No name, no dossier, no claim.

## The tree

```
logs/
  spine/<session>.jsonl                              # layer 1, harness-written
  agents/<harness>.<model>.<label>/
     DOSSIER.md        identity · charter · tools · skills · budget · obituary
     TURNS/T-####.md   intent · decision · evidence · cost
     DECISIONS.jsonl   append-only, hash-chained
     SKILLS.jsonl      every skill/workflow loaded, by name
     RECEIPTS/         round receipts
     OBITUARY.md       the clause that ends this agent
  RECONCILE.md                                       # layer 3 output, third-party
```

## The ten laws

**L1 — every agent has a file.** Name = `<harness>.<model>.<label>`. No agent acts before its
dossier exists on disk.

**L2 — no claim without a line.** Every claim entering the repo corresponds to a line in the
dossier of the agent that produced it, in a numbered turn. A claim without a line did not
happen. (Direct extension of `AGENTS.md:11-15`.)

**L3 — writer and witness are separate.** The spine is harness-written; the dossier is
agent-written; reconciliation is performed by a third party that wrote neither, once per round,
in `logs/RECONCILE.md`.

**L4 — append-only and chained.** Each line carries `prev_hash` and `entry_hash` (sha256).
A broken chain is a violation: recorded, never repaired.

**L5 — a correction is a new entry.** No past line is edited. The correction cites the
corrected line. This is the `violations.md` law applied to the record (AGENTS.md:65-68).

**L6 — a turn does not end without a line.** Otherwise the turn does not end. Enforced by a
`Stop` hook that refuses to stop when the dossier was not updated this turn.

**L7 — record what was loaded.** Every `skill` / `workflow` / `ralph` invocation is logged by
name. An agent's assertion that it "used skill X" without a matching line did not use it.

**L8 — every dossier carries an obituary.** The clause that ends this agent, written before it
acts. (ARC: nothing exists without its death written first.)

**L9 — no line without a price.** Tokens + wall time + tool count. A line with no cost was not
executed.

**L10 — mirror before evidence.** Citing an unmirrored record is forbidden.

## Prohibitions

- Writing into `logs/spine/` or into the mirror = attempted falsification of evidence. Filed in
  `violations.md`; the heaviest violation after fabricating a quote.
- The reconciler may not repair anything. It reports numbers only:
  `turns_missing · tools_undeclared · evidence_mismatch · skills_unlogged · cost_delta_pct`.
- No agent reads another agent's dossier during a blind-generation wave. Independence is the
  diversity condition; breaching it voids the wave.

## The entry schema (one schema, three layers)

```json
{"v":1,"ts":"2026-09-08T01:20:11Z","harness":"dsh","provider":"deepseek",
 "model":"deepseek-v3-reasoning","agent":"notrick-prime","session":"s-01J…",
 "turn":17,"round":"R005","step":3,
 "kind":"decision|thinking|tool|skill|claim|kill|blocked|obituary","text":"…",
 "evidence":[{"file":"mill/STATE.md","line":16,"cmd":"sed -n '16p' mill/STATE.md"}],
 "cost":{"tokens":4120,"ms":8800,"tools":6},
 "prev_hash":"ab12…","entry_hash":"cd34…"}
```

`kind` and `evidence.cmd` are what make the record cheap to audit: reconciliation becomes
"did this command reproduce that text", not "does this prose sound true".

## Reconciliation (who catches the lie)

Once per round, a subagent that wrote neither layer:
1. **Completeness** — every `turn/end` in the spine has a dossier line. A gap violates L6.
2. **Tool honesty** — every `tool/call` in the spine is declared. Undeclared tool = undeclared work.
3. **Claim honesty** — a random 20% of `evidence` re-derived by the recorded command.
4. **Skill honesty** — every loaded skill appears in `SKILLS.jsonl`.
5. **Cost honesty** — dossier token totals ≈ the token meter. A wide gap is a written-in-the-air record.

## Falsifier (pre-registered)

The constitution dies — or is re-forged — if, after thirty logged turns, `evidence_mismatch`
is 0 AND `kills` is 0 AND `cost_delta_pct` is 0. Three clean zeros mean the machine measures
nothing and only certifies. That is a decorative log, and a decorative log is worse than none,
because it manufactures trust. Burial by Omega-5; heir: ordinary git history plus the spine.

## Open, Owner-owned

- Whether `logs/` stays inside this repo (R12: the workspace is public to its agent) or is
  mirrored to a path the agent cannot reach. **The mirror is the whole point** — without it the
  constitution is L1-L9 and no L10, i.e. no evidence.
