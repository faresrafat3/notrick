# tools/dsh — deployment material for the LOG CONSTITUTION

> **Not doctrine.** Per R11 + `AGENTS.md:71-75` (harness material never enters doctrine): this directory is *deployment source only*, copied to `~/.dsh/`, never cited as law. Law = `research/log-constitution.md`. Verified vs `deepseek-ai/deepseek-harness` @ master 2026-09-08.

## 1. What dsh actually gives you

Seven hook events, verbatim from `packages/hooks/hooks-claude-code/src/config.ts:11-19`:

```
SessionStart · UserPromptSubmit · PreToolUse · PostToolUse · Stop · SubagentStart · SubagentStop
```

Payload base (`src/index.ts:322-356`): `session_id`, `cwd`, `hook_event_name`; tools add `tool_name/input/use_id/response`; subagent events carry child `session_id`+`cwd`. Same-event hooks run **serially in config order** (`hook/invoked`/`hook/result` adjacent — reconciliation); any exit ≠2 = non-blocking failure.

**Two constraints that shape the design:**
- `transcript_path` **always empty** — no artifact paths in the seam. Record = hook payloads + agent writes, never raw transcript.
- `agent_type` on subagent events = constant `general-purpose` (no per-kind label). Agent name comes from the durable descriptor, never the payload — exactly why N1 (continuable + description) exists.

## 2. Mount the bridge

```yaml
- name: '@deepseek-ai/dsh-hooks-claude-code'
  config:
    configPath: ~/.dsh/hooks.json        # OUTSIDE the workspace — the agent must not edit its own supervisor
    projectDir: ~/Projects/notrick
```

`configPath` outside the workspace is the load-bearing choice: it is R6 applied to configuration. A supervisor the agent can edit is not a supervisor.

## 3. hooks.json

See `hooks.json`. Six of seven events append to the spine; `PreToolUse` also runs `guard_no_label.py` (**denies, exit 2**, any one-shot delegation without description — N1 enforced mechanically); `Stop` runs `require_dossier.py` (denies stopping when dossier not updated this turn, L6).
`PostToolUse` matches `skill|workflow|ralph|agent` to satisfy L7.

Docs note: folded halt (`continue: false`) has **no run-level effect** — `require_dossier.py` must deny, not ask the run to stop.

## 4. Durable events the spine can read

From `docs/persistence-catalog.md` — these survive compaction and are readable cold via `session-query`:

```
turn/start · turn/end · step/start · step/end
tool/call · tool/result · tool/code-dispatch
subagent/descriptor · subagent/model-selection-policy · model/selection
goal/change · compaction/start · compaction/end · compaction/summary
tool-workflow/run-start · tool-workflow/agent-start · tool-workflow/agent-end · tool-workflow/run-end
assistant/message · assistant/attempt · user/message
hook/invoked · hook/result · llm/retry · agent-preset/selected · todo/write
```

dsh hierarchy **Goal → Round → Turn → Step**: one round = one turn = **one mandatory dossier line.** The harness continuation prompt already says "inspect them instead of assuming earlier narration is still current" — the dossier is that memory.

## 5. Per-agent files = presets

`packages/preset/agent-presets`: each agent = one dir with `agent.cordis.yml` (plugins/tools/prompt/skills) from `presets/` or `<dshHome>/.agent-presets`, plus `DOSSIER.md` + `OBITUARY.md`. Preset name = agent name (L1).

Docs constraint: **child joins parent's composition** — no separate-preset tools for children. Vary by `provider`/`model`/`persona`/`toolFilter` in the delegation.

Enable `subagent-model-selection` (`enabled: true` + explicit `allowedModels`) so `model/selection` + `subagent/model-selection-policy` record per delegation.

## 6. The mirror

```bash
# runs outside the workspace (cron / systemd timer) — never from inside the agent's session
rsync -a ~/Projects/notrick/logs/ /mnt/mirror/notrick-logs/$(date -u +%F)/
python3 ~/Projects/notrick/tools/dsh/verify_chain.py /mnt/mirror/notrick-logs/$(date -u +%F)/
```

`verify_chain.py` recomputes the sha256 chain, reports breaks. **Breaks filed in `violations.md`, never repaired.** Hand-test the mirror once before trusting it.

## 7. Not yet written

`log_spine.py`, `guard_no_label.py`, `log_skill.py`, `require_dossier.py`, `verify_chain.py`: specified, not implemented — ~30-line append-only scripts, first task of the adopting round. Keep here (deployment source), never in doctrine.
