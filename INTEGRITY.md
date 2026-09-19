# INTEGRITY — doctrine hash pins (L5 of the supervision stack)
> re-pinned 2026-09-19 (pr-024 adoption moment — Owner line 2026-09-19, verbatim: "اعتمد
> pr-024: A C D — وانقل الإصدار إلى v0.0001"): Parts A C D applied verbatim from
> proposals/pr-024-ergonomics-deep-package.md (Part B NOT adopted — the Owner's line names
> A C D) + the version moved v0.00001 → v0.0001 per VERSION.md (gate: charter signature
> landed 2026-09-06, RATIFICATION-BATCH-001.md:13-15). Re-pinned files this moment:
> ONBOARDING (Part C verifier-path edit) · ZERO-DAY-RUNBOOK (Part D three diffs) · VERSION
> (Owner version move). New Rules entry this moment: the citecheck gate — every
> approved-docs moment that edits a pinned file runs tools/citecheck.sh in the same logged
> moment (this moment is its first application). New Exemption: tools/citecheck.sh (same
> protection class as tools/audit.sh).
> re-pinned 2026-09-11 (second moment, same day): the ARTIFACT-LANGUAGE directive — Owner
> typed line (verbatim): "انا عايز كده اولا عشان معروفه الافضل لل llms او ال agents ان كل
> حاجه هناك تبقي بالانجليزي في المشروع الكلام او الدردشه معايا بس اللي فيها بالعربي عشان
> نسهل التواصل بينا وكل شغلك معلش علي المقاطعه" → codified as R15 (English-only artifacts,
> Arabic chat; historical records exempt — verbatim quotes like this one stay verbatim).
> Re-pinned files this moment: FOUNDATIONAL-BRIEF · RULES · templates/PROPOSAL · proposals/README.
> Earlier 2026-09-11 (first moment, same day): pr-022 + pr-023 A–F applied mechanically · Owner
> typed line 2026-09-11 (verbatim): "تمام موافق واتفق معاك  كلامك صحيح ابداء اعمل الهدف بتاعك
> واشتغل عليه" — scribed in the CONTEXT decision log (bootstrap rule honored). V-003 note:
> violations.md's pin had FAILED because V-003 was recorded INTO that file after the
> 2026-09-06 sweep; its hash was refreshed within this logged moment — the violation
> record itself remains (append-only). The header counter was corrected to the true count.
> Prior: re-pinned 2026-09-06 (post-charter-signature) · governing-chat approved-docs moment:
> "CHARTER BATCH SIGNED (P2)" + "POST-SIGNATURE SWEEP + RE-PIN" + "POST-SIGNATURE ARRIVALS
> LOGGED" — logged in CONTEXT.md decision log before this pin (bootstrap rule honored).
> Any doctrine file whose hash below mismatches on a re-check = TAMPERING or unlogged change.
> A mismatch is NEVER silently fixed: file it in violations.md verbatim, Owner rules.

## Verify (one command)
```
cd ~/Projects/notrick && sha256sum -c <(grep -E "^[0-9a-f]{64}" INTEGRITY.md)
```

## Rules
- Re-pin ONLY after an Owner approved-docs moment (logged in CONTEXT with its date).
- Re-pinning without a logged moment = a violation (the pin itself is doctrine).
- This file pins CONTENT, not legality: a hash match does not mean a change was approved.
- **CONTEXT.md is excluded from pinning by rule** (added 2026-09-06, governing chat): the
  decision log mutates with every logged moment; a pinned log self-verifies into staleness.
  Its integrity rides on append-only discipline + git history, not a frozen hash.
- This pin is AS-OF the sweep moment (~21:4x): the tree was LIVE during the signature turn
  (pr-007, pr-008, arc-protocol, rcvm all landed mid-turn). Any file changing after this
  sweep surfaces as a mismatch on the next check — attributable or not, it gets filed.
- Every approved-docs moment that edits a pinned file also runs tools/citecheck.sh in the
  same logged moment and files any new drift with the moment: citations into doctrine rot
  when doctrine moves (live case: research/harness-run/BOOT.md:21 cites AGENTS.md:74-77;
  the pr-022 edit left AGENTS.md at 75 lines — caught by the first sweep, 2026-09-11).

