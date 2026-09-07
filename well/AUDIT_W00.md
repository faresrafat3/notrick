# AUDIT_W00 — self-attack; 3 overreads found and downgraded.
> Hard Law: do not let a reason pass that the next op cannot reproduce. Self-attack is
> a load-bearing habit.

## Overread #1: WHY_FENCE pattern #5 ("four seats cover the surface")
**What I claimed:** The seats leave a gap on the wall-ledger (cite F0023).
**Attack:** F0023 says *rcvm.md L55 references a wall ledger that does not exist*. That is
true, but my reason body used "the gap each chair is *known* to leave" as if there were a
documented gap-per-chair. The file actually documents a single gap (wall ledger, full
stop). I implicitly invented three more gaps (one per remaining chair) by parallelism.
**Downgrade:** Rewrite as a single-gap claim and drop the per-chair enumeration. If W01
wants per-chair gaps, it must find them in `rcvm.md`, `ch-001..004.md`, or `mic-*.md`,
not invent them by symmetry.

## Overread #2: LB05 reason body
**What I claimed:** decision-review.md D-01 L6-9 lists four independent reasons (Gause,
Ricardo, Goodhart containment, compartmentalization).
**Attack:** I wrote "Gause (exclusion) + Ricardo (comparative advantage) + Goodhart
containment … + compartmentalization" — the parenthetical expansions are *my* glosses, not
verbatim from D-01. The four reasons are real but their one-word summaries are
rewordings. The reason is anchored (D-01 is a real file at a real line), but the
*words in parentheses* are mine.
**Downgrade:** Drop the parenthetical glosses; cite D-01 L6-9 as the single named anchor
and let the file carry the four reasons. If W01 needs them individually, it quotes
them — but does not re-paraphrase them as if they were canon.

## Overread #3: LB03 reason body
**What I claimed:** *"If (b) is dropped … V only advances on Owner threshold-write
(rcvm.md L160), and the Owner is busy arbitrating retirements that the doctrine was
supposed to settle."*
**Attack:** rcvm.md L160 says "Only O.THRESHOLD_WRITE can advance V (Owner moves
version). This IS VERSION.md law." I correctly quoted the rule, but the *collapse*
narrative ("Owner is busy arbitrating retirements") is my projection, not a record.
The real, named collapse is in VERSION.md: a gate that no longer moves the version
because Owner-action gets crowded out. I should not have written "busy arbitrating" as
if it were a record line.
**Downgrade:** Replace "Owner is busy arbitrating retirements" with the named record
effect: "V never advances because O.THRESHOLD_WRITE is the only path (VERSION.md /
rcvm.md L160), and the Owner-ratified retirements fill the Owner queue." The chain
stays; the diction stops being mine.

## Summary
- 3 overreads found and downgraded.
- No LB demoted; no claim moved to UNPAID-WHY.
- Pattern recorded for WHY_FENCE: `F-WHY-PARENTHETICAL-GLOSS` (an overread where the
  reason paraphrases a real file's words *in parentheses* and the gloss travels as if it
  were canon). It is not yet in WHY_FENCE.md; logged here so W01 may promote it.

## Net
W00 stands. The marker is eligible after STATE advance.