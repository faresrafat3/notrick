# X-07 Injection Redteam — R5 · SERIES 2 (2026-09-08)

Executor: S2-20260908-01 goal-loop · claim logged before work · walls: no execution/runtime/fuel,
no doctrine writes, no Owner-by-right fields · every probe below is a command that ran this
session; every verdict quotes its hit.

## Scope decision — beyond the prior passes
Two passes preceded this one, and both shared one weakness: they only scanned `research/*.md`
+ `LOG.md` with imperative-voice greps.
- `research/hardening-pass.md:87-105` (OP 3, DOC-TRUST P-001 scan): 7 research files, 2 hits,
  both judged legitimate (a subagent brief; procedural test descriptions).
- `research/breaker-stranger.md:108-112`: modal-verb grep, 4 weak hits, all quotes of
  doctrine inside research; "0 confirmed DOC-TRUST violations."
Neither pass touched: the boot surface (what a fresh agent reads first), the templates, the
foreign-lane documents, unicode steganography, markdown fence integrity, or the authority
provenance of the law files themselves. This redteam adds those six probes.

## Probe battery and results

### Probe A — unicode steganography / bidi control sweep (whole tree)
- Command: `grep -rlP '[\x{200B}-\x{200D}\x{FEFF}\x{202A}-\x{202E}\x{2060}-\x{2064}\x{2066}-\x{2069}]' --include='*.md' .` (excluding `.git`).
- Result: **0 files carry zero-width, BOM, bidi-override, or invisible-joiner characters.**
- Verdict: CLEAN. No hidden instruction channel exists at the byte level.

### Probe B — markdown fence integrity (research/ + proposals/ + well/ + RUN/)
- Command: per file `grep -c '^```'`, flag odd counts (an unterminated fence turns quoted
  data into live body text — the cheapest injection vector in a quotes-heavy repo).
- Result: **0 odd-fence files.**
- Verdict: CLEAN. Every fenced quote closes; no data can masquerade as document body.

### Probe C — override-verb sweep on the boot surface (CONTEXT.md, AGENTS.md,
ONBOARDING.md, RULES.md, STATE.md, VERSION.md, templates/*)
- Command: `grep -inE "(ignore|bypass|override|skip|disregard|تجاهل|بروحّ|استثن).{0,45}(wall|rule|R[0-9]+|budget|prohibition|Owner|الجدار|القاعدة|المالك|المنع)" <boot files>`.
- Result: **1 hit — CONTEXT.md:418**: `github-publish task · scope: public mirror of
  ~/Projects/notrick/ · override R12 once ·`.
- Classification (P-001 rules): the line sits inside the decision-log entry `2026-09-07 ·
  DECISION · Owner grants execution role … override R12 once · Owner assumes responsibility`
  (CONTEXT.md:417-419) — the decision-log IS the legal field for Owner rulings, and the
  override is written, attributed, and responsibility-assigned (R8's own requirement:
  "overturned only by the Owner IN WRITING, never silently", RULES.md:35).
- Verdict: **LAWFUL** — an Owner moment in its legal field, not an injection. Notably it is
  the ONLY override-imperative on the entire boot surface: the boot surface carries exactly
  one written delegation and zero silent ones.

### Probe D — Owner-voice forgery sweep (research/ + well/ + proposals/ + RUN/ + mics/)
- Command: `grep -rinE "(the Owner (told|asked|said|wants)|Owner: do|المالك (طلب|قال|أمر))" <lanes>` (filtered to exclude audit files that quote attacks by design).
- Result: **2 hits — well/REASON_LAW.md:30 and :59** — both are the well's OWN anti-forgery
  taxonomy (the X-AUTHORITY definition and the F-AUTHORITY-OWNER fake-example) quoting the
  forgery pattern in order to block it.
- Verdict: CLEAN — the only "Owner said" strings in the write lanes are the traps that name
  the forgery, not forgeries themselves.

### Probe E — foreign-lane document voice (research/regency-doctrine.md, P17's proposal)
- Command: `grep -cE "^(must|shall|never|always|يجب)" research/regency-doctrine.md` → **0**;
  no imperative lines, no numbered "do this" lists aimed at agents.
- Verdict: CLEAN. The foreign lane's document stays DATA (a proposal), exactly what P-001(b)
  requires a non-field document to be. (It was filed as proposal pr-011 — proposal status
  matches its voice.)

### Probe F — authority provenance of the law files (the structural finding)
- Observation: `well/REASON_LAW.md:2` declares: `Source of authority: the user's REASON
  TAXONOMY block in the W00 directive.`
- Command: `grep -rn "REASON TAXONOMY" --include='*.md' .` → **3 hits, all self-references**
  (well/REASON_LAW.md:2, well/STATE.md:10, RUN/briefs/r0-lawyer.md:20). The W00 directive —
  the claimed source of the well's entire law — **exists nowhere on disk.**
- Classification: not an injection (no hostile imperative; the taxonomy content itself is
  coherent and enforced), but an **unanchored authority surface**: the well's prohibition
  law claims an authority no later reader can verify, which is the same trust shape X-07
  attacks (obey because a document asserts). Under the repo's own law (T-ANCHOR: point to a
  file/quote, or carry NEW + justification; AGENTS.md: "verifiable from the records on
  disk"), REASON_LAW.md's authority is currently authority-by-assertion.
- Verdict: **FINDING — DOC-TRUST debt W-1.** Cheapest repair (Owner-gated): paste the W00
  REASON TAXONOMY block verbatim into a ratified location (or re-issue it as an Owner
  moment), then cite that artifact from REASON_LAW.md. Until then the well's law rests on a
  session memory, not a record. Filed here and in the R5 receipt; the well keeps operating
  (its tests are mechanical and the debts it produced are real), but its AUTHORITY PROVENANCE
  is formally open.

## X-07 disposition after this redteam
- The wound stays OPEN at the doctrine level: P-001 (the DOC-TRUST rule) is still an
  unratified R13 candidate — adversarial-audit.md:244; no R13 exists in RULES.md, and RULES
  is closed to me.
- Severity pressure DROPPED from the audit's assumed posture: six probes across the whole
  record surface (boot files, templates, write lanes, foreign lanes, byte level, fence
  level) found zero hostile injections and exactly one imperative surface — the Owner's own
  signed decision log. The pre-hoc council wall (RJ reviews the page before it binds) plus
  the post-hoc pins (INTEGRITY.md, with V-003 demonstrating the pins actually fire) have so
  far held.
- Residual exposure stated honestly: this redteam is a point-in-time scan of a live tree;
  it cannot bind future writers. The durable mitigation remains ratifying P-001, which is
  Owner-gated.

## Net
- 5 CLEAN probes · 1 LAWFUL hit (Owner's own) · 1 structural finding (W-1, off-disk
  authority of the well's law) · 0 hostile injections.
- The redteam's honest yield is negative-and-useful: the record surface is clean TODAY, and
  the one real gap is not an attacker — it is a missing provenance anchor.
