# PAIN CENSUS — 2026-10-20 (lead; the board's scout task did not land, so the lead measured it)

> Paper-only · research lane · not doctrine. This file exists to make ONE decision auditable:
> the library's second card (IDEA-002) had to come from a different angle/arena than card #1
> (the F7 diversity floor, `anatomy-card-form.md`), and the choice had to be made from counts,
> not from taste.

## 0) Method (reproducible — every number below is a command you can re-run)

```
cd /home/fares/Projects/notrick
grep -rilE "<token>" CONTEXT.md LOG.md research/ proposals/ | wc -l
```

The unit counted is **files that mention the pain class at least once** (a proxy for "how many
artifacts carry this disease"), not raw instances. It is a proxy and is labelled as one: it
over-counts a file that repeats one pain ten times and under-counts a file that suffers it
silently. A better instance-level count would need a per-class parser; this is the cheap,
honest version, and the exact command is above so the number can be re-derived or challenged.

## 1) The census

| # | Pain class | Token | Files mentioning (2026-10-21 00:4x) | Verdict |
|---|---|---|---|---|
| 1 | unlogged change / violation discipline | `unlogged\|violation` | **65** | the dominant recurring pain |
| 2 | duplication / ID collision | `duplicat\|collision` | 42 | the desk's own named disease |
| 3 | stale surfaces / rot | `stale\|rot\b` | 39 | rot everywhere, no single owner |
| 4 | expiry / missed deadline | `expir\|timeout\|deadline` | 33 | pr-021 is 15d past its own limit (card §9) |
| 5 | false claim / overclaim | `false claim\|overclaim\|noble lie\|unverified` | 31 | the honesty disease |
| 6 | citation drift | `drift` | 30 | IDEA-001's own pain (now mechanized: `tools/citecheck.sh`) |

Raw command (one line per row; the `research/` and `proposals/` scope is included for rows 1–6):
```
grep -rilE "unlogged|violation" CONTEXT.md LOG.md research/ proposals/ | wc -l   # 65
grep -rilE "duplicat|collision" CONTEXT.md LOG.md research/ proposals/ | wc -l   # 42
grep -rilE "stale|rot\b"       CONTEXT.md LOG.md research/ proposals/ | wc -l   # 39
grep -rilE "expir|timeout|deadline" CONTEXT.md LOG.md research/ proposals/ | wc -l # 33
grep -rilE "false claim|overclaim|noble lie|unverified" CONTEXT.md LOG.md research/ proposals/ | wc -l # 31
grep -rilE "drift"             CONTEXT.md LOG.md research/ proposals/ | wc -l   # 30
```

## 2) The decision this census must support (and the trap inside it)

**The trap:** the highest-count pain (unlogged change / violation discipline, 65 files) is a
*checking* pain. Card #1 (IDEA-001) is already a **checking** card. Choosing the top-count pain
for card #2 would produce two cards from the same angle — the library's own F7 floor
(`anatomy-card-form.md`: every round yields ≥2 cards from ≥2 different angles or arenas) would
be violated by the very act of following the count. **A census is evidence, not an order.**

**The rule used (stated before the choice, so it cannot be a rationalization):**
1. The pain must be mechanically decidable (a read-only command can say "fixed / not fixed").
2. The fix must have a money path — an arena from D-13 (`anatomy-bridge-arena-candidates.md`),
   not only an internal-hygiene lever.
3. The angle must differ from card #1's (**checking**).
4. Tie-break: higher pain-instance count wins.

**Result — the 2 accepted, with killers:**

| Rank | Card | Pain | Angle | Arena | Mechanical evaluator? | Money path | Killer (what refutes the choice) |
|---|---|---|---|---|---|---|---|
| 1 | **IDEA-002 — the transfer machine** (anatomy card → agent preset compiler) | the library's cards cannot be *delivered*: the form defines the fields, nothing in the tree defines how a card becomes a runnable agent | **authoring** | **5 — agent templates/plugins** (D-13 row 5) | yes: compile a card → a preset; the compile is decidable (exit code + artifact) | yes — arena 5 is the arena the Owner can sell, and the deliverable is the Owner's own stated vision (a machine that carries human anatomy into agents) | the compile is judged only by its own author, and a preset that nobody installs is a document, not a machine |
| 2 | **IDEA-003 (draft) — content-anchor deriver** | the class `citecheck.sh` structurally cannot see: it checks a citation's *existence*, not its *content* | checking (a third island) | 1 | yes, but only after IDEA-001 is re-specced | weak (internal) | a card that cannot be born (no frozen evaluator) stays a draft — it must not occupy a born slot |

**Rejected, with reasons (the anti-taste record):**
- *violation-discipline card* (top count, 65) — REJECTED as card #2: same angle as card #1
  (checking), and it is a **process** pain better served by the ledger + the R6 verification
  step than by a new card. It becomes a **lesson→law line in LOG.md**, not a card.
- *boot-tax card* (head vs log: CONTEXT is now 88,924 B, of which the decision log is 98%) —
  REJECTED as card #2: already diagnosed with a split measurement (the card's own BOOT TAX line
  now separates head 1,392 B from the log), and the cure is a decision about CONTEXT's shape
  (Owner-level), not a card.
- *stale-lane onboarding card* (39 files) — REJECTED: touches foreign lanes; the lane trees are
  not this lane's to write, and the fix is an entry-contract sweep, not a measurable card.
- *expiry-enforcement card* (33 files; pr-021 is 15d past its own limit) — REJECTED as a card:
  the instrument already exists (the card's PAST OWN EXPIRY line) and the remaining work is an
  **Owner ruling on pr-021**, not a new card. Filed as a named decision, not a card.

## 3) What the census does NOT prove (honesty limits)
- The counts are **file-mentions**, not instances; the ranking could invert at instance level.
- "Money path" is a **judgement against the D-13 arena table**, not a receipt — arena 5 has no
  receipt yet, and until a card produces one it stays a hypothesis, not a proven path.
- No count here says a card is *worth building*; only that it is *decidable* and *diversified*.
- The 40-day gap means the counts describe a tree that is still moving tonight (14 uncommitted
  paths at 00:33). Re-run the commands to re-derive.

## 4) Verdict
The library's second card (**IDEA-002, arena 5, angle "authoring"**) satisfies the F7 floor
against card #1 (arena 1, angle "checking"): different arena AND different angle. Its angle was
chosen by rule, and the strongest count in the census was deliberately **not** used as the
selector — because the selector was the diversity floor, and the count is only evidence about
which pains are real.

**Forcing cause:** the Owner's directive to re-open this session's chain and work it to
completion (2026-10-20). **Verification:** every number above carries its command; re-run them.
**Walls:** paper only — no execution, no runtime, no fuel, no doctrine write, no Owner-by-right
field, version untouched (v0.0001).
