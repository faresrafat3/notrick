# BREAKER — G-A PREREG + G-B OBSERVE + THE EMPTY RUN/SMOKE (round-14 sweep)
> breaker lane · guest-breaker · read+attack, propose via BRK · wall: no execution, no
> builder files, no Owner fields.
> READ-ONLY; every claim cold re-derived by command this session. Targets: the new
> dossiers machinery (RUN/dossiers/dsh..observe + dsh..prereg), the smoke-call
> pre-registration (proposals/pr-011-smoke-call-prereg.md), and the unlogged RUN/smoke/
> directory.

---

## 1. NEW MACHINERY — two fresh lanes with dossier discipline (first audit)

### 1a. G-A dsh..prereg (the smoke-call pre-registration lane)
- Deliverable: proposals/pr-011-smoke-call-prereg.md (327 lines, mtime 09-09 00:42).
- Its dossier (RUN/dossiers/dsh..prereg/pre-registration.md) PRE-REGISTERS its own
  obituary BEFORE the deliverable existed, with the mtime order as witness: verdict
  ("dies if the package cannot name a PASS criterion a stranger could apply without
  asking the author a single question"), lesson-always, burial (nothing deleted), heir
  (the Owner's P5 line — "this file makes it cheap to type"), ledger (CONTEXT tail).
  Receipt status: PENDING.
- The prereg's own quality (spot-read):
  - S1: ONE literal command, priced; model chosen from the live OpenRouter catalog
    (fetched in-session, HTTP 200 printed).
  - S2: PASS iff 4 conditions (HTTP 200, JSON parses, content == the 9-word token
    exactly, total_tokens > 0 — "no zero-usage mock") + verbatim stranger commands.
  - S3/S4: named FAIL criteria and a NULL criterion ("the test told us nothing").
  - S5: every cost number command-printed; hard upper bound (tokens ≤ chars) with the
    heuristic shown "for illustration only"; tiktoken-absence disclosed.
  - S9: ONCE-ONLY guard — "The answer to a failure is a recorded failure — not a
    second call, not a key-rotation sweep, not a model swap, not a tweak-and-retry
    loop. A second call needs a NEW pre-registration." (RULES.md:17-18 quoted.)
  - W3/W9/S10 walls: Owner fields empty, every count command-printed, secrets by COUNT
    only ("referenced by name only").
- Breaker reading: this is the R-1..R-5/SRS family executed to the letter by a fresh
  lane — pre-registration with pre-registered death, priced decision, no execution.
  The strongest wall-respect artifact since the regency doctrine. Credited.

### 1b. G-B dsh..observe (the concurrency census lane)
- Deliverable: RUN/SPLITS.md — "concurrency split census" (SPnn rows, OPEN/CLOSED/
  IMPOSSIBLE dispositions). SP01 records the pr-011 proposal-ID split (my Q-29 family,
  first row CLOSED by the SCRIVENER catch).
- Its honesty note: the brief referenced SP01..SP06 rows that are NOT on this tree
  ("A repo-wide grep ... returned zero rows ... Nothing was renumbered; the census
  starts at SP01") and the executable test is UNAVAILABLE (tools absent) — degrade-
  never-halt invoked, manual inspection declared. A census that says where its own
  tooling is missing.
- Dossier: RUN/dossiers/dsh..observe/dossier.md — R1 row (00:34) with goal_armed, last
  tool, M1/M2 measures. Single row so far; format clean.

## 2. FINDING — the unlogged RUN/smoke/ directory (Q-32)

### 2a. The facts (all command-measured)
- RUN/smoke/ EXISTS, created 2026-09-09 **00:38** — empty (no pr-011-http.txt, no
  pr-011-response.json).
- The prereg file landed at 00:42 (4 minutes later). Its S1 command BEGINS with
  `mkdir -p RUN/smoke && ...`.
- No record of the mkdir exists anywhere: grep over LOG.md + research/harness-run/*.md
  for "RUN/smoke" = 0 hits. The dossier's R1 row says last_tool=write (the dossier
  itself), not shell.
- The prereg's own S9 declares the entire execution surface is ONE call, and its status
  block says "No smoke call was executed by this lane" — consistent with the empty dir.

### 2b. The two readings (and why it matters)
- (a) Preparation: a lane created the output directory while drafting the prereg — an
  unlogged write into the RUN/ namespace (the executor lane's territory) by a guest
  lane, with zero provenance. Small, but it is exactly the "disposition executed
  without a logged command" shape R001's own obituary names.
- (b) Abort: the mkdir ran as part of a trial S1 invocation that stopped before the
  curl — which would make it the FIRST execution attempt of the smoke command, prior
  to any P5 authorization, unlogged.
- Either way the wall held (no response artifacts, P5 still HOLD, VERSION gates
  unchanged, INTEGRITY sha 1711587b5aa79d6b unchanged) — but the ARTIFACT (an empty
  dir inside the run-lane's machinery, unlogged) is a provenance hole. → Q-32.
- Recommended settle: one LOG line naming who created RUN/smoke/ and why (preparation
  vs aborted attempt), or removal of the directory until the Owner prices P5.

## 3. r11-verifier.md REWRITTEN (in place) — the MISMATCH is substantive
- `git diff RUN/briefs/r11-verifier.md` shows the ORIGINAL R11 brief (5 deliverable
  lines) replaced by a "verifier B5 report (blind re-derivation from disk)" — a report
  wearing a brief's filename. Content-wise it is high quality: byte-exact fragment
  checks, DAG edges verified, topo order P1,P6,P3,P2,P4,P5,P7,P8 confirmed acyclic,
  and one hard MISMATCH honestly stated: finding-4's "UNVERIFIED for 6 of 8" is wrong
  by its own enumeration (4 unverified of 8, not 6).
- Two concerns: (a) briefs are inputs, reports are outputs — overwriting a brief with
  a report loses the original task statement (git preserves it, but the file's own
  history now lies by filename); (b) the MISMATCH is against an unnamed source note
  ("the note's own enumeration") — the note is not named in the visible lines.
- Not queued (RUN/ lane self-governs briefs; git history preserves the original), but
  recorded: filename-semantics erosion inside RUN/.

## 4. Owner queue — Q-29 evidence pattern extends (mandate-carried number); Q-32 added
| # | Item | Source | Decision type |
|---|---|---|---|
| Q-29 (extended, 4th event) | The P-011 number collision was this time MANDATED by the objective text itself ("The objective mandates the exact filename pr-011-smoke-call-prereg.md") — the register hole now propagates into objective authorship; two pr-011 files coexist by design-record, unresolved, filed F-7 for the Owner | proposals/pr-011-smoke-call-prereg.md:286-288 · proposals/pr-011-regency.md · LOG.md:282 | ADD-NUMBERING-REGISTER / RULE |
| Q-32 | RUN/smoke/ exists (00:38), empty, unlogged — no record of who created it or why; first unlogged artifact inside the RUN/ namespace this series | RUN/smoke/ (mtime 00:38) · proposals/pr-011-smoke-call-prereg.md S1/S9 · grep RUN/smoke in LOG + harness-run = 0 | LOG-PROVENANCE / REMOVE-DIR / RULE |

## 5. Summary (cold-stranger hat)
- Two new lanes (G-A prereg, G-B observe) arrived with the best discipline yet:
  pre-registered obituaries with mtime witnesses, once-only execution guards, cost by
  command, degrade-never-halt census honesty. The wall held (P5 HOLD, sha unchanged).
- Two real residue items: Q-32 (unlogged empty RUN/smoke/ — provenance hole inside the
  run machinery) and Q-29's fourth event (the collision is now mandate-carried, which
  no lane-side discipline can prevent — only a register or an Owner-picked number in
  objectives).
- r11-verifier.md filename erosion recorded (report wearing a brief's name).
- Zero violations appended by me; zero builder/doctrine writes; queue at 33 rows
  (Q-32 added, Q-29 extended).

---

*Round-14 goal sweep complete. Breaker namespace only: this file +
research/breaker-log.md.*