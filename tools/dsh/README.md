# tools/dsh — deployment material for the LOG CONSTITUTION

> **This is not doctrine.** Per R11 (philosophy lives in Projects; the runtime workspace holds
> only executable state) and `AGENTS.md:71-75` (harness material must never be read into the
> mind's doctrine), this directory holds *deployment source only*: it is copied out to
> `~/.dsh/` and never cited as law. The law is `research/log-constitution.md`.
> Verified against `deepseek-ai/deepseek-harness` @ master, 2026-09-08.

## 1. What dsh actually gives you

Seven hook events, verbatim from `packages/hooks/hooks-claude-code/src/config.ts:11-19`:

```
SessionStart · UserPromptSubmit · PreToolUse · PostToolUse · Stop · SubagentStart · SubagentStop
```

Payload base (`src/index.ts:322-356`): `session_id`, `cwd`, `hook_event_name`; tools add
`tool_name`, `tool_input`, `tool_use_id`, `tool_response`; subagent events carry the child's
`session_id` and `cwd`. Hooks on one event run **serially in config order** (so each
`hook/invoked` / `hook/result` pair stays adjacent — good for reconciliation), and any exit code
other than 2 is a non-blocking failure.

**Two constraints that shape the design:**
- `transcript_path` is **always empty** — "the persistence seam exposes no artifact paths". So
  the record cannot be built from the raw transcript; it is built from hook payloads plus what
  the agent writes.
- `agent_type` on the subagent events is the constant `general-purpose` — "the subagent seam
  carries no per-kind label". So the agent's name never comes from the hook payload; it comes
  from the durable descriptor, which is exactly why N1 (continuable + description) exists.

## 2. Mount the bridge

```yaml
- name: '@deepseek-ai/dsh-hooks-claude-code'
  config:
    configPath: ~/.dsh/hooks.json        # OUTSIDE the workspace — the agent must not edit its own supervisor
    projectDir: ~/Projects/notrick
```

`configPath` outside the workspace is the load-bearing choice: it is R6 applied to
configuration. A supervisor the agent can edit is not a supervisor.

## 3. hooks.json

See `hooks.json` in this directory. Six of the seven events append to the spine; `PreToolUse`
additionally runs `guard_no_label.py`, which **denies (exit 2)** any one-shot delegation without
a description — this is how N1 is enforced mechanically rather than requested; and `Stop` runs
`require_dossier.py`, which denies stopping when the dossier was not updated this turn (L6).
`PostToolUse` matches `skill|workflow|ralph|agent` to satisfy L7.

Note from the docs: a folded halt (`continue: false`) has **no run-level effect**, so
`require_dossier.py` must deny rather than ask the run to stop.

## 4. Durable events the spine can read

From `docs/persistence-catalog.md` — these survive compaction and are readable cold via
`session-query`:

```
turn/start · turn/end · step/start · step/end
tool/call · tool/result · tool/code-dispatch
subagent/descriptor · subagent/model-selection-policy · model/selection
goal/change · compaction/start · compaction/end · compaction/summary
tool-workflow/run-start · tool-workflow/agent-start · tool-workflow/agent-end · tool-workflow/run-end
assistant/message · assistant/attempt · user/message
hook/invoked · hook/result · llm/retry · agent-preset/selected · todo/write
```

Because dsh's hierarchy is **Goal → Goal Round → Turn → Step**, one goal round is one turn:
**one round = one mandatory dossier line.** The harness's own continuation prompt already tells
the model to "inspect them instead of assuming earlier narration is still current" — the dossier
is that memory.

## 5. Per-agent files = presets

`packages/preset/agent-presets`: each agent is a directory holding one `agent.cordis.yml` that
names its plugins (tools, prompt sections, skills), sourced from `presets/` or
`<dshHome>/.agent-presets`. Add beside it `DOSSIER.md` and `OBITUARY.md`. The preset name is the
agent name in L1.

Constraint from the docs: **a child agent joins its parent's composition** — so do not expect to
give a child different tools via a different preset. Vary children by `provider`, `model`,
`persona` and `toolFilter` in the delegation itself, not by preset.

Enable `subagent-model-selection` (`enabled: true` with an explicit `allowedModels` list) so
`model/selection` and `subagent/model-selection-policy` are recorded per delegation.

## 6. The mirror

```bash
# runs outside the workspace (cron / systemd timer) — never from inside the agent's session
rsync -a ~/Projects/notrick/logs/ /mnt/mirror/notrick-logs/$(date -u +%F)/
python3 ~/Projects/notrick/tools/dsh/verify_chain.py /mnt/mirror/notrick-logs/$(date -u +%F)/
```

`verify_chain.py` recomputes the sha256 chain and reports breaks. **A break is filed in
`violations.md`, never repaired.** Test the mirror once by hand before treating it as evidence.

## 7. Not yet written

`log_spine.py`, `guard_no_label.py`, `log_skill.py`, `require_dossier.py`, `verify_chain.py` are
specified but not implemented here — they are ~30-line append-only scripts and are the first
task of the round that adopts this constitution. Keep them in this directory (deployment
source), never in the mind's doctrine.
