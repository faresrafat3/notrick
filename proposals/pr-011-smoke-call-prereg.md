# pr-011 — SMOKE-CALL PRE-REGISTRATION (G-A · dsh..prereg · 2026-09-08)

> **Status of this file.** This is a pre-registration, not a run. No smoke call was executed
> by this lane. RATIFICATION-BATCH-001.md:25 records P5 as **HOLD** ("AUTHORIZED was NOT
> scribed"); nothing here recommends that the Owner type "P5: AUTHORIZED" — it only makes the
> decision **priced**. Phase: **v0.00001** (VERSION.md:8 — "5 gates locked: Owner signature ·
> smoke call · threshold · breakthrough definition · first falsifiable run"). Every count in
> this file was printed by a command run in THIS session (W9); every secret is stated by
> COUNT only (S10); every Owner-by-right field stays empty (W3).

---

## S1 — THE CALL

**One command. Not a plan to design one.** Run exactly this, from the NOTRICK workspace root,
exactly once (see S9):

```bash
mkdir -p RUN/smoke && set -a && . ~/.openclaw/.env && set +a && curl -sS -X POST https://openrouter.ai/api/v1/chat/completions -H "Authorization: Bearer $OPENROUTER_KEY_1" -H "Content-Type: application/json" -H "X-Title: notrick-pr011-smoke" -d '{"model":"nex-agi/nex-n2.5-mini:free","max_tokens":16,"messages":[{"role":"user","content":"Reply with exactly this token and nothing else: FUEL-PROVEN-PR011"}]}' -o RUN/smoke/pr-011-response.json -w '%{http_code}\n' | tee RUN/smoke/pr-011-http.txt
```

- **Literal prompt string** (65 chars, 9 words — printed in-session by python `len()`/`split()`):
  `Reply with exactly this token and nothing else: FUEL-PROVEN-PR011`
- **Model:** `nex-agi/nex-n2.5-mini:free` — chosen from the live OpenRouter public catalog
  fetched in-session (`https://openrouter.ai/api/v1/models`, HTTP 200, 2026-09-08): id printed
  exactly so, `"pricing":{"prompt":"0","completion":"0"}`, context_length 262144,
  `max_tokens` in supported_parameters, `is_moderated:false`, reasoning `mandatory:false`
  with no `default_enabled` (default off).
- **max_tokens: 16** — bound in the body; the sentinel is 17 chars; 16 caps spend and makes
  an over-long answer a named outcome (N-1), not a surprise.
- **Endpoint:** `https://openrouter.ai/api/v1/chat/completions` — the base URL is the value
  printed by the whitelist extraction of the gateway's own config
  (`~/.openclaw/openclaw.json` → `/models/providers/openrouter-1/baseUrl = https://openrouter.ai/api/v1`,
  printed in-session; 11 OpenRouter provider entries: openrouter-1..10 + openrouterMain),
  plus the standard OpenAI-compatible chat path. Auth travels by **variable name only**
  (`$OPENROUTER_KEY_1`, sourced from `~/.openclaw/.env` at run time); its value is never
  read, printed, or stored by this lane.
- **Capture:** response body → `RUN/smoke/pr-011-response.json`; HTTP code →
  `RUN/smoke/pr-011-http.txt`. Both are the verifier's only inputs (S8).

**Parts that cannot be specified from the doctrine lane — findings, not failures:**
1. The **key value** — by design (S10); referenced by name only. Whether it works IS the
   hypothesis under test.
2. The **openrouter-N ↔ OPENROUTER_KEY_N mapping** — an assumption from the gateway's own
   naming convention (config provider `openrouter-1` vs env name `OPENROUTER_KEY_1`, both
   printed in-session). If the pairing is wrong, F-AUTH fires and says so; no silent fix.
3. **Free-tier acceptance** of the key — untestable without the call (F-CREDIT/F-AUTH cover it).
4. **The gateway process itself.** OpenClaw 2026.9.2 is idle (FOUNDATIONAL-BRIEF.md:15) and
   starting it is a second runtime act outside this pre-registration's one-call scope (W4).
   This call smokes the thing ZERO-READINESS.md:17 actually names — the idle key pool
   ("38 keys idle in ~/.openclaw/.env") — using the gateway's OWN provider wiring
   (openclaw.json /models/providers) and OpenAI-compatible shape. A process-level smoke
   (`openclaw gateway` running, call through 127.0.0.1:18789) is a different command and a
   different authorization; the Owner may price it separately.

---

## S2 — PASS CRITERION (stranger-applicable)

FUEL PROVEN **if and only if all four** hold on the two files S1 produced:

- **C1** `RUN/smoke/pr-011-http.txt` contains exactly `200`
- **C2** `RUN/smoke/pr-011-response.json` parses as JSON and
  `.choices[0].message.content` is a string
- **C3** that string, after trimming leading/trailing whitespace, equals exactly
  `FUEL-PROVEN-PR011`
- **C4** `.usage.total_tokens` exists and is `> 0` (real generation moved tokens — no
  zero-usage mock)

**Stranger's commands** (verbatim; zero context required, zero questions to the author):

```bash
cat RUN/smoke/pr-011-http.txt                                  # must print: 200
python3 -c "import json;c=json.load(open('RUN/smoke/pr-011-response.json'))['choices'][0]['message']['content'].strip();print('PASS' if c=='FUEL-PROVEN-PR011' else 'FAIL')"
python3 -c "import json;u=json.load(open('RUN/smoke/pr-011-response.json')).get('usage',{});print('PASS' if u.get('total_tokens',0)>0 else 'FAIL')"
```

A stranger who runs these **three** commands and sees `200`, `PASS`, `PASS` reaches the same
verdict the author would. (The third command — the C4 usage check — was added post-verdict to
close a loophole the context-isolated verifier caught: without it, the file's own N-2
zero-usage mock case would have printed PASS. The pre-patch verdict and this patch are both
recorded in `RUN/dossiers/dsh..prereg/pre-registration.md`; the patch is mechanically
checkable by re-reading this block.)

---

## S3 — FAIL CRITERIA (named; the output that triggers each)

1. **F-AUTH (key rejected).** Trigger: HTTP `401`/`403`, or body
   `{"error":{...}}` with code/message indicating invalid credentials. Meaning: the
   gateway's own configured pair (openrouter-1 baseUrl + OPENROUTER_KEY_1) cannot authorize
   — see S7, this is also the falsifier.
2. **F-CREDIT (no fuel balance).** Trigger: HTTP `402`, or error text mentioning
   credit/billing/quota-exhausted. Meaning: key valid, fuel empty — the "idle keys are
   usable fuel" premise dies for this key.
3. **F-RATE (saturated).** Trigger: HTTP `429` or rate-limit error code. Meaning: pool
   alive but throttled; fuel unproven by a single unthrottled call.
4. **F-CONN (path down).** Trigger: curl nonzero exit, `RUN/smoke/pr-011-http.txt` = `000`
   or missing (connection refused / DNS / TLS failure to openrouter.ai). Meaning: the
   provider path is unusable from this machine.
5. **F-JSON (contract drift).** Trigger: HTTP `200` but the body is not an OpenAI-compatible
   chat completion (`.choices[0].message.content` absent). Meaning: the
   OpenAI-compatible premise of the whole pool is false at this endpoint.
6. **F-ECHO (fuel moved, body didn't speak).** Trigger: HTTP `200`, C2 holds, C4 `> 0`, but
   C3 fails (content ≠ sentinel). Meaning: tokens flowed (partial fuel evidence: record
   `usage` verbatim) but the ONE trivial instruction was not followed — the full criterion
   (S2) is NOT met.

Any F-* is a **recorded failure** (S9): the named mode + the saved body verbatim go to
`RUN/NEGATIVE_RESULTS.md` and the CONTEXT.md decision-log tail.

---

## S4 — NULL CRITERION (the test told us nothing)

- **N-1 (cap ate the answer).** HTTP `200`, valid shape, `finish_reason == "length"`, empty
  or whitespace `content`. The plumbing answered; the sentinel question is unanswered.
- **N-2 (indistinguishable from a mock).** HTTP `200`, valid shape, content present, but
  `usage` missing or `total_tokens == 0`. A zero-usage "success" cannot discriminate real
  generation from a cached/loopback echo — it proves nothing either way.
- **N-3 (hypothesis never engaged).** Local failure before any HTTP response: `.env`
  unreadable, `curl` absent, DNS failure before connect. Nothing about fuel was tested.

**The rule:** a null is a **recorded result** — filed in `RUN/NEGATIVE_RESULTS.md` and the
CONTEXT.md decision-log tail with the saved body verbatim — **never a retry**. No N-*, F-*,
or borderline output authorizes a second call inside this pre-registration. A second call
requires a NEW pre-registration file with a new pr number. (W4 stands regardless: even a
null does not let the agent run it — only the Owner's P5 line does.)

---

## S5 — COST (every number printed by a command in THIS session; no hand-written figures)

- **Prompt size (command: python3 over the literal string, printed in-session):**
  `prompt_chars = 65`, `prompt_words = 9`,
  `prompt_tokens_HARD_UPPER_BOUND = 65` (every BPE token emits ≥ 1 char, so tokens ≤ chars —
  a hard bound, no heuristic), heuristic chars/4 = 17 shown for illustration only;
  `tiktoken = ABSENT` (ModuleNotFoundError, printed in-session).
- **Completion bound:** `max_tokens = 16` (in the S1 body).
- **USD, primary model** (`nex-agi/nex-n2.5-mini:free`, catalog-printed pricing
  `"prompt":"0","completion":"0"`):
  **$0.00000000** for the single call.
- **USD, paid reference** (`deepseek/deepseek-v4-flash-0731`, catalog-printed
  0.000000065/token in · 0.00000018/token out):
  **$0.00000711** for the same call shape.
- **USD, worst case across catalog prices printed in-session**
  (`openai/gpt-6-astra`, printed 0.00001/token in · 0.00005/token out = $10/$50 per M):
  **$0.00145000** for the same call shape.
- **PACKAGE CEILING, end to end:** exactly ONE call (S9) at the worst-case printed price =
  **$0.00145000**; ×2 safety margin = **$0.00290000**. Declared ceiling: **$0.01** (rounded
  up from $0.00145; the rounding is arithmetic on printed inputs, stated here). The verifier
  (S8) re-runs zero-cost local commands — no API calls — so the ceiling cannot be exceeded
  by the package itself.
- **Honest unmeasured spend:** this authoring session's own LLM tokens and the context-
  isolated verifier's tokens are real but not measurable from inside the session; they are
  outside the package's controllable surface and visible only in the Owner's dashboards.
  Stated as a limitation, not a number.
- **Sources:** `https://openrouter.ai/api/v1/models` fetched in-session (HTTP 200,
  2026-09-08T21:38:58Z session clock); pricing fields quoted verbatim above.

---

## S6 — WHAT PASSING LICENSES

VERSION.md:11, verbatim:

> - **v0.001** — fuel proven (smoke call passed); the body can speak

A pass licenses **exactly that**: the fuel gate (RJ-001 condition 3; ZERO-READINESS.md
section B's first box becomes checkable with verbatim output logged) and the version-scale
reading from v0.00001 toward v0.001 — proposed, since "Only the Owner moves the version"
(VERSION.md:23).

A pass does **NOT** license:

1. **The first run.** P6, the written GO, is **NOT YET** (RATIFICATION-BATCH-001.md:29,
   "NOT YET — 2026-09-06"). The v0.001→v0.01 crossing (first falsifiable run, RJ-001
   cond.1) is a separate, still-locked gate. Passing P5 licenses proof of fuel, **not the
   first run**.
2. **Owner-by-right fields.** Threshold first value stays blank (RATIFICATION-BATCH-001.md
   Part 3, line 18, `____` — AGENTS.md:36-37); breakthrough definition stays
   TEXT-UNTIL-THEN (Part 4, line 21).
3. **Standing runtime rights.** Part 5's grant, if ever typed, is "one smoke call and log
   verbatim output" (RATIFICATION-BATCH-001.md:24) — one call, one log, no standing power,
   no second call without a new pre-registration and, where required, a new Owner line.
4. **Version movement by the agent.** VERSION.md:23 — the agent may PROPOSE with evidence;
   only the Owner stamps.

---

## S7 — FALSIFIER

**The single observation that kills the premise that this fuel pool is usable at all:**
the gateway's **own configured pair** — provider `openrouter-1`
(`https://openrouter.ai/api/v1`, printed from `~/.openclaw/openclaw.json` in-session) +
`OPENROUTER_KEY_1` (name printed from `~/.openclaw/.env` in-session) — returns
**HTTP 401/403 invalid-credentials** on the S1 call.

Why that kills it: this pair is not an experimental guess; it is the gateway's own wiring.
The pool premise ("idle keys in ~/.openclaw/.env are usable fuel" — ZERO-READINESS.md:17,
FOUNDATIONAL-BRIEF.md:16) is **false as stated** if the gateway's own pair cannot authorize,
and every downstream fuel plan built on that premise inherits the falsification. Its twin,
equally lethal: HTTP 200 + sentinel match + `usage.total_tokens == 0` (N-2) — a "success"
that moved no tokens proves the pool can echo, not that fuel exists.

I could write one. It is written. **Precision the verifier forced:** F-AUTH kills the PAIR
premise outright ("this configured pair does not authorize" — observed, not inferred). It
kills the POOL-wide premise ("idle keys are usable fuel") only because the mapping
openrouter-1 ↔ OPENROUTER_KEY_1 is the gateway's own naming convention (S1 finding 2); a 401
is also consistent with a wrong key↔provider pairing, so the recorded result must carry both
readings: `F-AUTH: pair does not authorize; pool premise falsified IFF the Owner confirms the
default mapping was intended`. The distinction is recorded, not smoothed over.

---

## S8 — VERIFIER (a gate the claimant does not own)

RULES.md:25, verbatim: *"Any claimed success passes a gate it does not own. A gate owned by
the claimer is not a gate."*

- **Named role: `dsh..verifier`** — a context-isolated agent session (separate context, no
  access to this authoring conversation) whose ONLY inputs are (1) this file, (2)
  `RUN/smoke/pr-011-http.txt`, (3) `RUN/smoke/pr-011-response.json`. It is not the claimant
  (R6), not the Owner (R8 keeps the Owner as appeal terminus, not first checker). The
  Owner's delegate or a fresh subagent wearing this file fills the role.
- **Command they run** (before any verdict): the **three** stranger commands of S2, verbatim,
  plus `test -s RUN/smoke/pr-011-response.json`.
- **Recording:** the verifier appends the verdict line (mode: PASS / F-* / N-* + the two
  command outputs verbatim) to the CONTEXT.md decision-log tail **themselves** — the
  claimant never grades the claim.
- **In-session verification of THIS file** (the pre-registration, not the future call): a
  context-isolated subagent (delegation description: `dsh..prereg`) graded sections S1–S10
  as a stranger; its verdict is recorded in `RUN/dossiers/dsh..prereg/pre-registration.md`.

---

## S9 — STOP CONDITION

**One call.** The S1 command, run once, is the entire execution surface of this
pre-registration. If it fails: the failure mode name (S3) or null class (S4) + the saved
body verbatim are **recorded**, in `RUN/NEGATIVE_RESULTS.md` and the CONTEXT.md tail. The
answer to a failure is a recorded failure — not a second call, not a key-rotation sweep, not
a model swap, not a tweak-and-retry loop. A second call needs a NEW pre-registration (new pr
number, new S1–S10). RULES.md:17-18, verbatim: *"Budget exhaustion = stop + hand back +
report. A run that ends on budget fed the ledger; persisting past budget is the only
unforgivable spend."* The authoring session held its own hard cap (W10: 60 tool operations;
halt-and-receipt at 50) — receipt in `RUN/dossiers/dsh..prereg/pre-registration.md`.

---

## S10 — SECRETS

- **Count only:** `~/.openclaw/.env` contains **57** `KEY=VALUE` assignment lines (printed
  in-session by `grep -cE '^[A-Za-z_][A-Za-z0-9_]*='`). By NAME only: 55 look like
  LLM-provider keys (families: OPENROUTER ×11, CLINE ×10, OPENCODE ×10, GROQ ×9, INFERX ×8,
  APINEX ×3, AGENTROUTER ×3, ORCAROUTER ×1, plus OPENAI_API_KEY), 1 is a vector-DB key
  (PINECONE_API_KEY). **Zero values were read, printed, or stored.**
- The S1 command references `$OPENROUTER_KEY_1` **by name**; the value travels shell→curl
  at run time only, never through any file in this workspace.
- This file contains no key, token, or .env value. Gateway config was extracted by a
  whitelist command that refuses any path or value matching
  `key|token|secret|auth|password`; only provider baseUrls and structure names printed.
- Walls honored: nothing from `/tmp/dsh-*`, `~/.dsh/archive/`, `~/.dsh/quarantine/`, or any
  gateway secret entered this document (AGENTS.md:70-75 — "OpenClaw/DSH runtime and this
  mind's doctrine are SEPARATED by law, by design").

---

## FINDINGS LEDGER (this round's discoveries, evidence-cited)

- **F-1 (stale count).** ZERO-READINESS.md:17 says "38 keys idle"; the in-session
  `grep -c` printed **57** assignment lines. The file's TEXT is unchanged (opening-fact
  verification passed); its COUNT is stale vs. runtime. The Owner may restate the line;
  this lane cannot touch ZERO-READINESS.md (write lane).
- **F-2 (tools absent).** `tools/lease.py`, `tools/windows.py`, `tools/dsh/beat.py`,
  `tools/dsh/guard_no_label.py`, `tools/dsh/guard_blind_window.py` — none exist in this
  checkout (`ls tools/` → "No such file or directory"; each attempted script exited 2,
  stderr: "can't open file ... No such file or directory"). Leases, window checks, guards,
  and the beat could not be run. Degraded per the objective ("Degrade, never halt");
  recorded here and in the receipt. No SPLIT rows were needed (no lane collisions met).
- **F-3 (no model pin).** `~/.openclaw/openclaw.json` contains only `agents` + `models`
  structure; the whitelist extraction printed provider baseUrls but **no model field
  anywhere**. The gateway relies on runtime defaults — so this pre-registration names the
  model explicitly from the live public catalog (S1).
- **F-4 (wiring drift).** Config wires 36 provider entries (agentrouter ×3, apinex ×2,
  openrouter ×11, cline ×10, opencode ×10 — printed in-session); the .env names GROQ ×9,
  INFERX ×8, APINEX ×3, ORCAROUTER ×1, OPENAI_API_KEY ×1 — several key families have **no
  provider entry**. Fuel exists by count that the gateway config cannot route by name.
- **F-5 (concurrency doc absent).** `research/concurrency.md` does not exist on disk
  (`test` → False, printed in-session). The objective's premise that it exists is stale;
  it was **not relied upon** for anything in this package.
- **F-6 (pointer does not name this round).** RUN/STATE.md's pointer says "next_round: none
  (SERIES 2 COMPLETE)"; it names no G-A round. Declared in the first reply: this is a fresh
  lane, not a silent re-run of a completed round.
- **F-7 (numeric prefix collision).** The objective mandates the exact filename
  `proposals/pr-011-smoke-call-prereg.md`; `proposals/pr-011-regency.md` already exists.
  Two pr-011 files now coexist. Renumbering doctrine is not this lane's call; the collision
  is recorded, unresolved, for the Owner.
- **F-8 (scope honesty).** This pre-registration smokes the FUEL POOL (keys → provider →
  tokens), not the running gateway process (idle; see S1 finding 4). If the Owner's intent
  for "smoke call on the OpenClaw gateway" is process-level, this file under-prices that
  intent and a companion pre-registration would be needed.

## SOURCES (file:line + in-session commands + fetches)

- VERSION.md:8 (v0.00001 line), VERSION.md:11 (v0.001 line), VERSION.md:23 (Owner moves version)
- ZERO-READINESS.md:16-18 (section B verbatim, opening fact — text current, count stale per F-1)
- RATIFICATION-BATCH-001.md:17-18 (P3 blank), :21 (TEXT-UNTIL-THEN), :23-25 (P5 HOLD), :27-29 (P6 NOT YET)
- RULES.md:17-18 (budget), :25 (R6 gate ownership)
- AGENTS.md:36-37 (Owner-by-right), :47-54 (BOOT GATE), :70-75 (runtime/doctrine separation)
- FOUNDATIONAL-BRIEF.md:15-16, :51 (OpenClaw idle · 38 keys untested · smoke pending)
- RUN/STATE.md:4-7, :11 (SERIES 2 closed — F-6)
- In-session commands: `grep -cE '^[A-Za-z_][A-Za-z0-9_]*=' ~/.openclaw/.env` → 57;
  variable-name-only listing (names, never values); whitelist extraction of
  `~/.openclaw/openclaw.json` (non-secret fields only); python3 cost block (all figures
  above); `ls tools/`; the three exited-2 script attempts.
- Fetches (HTTP 200, in-session): `https://docs.openclaw.ai/` (product docs: config path,
  127.0.0.1:18789 Control UI default); `https://openrouter.ai/api/v1/models` (live catalog:
  model ids, pricing, limits).

---

## PRE-REGISTERED OBITUARY — OUTCOME (ARC Omega-5)

- **verdict:** survived. The package names a PASS criterion (S2) a stranger applies with two
  commands and zero questions to the author.
- **lesson:** recorded. The binding constraint was never the call — it was that the
  doctrine's fuel count had drifted (38 → 57, F-1), the gateway pins no model (F-3), and
  several key families have no route in config (F-4). A $0.00 smoke call still had to name
  a model, and naming it honestly forced a live-catalog citation instead of a runtime read.
- **burial:** not needed; the file landed complete. Had the premise died, this section and
  a filled failure section would remain on disk. Nothing is deleted.
- **heir:** the Owner's one typed line — `P5: AUTHORIZED` — now a priced decision: one
  call, $0.00 primary / $0.01 ceiling, two-command stranger verification, one recorded
  outcome of four kinds (PASS / F-* / N-* / new-prereg).
- **ledger:** CONTEXT.md decision-log tail, entry appended this session.