## Pinned hashes (sha256) — 44 files
```
498833c6625c224c27fc227807c6bb55ea09f7933f0de086c99b6aeebe1106e6  ./AGENTS.md
e7a01c71dfef3fae141fff38812736dab82558d103dc5e01ef48b0cfe77ea3db  ./charters/ch-001-prime.md
8bd514021432127c22426def9567c3d21e1e73009b13c64f7e1bdc21cfefa037  ./charters/ch-002-council.md
d73107dd8c6d4c3b5fa30f8ddddf26d31f1e5c77dcb277e9012324e3956d365b  ./charters/ch-003-maker.md
17bfce31caf7529e3207302ea9fdf622268d593b0ba77bb6985596bf79180a32  ./charters/ch-004-chief-of-staff.md
6ccab52206ee89a646c2d05b9f343b271fb7ab5fbfc84d2ca1b0553e5e25db42  ./FOUNDATIONAL-BRIEF.md
aa224614a4a4ab997ef5d958d80604bf7aae7dcd8fc25127f456ebf90a3373ec  ./mics/mic-07-budget-counter.md
428aea5c1ca52094770fd5008c1a733b8c43a1f8bd875afb197ea73deae5f25a  ./mics/mic-11-id-formatter.md
87d9dc1b9070c25dde019001c5acc85083c8da052b5eb02bc07694108a9f4bba  ./mics/mic-23-gate-runner.md
c1751f92aaf20ef6f3ab3a884be36c9f453e49826ee17c377312a9bb35249e5e  ./mics/mic-31-axis-tagger.md
400515658651e209567b74c0d0d853ba57c6d54ad33a436ecfc922f229b9a0b1  ./ONBOARDING.md
f65912ff7194bf7948ebec772fb62880408d08009296b8ed2ff47d6c6e3d5f34  ./proposals/pr-001-proposal-template.md
07fc84acb09462d3c2d68e864098e4457673ca2f44a4641b72aeec5aa9f7d9a8  ./proposals/pr-002-quorum-tiers.md
622cf8f3478b0f5a1aef7144b0b5769ee3b6f54a3142f8fe8e6951f00b89eeef  ./proposals/pr-003-measurers.md
b81582d49b3a9299d7584340c79944b9a9df3b32acf8c24a057ed41a271ea1a6  ./proposals/pr-004-paper-rj-quorum.md
b0f61942438e2b9bbda035a052af3924e8a134507d059c93bb3b9426595251d2  ./proposals/pr-005-cheap-receipts.md
ba681738dfe0b7d72f07e46425d67cdfa52734329661adcb4ea51034887dea47  ./proposals/pr-006-receipt-attacks-and-math.md
c826a6153c89f09973a649c2167bb6258bdc580213285cb370ec04c646da3d00  ./proposals/pr-007-the-crossing.md
baa86e04aecfe9f47d84df108f77c44ef1185335acbf0555dd722e8a65f866ee  ./proposals/pr-008-veiled-eye.md
375846c5a378d3f336ff1fd6d13d2475d117513fb68b62104265b7c174505e12  ./proposals/pr-009-srs-methodology.md
db2f37118a7a44c0a2665e51fc2bbce457164ea562125dcb02b1374cadb73e92  ./research/session-2026-09-06-closeout.md
b206e51440c686e2b43272b68dac3ab9017fa068ae86b1e5617bfa19c5cba5c2  ./proposals/README.md
ef4634c856f135f7aea609c2445da2c1ca8e3b908dbca6739700b4489e2610e3  ./RATIFICATION-BATCH-001.md
62c9fba1d5b271b793fe2dc88cb3ffdeef17cd3855478a73580019d2fc187efc  ./research/adversarial-audit.md
83b7813e8685307aecb366bcee07cf474439b0f4653d503102dad96ecd6e7a9d  ./research/arc-protocol.md
74c57be1b56385049ed4abe22847e4e0eae0cfb5043a2622b91a1c8d67a2a58d  ./research/crossword-engine.md
9c676f301069158c2bb147c90042a2c0c76e7b974b7b3d112bd751394dc1c370  ./research/decision-review.md
6c67f85f2e8d699bfe260e210a42a04cb78dd14d09b2b77497f8c0abd78a34dc  ./research/hypotheses-ledger.md
cea35befd3ae4ea27186e6221bed5763c4a73590879821fc9242710b26668e2e  ./research/proposal-cross-exam.md
dcbf7fc1c781e3c241925e519eaf0f8ccfe3b3883011e42d3d58a7ca8d0ba096  ./research/provider-exchange-note.md
0c4697fafe3bcfb15a5067556af23e0225b79488b1df55a639aa7a0cac00561d  ./research/rcvm.md
57f5bb50dfeeee7e95647498f0790a8c9c8aa695ea09a73dfe8d48c11cbfecd6  ./research/rj-001-premises-ruling.md
973304cfb7e286f30e780d19cbf43cfb4ea157dabbb4033545857fadb1e1b694  ./research/ten-axis-knowledge-map.md
69184cdcbfc7e9a687f893087b704329404732a0458bbc42c6f388dc294816a4  ./RULES.md
58d632bb3cbaa5e3f5ce200800619eb740e8a7d7be50af75a1b53f8875826804  ./SUPERVISOR-CHIP.md
0ef13257675c26cbbe826581efb67479036d229c7e40496a155e214e72278826  ./templates/CH.md
b48239b0fc079a87bf21047161c2ba5b5c24abe4c6ba602ca3cf5352f5d27888  ./templates/DS.md
325fd73951dc34ead5f7f2f091c6802022fb6f0acd24ef0b42e4c298ca0a1401  ./templates/MIC.md
a0f41f3bbc331f286dfd9a58ed5cc2baa6f3f82b38a3ddeef35cb750abbb0342  ./templates/PROPOSAL.md
7f4e760fd02abe758e6eca1ae5c0ba2f1c70cb2a5f6134092f00d56c6b5c20f8  ./templates/RJ.md
c67aeac7e574d5dc1d08e54371671408d4f4f6005fd4ed027ed5437f4b05f87a  ./VERSION.md
c46f161a8d65583987b76406bc8251929ba3f42565dc1004c51ac07369160d37  ./violations.md
3b5ddd8e95b88d90416ff338bcd84b8daf5662d9d7b595c9509af58392955c8f  ./ZERO-DAY-RUNBOOK.md
9430cc413a15e56c24c92ec8e9234467bb38f209f6256e65077c7c9b5e8589b5  ./ZERO-READINESS.md
```

## Exemptions (declared 2026-09-11 per pr-023 step 3 — not pinned, each with its protection)
- `LANES.md` · `OWNER-DESK.md` — living operational surfaces, updated by append/strike per
  their own design; integrity rides on git history + live consumption (same rationale as
  the CONTEXT exemption above).
- `tools/audit.sh` — the truth-generator itself: protected by per-session quotable output
  (research/ergonomics-tower.md §9), not by a frozen hash. A card contradicting a record
  loses (R14).
- tools/citecheck.sh — the citation-sweep generator: same protection class as
  tools/audit.sh (live consumption + a built-in --self-test known-positive), not a frozen
  hash. A clean sweep contradicted by a named file:line is filed, never re-trusted.
