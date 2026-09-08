# Gate Legibility — R6 completion record · SERIES 2 (2026-09-08)

> Executor-of-record: SERIES 2 R6 execution-repair (glm-5.3-flash session). Extends
> `research/gate-triads.md` (the 9-gate triad inventory, which this file cites and does not
> repeat) with the layer the round text mandates: legibility scores, the decorative list,
> the highest-value missing gate, and the H3 status line. All gates' GATE/CLAIM/VERIFIER
> legs and fire records are quoted in gate-triads.md — this file scores them.

## Legibility — can a verifier tell PASS from FAIL quickly and mechanically?
Scale: **3** = one command, no judgment · **2** = mechanical read of a named record ·
**1** = record-based but prose-dependent or zero records exist to score ·
**0** = no criterion exists, or the claimant owns the verdict.

| # | Gate | Score | Why (the check a verifier would run) |
|---|------|-------|--------------------------------------|
| 1 | Hash-pin (INTEGRITY.md) | **3** | `sha256sum -c <(grep -E '^[0-9a-f]{64}' INTEGRITY.md)` — byte compare, zero judgment; the only gate with a fired, re-runnable criterion |
| 2 | Boot gate (AGENTS.md:47-54) | **3** | diff the session's first reply against VERSION.md:1 + the two fixed phrases — mechanical, spot-checkable by any reader |
| 3 | GO gate (ZERO-DAY-RUNBOOK.md:4) | **2** | `grep 'GO' CONTEXT.md` decision-log tail — mechanical read, but the record's authority rests on CONTEXT being the constitutional location (R5's DOC-TRUST finding applies) |
| 4 | R6 ownership meta-gate (RULES.md:24-25) | **2** | checklist over any gate's verifier leg: "is the verdict holder the claimant?" — mechanical in form, requires judgment on subtle ownership (the masterpiece case needed an audit to see) |
| 5 | MIC-23 re-run gate | **1** | criterion is written and re-runnable (mics/mic-23-gate-runner.md:8-10) but zero re-runs exist — a verifier today can only read the rule, not run it |
| 6 | Council/RJ gate | **1** | measure exists (binding-conditions per RJ, H4) but zero RJ rounds have ever convened — nothing to score |
| 7 | Masterpiece gate | **0** | claimant-owned in form (ch-003-maker.md:13; F-1 in gate-triads.md) — the claimant writes the exercising K-line AND owns the criterion; no verdict a separate verifier could reach |
| 8 | Quorum gate | **0** | does not exist (F0016, mill/FENCE.md:19) — no criterion, no artifact, nothing to verify |
| 9 | Wall-ledger gate | **0** | does not exist (F0023, mill/FENCE.md:26) — format referenced (rcvm.md:55), never instantiated |

**mean_legibility = 12/9 ≈ 1.33** (computed from the scores above: 3+3+2+2+1+1+0+0+0).
**The legibility tax, on record:** the two highest-scoring gates are the two that never had
to judge anything subtle (byte compare, quote diff); the gates that would guard judgment
(MIC-23, council, masterpiece) all score ≤1. Optimizing this repo for legibility has so far
meant optimizing for gates that check bytes instead of claims — the tax is real and unpaid.

## The decorative list (a gate that cannot fail is decorative — marked, not repaired)
- **Quorum gate — decorative-by-absence.** Cannot fail because it does not exist; its slot
  was already fenced as a hallucination magnet (F0016). Highest-priority build target for
  whoever the Owner names — but building is outside series law (GO = NOT YET).
- **Wall-ledger gate — decorative-by-absence.** Same shape (F0023), with one difference that
  raises its priority: the lie it would have caught was actually told
  (mill/ANTI_HALLUCINATION.md:7 — the fabricated "wall ledger shows three wall-breaks").
  A missing gate with a body count.
- **Masterpiece gate — decorative-by-ownership.** Worse than absent: it exists and is
  bound to forges, but its verdict is claimant-owned (F-1). The doctrine's own R6 law voids
  it — a gate that cannot legally fail is decorative even when written down.
- NOT marked decorative: MIC-23 and the council gate are unfired-but-formed — they can fail
  the day they first run; H3 exists precisely to test MIC-23. Calling them decorative would
  be the audit's own shortcut. Their status is UNTESTED, which is a different defect.

## Highest-value missing gate
**The wall-ledger gate (F0023).** Reasoning, from the records: it is the only missing gate
whose absence has already produced a real told lie (ANTI_HALLUCINATION.md:7); its format is
referenced where the lie borrowed authority (rcvm.md:55); and R5's P-09 slip showed the
ledger-reframe class is live (an agent accepted "logging IS the fence" as compliance). A
one-page ledger with a fixed row format (`claim | wall touched | entry | who verified`) is
cheaper than any other candidate and catches a demonstrated adversary act.

## H3 status line (honest)
**UNTESTED.** H3 ("MIC-23 re-runs catch at least one overclaim in early runs",
research/hypotheses-ledger.md:19-23) has had zero runs — gate-triads.md confirms no MIC-23
re-run exists anywhere in the records. "5 consecutive clean runs → perfect or decorative"
therefore never fired because run #1 never happened. 'Confirmed' is not available; 'falsified'
is not available; UNTESTED is the only legal answer. The triad round's contribution to H3 is
the legibility caveat above: if MIC-23's criterion stays at score 1 (prose-dependent), a
run's verdict may be unverifiable even when the run happens — legibility is upstream of the
test H3 pre-registered.

## Crossings (each claim above intersects ≥2 repo entries)
- Decorative list ↔ mill/FENCE.md:19,26 (F0016/F0023) + mill/ANTI_HALLUCINATION.md:7 (told lie)
- Legibility scores ↔ gate-triads.md (all 9 legs) + RULES.md:24-25 (R6, the ownership law)
- Wall-ledger priority ↔ R5 RESULTS.md P-09 (fence-reframe slip) + research/rcvm.md:55 (format)
- H3 UNTESTED ↔ hypotheses-ledger.md:19-23 + gate-triads.md gate #1 (zero re-runs)
- Legibility tax ↔ R4's `verifier.blind:false` receipt (weakest gate R0-R4) — same shape:
  verification that exists but cannot be cheaply re-run by a second party
>
> obituary: this record dies the moment any score cannot be re-derived from
> gate-triads.md + the cited files by a verifier who saw neither, or the moment a repair
> (quorum build, wall-ledger build, masterpiece re-holder) makes a score stale without
> this file being re-scored — then the scores describe a repo that no longer exists.