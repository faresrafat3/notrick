# PROPOSAL — PR-008: THE VEILED EYE (two-hats-one-head fix + paper commitment)

> date: 2026-09-06 · author: guest (opencode) · status: proposed-in-file · parents: PR-005/006/007 · touches: NONE (procedure only)

## 0. The hole in my own Crossing (self-filed, Seat II standing)

PR-007 demands Hand ≠ Eye per move (`RULES.md:24-25 R6`, `R9`). In Phase A both hats are worn by one head — Cline-as-Hand executes, Cline-as-Eye witnesses. Same weights, same context window, same incentives. A witness that shares the actor's memory is not a second seat; it is a mirror. Under `RULES.md:37-41 R9` a judgment in complete isolation is a private opinion and cannot be cited — two hats on one head risks exactly that: cited plurality, actual solitude. This annex fixes my own protocol or kills it.

## 1. Methodology: the Veiled Eye (novel, paper-wearable)

The Eye turn is veiled: it receives ONLY the record under review plus the criterion — never the working memory, never the actor's narration, never the chat above the claim message. Procedure:

1. Hand commits: claim message + `receipt-primary {sha256 / bytes / lines / timestamp}`. Commitment BEFORE any sampler index exists in the record.
2. A DIFFERENT turn (different session context where possible, else a fenced turn that quotes only record lines) acts as Eye: it may cite only lines it re-reads itself — never Hand's summary of them.
3. Eye reveals sampler index, re-runs ONE line, quotes output verbatim, signs `EYE: {hat-id} · veiled: {record-lines-only | UNVEILED-flag}`.
4. `UNVEILED-flag`: if the Eye demonstrably saw working memory beyond the record (quotes uncommitted reasoning, references unlogged turns), the move degrades to single-handed — counts as unwitnessed per R9, no matter how honest.

Why this breaks the boundary instead of polishing it: current doctrine separates entities (Maker/Council/CoS/Verifier); the veil separates INFORMATION within one entity. Same head, different eyes — each Eye sees only what the record shows any stranger. Stranger-test: could an auditor arriving cold reproduce the Eye's verdict from the record alone? Yes → witnessed. No → theater.

## 2. Poor-man's commitment (demonstrated for real below — eaten cooking)

Phase A has no crypto service and needs none. `sha256sum` + byte count + message order IS the commitment scheme:

- BINDING: changing one byte after commitment changes the hash; the Eye checks `sha256sum` matches before sampling. Cost: seconds.
- HIDING (weak, admitted): hashes hide nothing about short predictable texts — irrelevant here, because secrecy is not the goal; ORDER is. Commit-then-reveal defeats A1 (post-hoc sampler gaming) even with zero secrecy, since the sampler index did not exist when the bytes were frozen.
- NON-REPUDIATION (paper): hashes + byte counts below are quoted into THIS proposal file; any later edit to PR-001…007 without a new receipt line is detectable by anyone re-running one command.

## 3. Live receipts for PR-001…PR-007 (computed 2026-09-06, read-only, no runtime touched)

```
f65912ff7194bf7948ebec772fb62880408d08009296b8ed2ff47d6c6e3d5f34  pr-001  1852 bytes
07fc84acb09462d3c2d68e864098e4457673ca2f44a4641b72aeec5aa9f7d9a8  pr-002  1860 bytes
622cf8f3478b0f5a1aef7144b0b5769ee3b6f54a3142f8fe8e6951f00b89eeef  pr-003  2135 bytes
b81582d49b3a9299d7584340c79944b9a9df3b32acf8c24a057ed41a271ea1a6  pr-004  1623 bytes
b0f61942438e2b9bbda035a052af3924e8a134507d059c93bb3b9426595251d2  pr-005  3344 bytes
ba681738dfe0b7d72f07e46425d67cdfa52734329661adcb4ea51034887dea47  pr-006  5586 bytes
c826a6153c89f09973a649c2167bb6258bdc580213285cb370ec04c646da3d00  pr-007  7317 bytes
```

Sampler demo (verifier's choice, AFTER commitment — I choose line-count parity): Eye re-runs `wc -l` on the smallest file (pr-004, 28 lines per earlier `wc`). Any future edit changing these bytes without a superseding receipt line = `MISMATCH` under PR-006 §4-A1. This paragraph is itself a receipt-primary for the whole inbox: exit 0, 7 files, total 23761 bytes incl. README.

## 4. Hat-separation criteria (checkable, no new ontology)

A turn qualifies as Eye iff ALL hold: (a) its first quoted evidence is a record line it names with file + line; (b) it never asserts what Hand "intended" — only what the record shows (`templates/RJ.md:15` Seat IV grades distance from intent via the record, not via mind-reading); (c) its sampler index is unpredictable from Hand's message (different timestamp, no shared draft); (d) it signs the veil status explicitly. Fail any → `UNVEILED`, move unwitnessed. No new charter, no new MIC — a wearing discipline for Phase A, revisable by evidence under `D-06` (`research/decision-review.md:46-48`: if manual honoring misses violations, Phase B is demanded).

## 5. Falsifier + H8 candidate (pre-registered, untested)

`H8`: veiled-Eye moves catch at least as many planted process violations (same-hat verification, missing receipt, uncommitted sampler) as unveiled review across the first 5 checks, at no more than 2× the honoring-cost. Kill: veiled review costs >2× for zero additional catches across quorum → the veil is ritual; revert to plain second-hat and record the killing check. Landing criterion: first task run under P-4 with both hats worn by Cline.

## 6. Owner actions (three independent lines)

1. Adopt the veil as Phase-A wearing discipline (behavior only, no code, no file edits to doctrine).
2. Accept §3 hashes as the inbox baseline — future edits to PR-001…007 require a superseding receipt line or stand as `MISMATCH`.
3. Register `H8` (registration only).
