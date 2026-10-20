# IDEA-001 — مدقّق المراسي الحية (Anchor Checker: من تدقيق يدوي إلى أمر واحد)
> وُلدت 2026-09-10 عبر anatomy-card-form.md v1 — الوكيل تحت تفويض المالك، قابل للسحب بكلمة (R8).
> الملاعب: الملعب 1 (أدوات مفتوحة — research/anatomy-bridge-arena-candidates.md:9، أرخص بوابة) + ثانويًا الملعب 5 (قالب وكيل).

## الحالة: **ARMED** (الأقسام 1-4 مكتملة — تنتظر GO المكتوب P6، لا تنفيذ قبلها — D-09)

## 1) إيصال الوجع (أربع شهادات على القرص — بصيغة البطاقة النموذجية: نص + file:line-span + لحظة mtime)
1. **يدوي وبطيء**: citation-drift-audit.md:46-47 — "الثمن: الفحص يدوي (~15 دقيقة/جولة)…" (mtime 2026-09-08 09:19+03).
2. **منحرف فعلًا**: citation-drift-audit.md:14-16 و:37 — انزياح نقطي في شجرة حية؛ العدد التجميعي "4 من 20 (20%)" عند :37 (**ملاحظة الوريف**: جدول §1 يعرض 3 صفوف انزياح RULES بينما §2:37 يقول 4/20 و§4:46 يقول إن النقاط الأربع في research/ — تعارض داخلي في المصدر وُرث للبطاقة كما هو، يُقاس بالنص المميز لا بالجدول).
3. **أمسكها الوريف متأخرًا**: anatomy-verification.md:7-8 و:12-15 و:36 — ورّيف الاستلام أمسك الانزياحات بعد النشر واثنان أُصلحا (mtime 2026-09-10 09:29+03).
4. **الإصلاح الحي موثقًا**: CONTEXT.md:525-530 — إصلاح المراسيتين verdict-master :29→:28 (mtime لحظة القراءة 2026-09-10).
الوجع: كل مستند حي في هذا المشروع يُقتبس بـ`file:line`، والشجرة حية → المراسي تموت بصمت، واكتشاف موتها يدوي.
**إعلان ما بعد الحكم (عرف harness-run):** الحكم الأول PASS WITH NOTATIONS (منقّض سياق-معزول، 41 أمرًا، 2026-09-10) أمسك 4 مراسٍ ميتة في هذه البطاقة (:38 ميتة→الحقيقي :46-47 · :33-43 جزئية→:7-15 · cite.sh:27-28 غير موجودة→الحقيقي :26 · مسار arena-candidates غير قابل للحل→الاسم الكامل) — أُصلحت أعلاه **بعد** الحكم بإعلان، والحكم نفسه محفوظ كما صدر (LOG + ذيل CONTEXT).

## 2) فحص السابقين (نص صريح — لا غياب مسمّى دقة)
- **فحص محليًا**: audit إعادة الاشتقاق (27 مرساة، G6 دورة 9) + ورّيف anatomy (18 إحالة) — كلاهما يدوي، صفر أدوات. أداة `RUN/tools/cite.sh` تطبع السطر لكن **لا تطابق ولا تجمع ولا تحكم** — مقيّم نصف آلي (UNTESTED كمُطابِق).
- **فحص خارجيًا**: سوق أدوات فحص الروابط/المراجع موجود عامًا (markdown link checkers) — **لم يُفحص** بنداء فعلي لأي أداة على شجرة هذه الأوثاق؛ التمايز المُدَّعى ليس "الفحص" بل: مطابقة بايت-لمستوى (نص+نطاق+mtime) على شجرة حية مع عتبات مُجمّدة وإيصالات منفصلة — UNTESTED ضد البدائل حتى يُشترى فحص السوق بعد GO.

## 3) §التشريح
- **المصدر البشري**: **كيلي جونسون** — قاعدة Skunk 4 ("important work must be recorded thoroughly" + الحد الأدنى من التقارير): السجل الكامل بتكلفة نشر صفرية تقريبًا؛ والمفتشية تُعاد إلى المصدر لا إلى طبقة الرقابة (النص الحرفي: lockheedmartin.com/content/dam/lockheed-martin/aero/photo/skunkworks/kellys-14-rules.pdf — متحقق 2026-09-10). ووريث محلي مباشر: `cite.sh` نفسه ("a quote it cannot print is UNRESOLVABLE, not trusted" — RUN/tools/cite.sh:26، mtime 2026-09-08 07:20+03؛ الإحالة الأولى :27-28 كانت ميتة وأصلحها الوريف).
- **المبدأ الحرفي المُنقول**: "There must be a minimum number of reports required, but important work must be recorded thoroughly" (كيلي، قاعدة 4) → التدقيق ليس تقريرًا إضافيًا؛ هو إعادة تشغيل ميكانيكية للسجل الموجود.
- **الترجمة الآلية (الجهاز)**: CLI واحد (`anchors.py`) يقرأ مستندًا + نطاقه الأرضي ويُعيد اشتقاق كل مرساة: نص مميز → يجد سطره الحي → يطابق البايتات مع الادعاء → يصدر جدول (مطابق/منحرف±k/ميت) + exit code. powers ≤3: يجد، يطابق، يحكم — لا يصلح ولا يحرر ولا يعيد ترقيم (الإصلاح خارج جهازه عمدًا).
- **التحريم**: لو ما تُبنىش الجهاز → البطاقة تولد `COLD` — والتجميد أسفله يظل وصية لا ادعاء.

## 4) §المقيّم المجمد (مجمّد 2026-09-10 ~09:45 +03 — قبل أي تنفيذ)
1. **النطاق الأرضي المجمد (gauge B)**: ملفان بشواهدهما:
   - `research/anatomy-reference.md` sha256 `fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc` (mtime 09:27:58)
   - `research/anatomy-verification.md` sha256 `207b75b506f4c8d4261d4303fe854c832299fd978cdbaa4a6b9e851a7e7482e8` (mtime 09:29:54)
   عقد المراسي: 15 مرساة جدولية في §2 من anatomy-verification (النص المميز لكل صف هو المفتاح — لا رقم السطر، درس audit §2.2) + المرساتان المنحرفتان المُصلحتان (verdict-master:29→:28 ×2) مرساة-سالبة ثابتة.
2. **الأوامر**: مواصفة `anchors.py --doc <file> --claims <anchors.tsv> --expect <PASS|FAIL>`: TSV بأربعة أعمدة (نص-مميز | ادعاء-نطاق | ملف-هدف | متوقع)؛ المخرَج جدول + `exit 0` فقط إذا طابقت الأرض كل الصفوف المتوقعة PASS والسالبتين FAIL.
3. **العتبات**: H1: مطابقة ≥ 15/15 على النطاق المجمد · H2: السالبتان تُشتقّان (مطابق لبعد الإصلاح :28) · H3: تقرير ثنائي يُعاد تشغيله مرتين متطابقًا بايت-ببايت · H4: زمن الجولة ≤ 60 ثانية (قياسه أمام الحد اليدوي ~900 ثانية).
4. **المنقّض**: منقّض سياق-معزول (subagent بلا مشاركة في كتابة البطاقة) يعيد تشغيل الأوامر ويقتبس المخرجات — R6.
5. **حالة التنفيذ**: **NOT EXECUTED** — لا كود قبل GO المكتوب (P6). هذه البطاقة واقفة عمدًا.

## 5) §خط القتل
- **شرط الموت**: بعد أول تشغيل مسموح: إذا فشل H1+H2 معًا في جولتين متتاليتين بعد إصلاح واحد → **DEAD**؛ أو إذا كانت إعادة الاشتقاق اليدوية أسرع منه على 3 جولات (الجهاز تعقيد بلا ربح).
- **الوريث**: `RUN/tools/cite.sh` يظل الوحيد (البطاقة لم تضف شيئًا يستحق كلفته)؛ ما يصلح من التجميد يُورَّث لأي بطاقة قياس لاحقة.
- **الإعلان**: عند الموت: obituary هنا + صف في obituary-registry.md — لا حذف.

## 6) الدعاوى الأربع القابلة للتكذيب (تُقاس أول تشغيل فقط)
| # | الدعوى | عتبة التكذيب |
|---|---|---|
| H1 | الجهاز يشتق 15/15 مرساة على النطاق المجمد | < 15 → تكذب الدعوى |
| H2 | يصنف المنحرفتين منحرفتين-مُصلحتين تلقائيًا | تصنيف خاطئ → تكذب |
| H3 | تشغيلان متتاليان متطابقان بايت-ببايت (حتمية) | أي اختلاف → تكذب |
| H4 | الجولة ≤ 60 ثانية مقابل ~900 يدويًا (≥15×) | > 60 ثانية → تكذب |

## 7) البوابة (gauge A — خارج العلم)
عند فتح الملعب 1 بعد GO: النشر كأداة صغيرة (repo عام + README + مرة استخدام واحدة حقيقية موثقة على وثائق هذا المشروع) — مقياس الفوز الأساسي: **أول مستخدم/نجمة خارجية حقيقية بإيصال منفصل عن المدّعي** (نص D-14). **تعديل نطاق معلن لهذه البطاقة وحدها** (وكيل تحت تفويض — قابل للسحب): يُقبل "استشهاد داخلي متكرر (≥3 جولات فحص فعلية)" كبوابة أولية قبل أول دولار — لأن أداة قياس داخلية قد تُثبت قيمتها داخليةً قبل أن تُنشر؛ الدخل الخارجي يظل الحكم النهائي للـPROVEN. يُسجل في RUN/ وتُفتح K-line عليه.

## 8) إعلان القياس والمصالحة — 2026-10-20 (إعلان بعد الحكم، بتاريخه)
> **الطبيعة**: مقياس (measurer) — قياس H1..H4 على شجرة 2026-10-20، بلا تنفيذ مقيّم البطاقة (لم يُنفَّذ ولم يُبنَ) وبلا تحريك أي عتبة.
> **اللغة**: هذا القسم بالإنجليزية (R15: artifacts English)؛ نص البطاقة العربي الأصلي محفوظ بلا تعديل، وحكم 2026-09-10 محفوظ كما صدر.
> **الإيصال الكامل**: `research/idea-001-reconciliation.md` (كل رقم فيه ناتج أمر مقتبس).
> **الحق**: ضيف read+propose — كُتب داخل `research/idea-001-anchor-checker.md` + `research/idea-001-reconciliation.md` فقط؛ لا ملف عقيدة مُسّ، ولا `tools/*` مُعدَّل، ولا runtime، ولا وقود.

### 8.1 The device now exists — but it is not this card's device
- **Two builds of `tools/citecheck.sh` are on the table**, and the second one landed *during* this measurement:
  - **M1** — sha256 `d0c8b5c80ff91a52196f665793d73faf03a082b56d002f97332d5ef17ed31f2b`, mtime 2026-09-11 06:27:39 +0300 (the build this card's pain produced; the sweep at 22:06 on 2026-10-20 ran against it).
  - **M2** — sha256 `80defbd4483bf48cd93c61322d7f3727f3042bd5e97df8e29405eff90e1a14b3`, mtime **2026-10-21 00:16:31** +0300, rewritten mid-measurement by another agent: a three-class contract (LIVE / WITNESS / STALE-DECL) plus a new `tools/witness.list` register. The sweep at 00:19 on 2026-10-21 ran against it.
  - **Every measurement below names the build it was taken against** (research/idea-001-reconciliation.md:72). The instrument moved under the measurement exactly as the measured scope moved under the card — the same disease, one level up. Neither was hidden; both are quoted.
- **M1's own header names this card as the pain source** (M1: tools/citecheck.sh:10-13 · M2: tools/citecheck.sh:20-23):
  ```
  # WHY: citation drift is the most-documented pain in this project
  # (research/idea-001-anchor-checker.md pain receipts · the 2026-09-10 anchor
  # repair · pr-022 existed to fix anchor rot). This mechanizes the manual
  # ~15min/round sweep as one read-only command.
  ```
- Born 2026-09-11 in the ergonomics-deep pass (git `25fd491`; LOG.md:320).
- What it does: sweeps the living surfaces — every `file.md:NN` reference is checked for file existence and in-range line (M1: tools/citecheck.sh:46-88 · M2: tools/citecheck.sh:59-101); `exit 1` when drifts exist.
- What it does NOT do: it does not *derive* an anchor from a distinctive text, and it has no expected-verdict axis. M2's STALE-DECL rule (tools/citecheck.sh:152-163) is the tree's first real **content check** — but only over a hand-kept register of (file, line, ref) triples, not over claims.
- **This card's specified evaluator still does not exist**: `anchors.py --doc --claims --expect` (card §4.2) — nothing in the tree implements it (a search for `anchors*` and `--claims` returns only two prose files). The first verdict already recorded that: "صفر كود anchors في الشجرة" (LOG.md:290).

### 8.2 H1..H4 labels as of today (with receipts)
| # | label 2026-10-20 | receipt (file:line) |
|---|---|---|
| H1 | **UNTESTED** (the device) · precondition measured · projected score 8/15 | research/idea-001-reconciliation.md:442 (H1) · :692 (the row table) |
| H2 | **UNTESTED** (the device) · precondition measured | research/idea-001-reconciliation.md:487 (H2) |
| H3 | **PARTIALLY MEASURED** — the findings body is deterministic; the report's timestamp line breaks byte-identity across minutes (same verdict under both builds) | research/idea-001-reconciliation.md:532 (H3) · M1: tools/citecheck.sh:109 · M2: tools/citecheck.sh:130 |
| H4 | **MEASURED** — M1: 5.94 / 6.05 / 6.85 s per round · M2: 5.26 / 6.01 / 5.59 s (both ≤ 60 s) · the ~900 s comparator re-derived live (research/citation-drift-audit.md:46-47) ⇒ ~130–150× | research/idea-001-reconciliation.md:617 (H4) |

- **The tool's known-positive rule — M1**: `SELF-TEST PASS: plain drifts caught (2/2) · quoted + fenced refs ignored (0/2) · clean file clean` — research/idea-001-reconciliation.md:390.
- **The tool's known-positive rule — M2 (the build that exists now)**: `SELF-TEST PASS: plain drifts caught (2/2) · quoted+fenced ignored (0/2) · clean file clean · declared witness found · undeclared not found` — same receipt line.
- **The sweeps**: M1 (2026-10-20 22:06) — 158 files · 1135 refs · 14 drifts · `exit 1`. M2 (2026-10-21 00:19) — 162 files · 1252 refs · 10 drifts · 5 declared witnesses · `exit 1`. **Zero drifts in this card and in the reconciliation file, under both builds** (research/idea-001-reconciliation.md:165).

### 8.3 The new ground-truth moment (2026-10-20 22:02:38 +0300)
- `research/anatomy-reference.md` sha256 `fde376d341a34298249dddc619c7836cf58b47165d00b4a5f5183146b43899dc` (mtime 2026-09-10 09:27:58) — **matches the freeze**.
- `research/anatomy-verification.md` sha256 `207b75b506f4c8d4261d4303fe854c832299fd978cdbaa4a6b9e851a7e7482e8` (mtime 2026-09-10 09:29:54) — **matches the freeze**.
- `tools/citecheck.sh` — **two builds** (see §8.1): M1 sha256 `d0c8b5c80ff91a52196f665793d73faf03a082b56d002f97332d5ef17ed31f2b` (mtime 2026-09-11 06:27:39) · M2 sha256 `80defbd4483bf48cd93c61322d7f3727f3042bd5e97df8e29405eff90e1a14b3` (mtime 2026-10-21 00:16:31) · `research/anatomy-card-form.md` sha256 `3db3b4d41d1327f58ec6ba7bca6579bae7810c62ef19bdd616756171334f510f` (mtime 2026-09-10 21:03:42) · this card before the present edit sha256 `2576ea9e56796983e0e37e7c60c2ae49f8f9420f67d8ec1e04ebd1ef8db59b88` (post-edit hashes filed in research/idea-001-reconciliation.md §9.2).

### 8.4 The frozen scope's state today — the freeze is honest, the flow is stale
The frozen hashes are intact, but **7 of the 15 anchor claims no longer hold**: 5 line drifts + 2 dead (the witness text is
gone) ⇒ any device run today would report **8/15 < 15**. Cause: 6 of the 15 point into `CONTEXT.md`, whose head was
replaced in the 2026-09-19 approved-docs moment (pr-024 Part A), and into `ONBOARDING.md`, regenerated 2026-09-11 —
exactly the anchor class that same 2026-09-19 ruling deprecated in favour of date-anchors.
**See**: research/idea-001-reconciliation.md:692 (the row table) and :768 (the causal receipts).
**Separation note**: if it is ever run, the thing expected to fail is the **ground truth's continued validity**, not the
**device's capability** — the two must never be conflated.

### 8.5 Thresholds and kill-line — unchanged, nothing moved
- **Not one threshold was moved**: H1 ≥ 15/15 · H2 correct classification · H3 byte-identical (any difference refutes) ·
  H4 ≤ 60 s (≥ 15×) — verbatim as in §6 and §4.3 above.
- **Declared plainly**: H1's threshold is **currently unmeasurable as specified** — not because the threshold is wrong,
  but because the device that could measure it does not exist, and the scope it would be measured against has slid
  below the bar. The threshold **stands**; what is missing is the device, not the bar. (Same rule:
  research/anatomy-card-form.md:33 — "لا عتبة تُضبط بعد رؤية النتيجة".)
- **The kill-line (§5) is NOT triggered**: the death condition requires the *device* to fail in two consecutive rounds
  after one repair — and it was never run. No death, no heir, no obituary. The card is neither killed nor deleted.

### 8.6 A dead citation corrected — dated, after the verdict, declared, never silent
- **2026-10-20**: `CONTEXT.md:589-594` (card §1 item 4 — the live-repair receipt) pointed at the
  "ANATOMY-REFERENCE REPAIR" entry at freeze time; after the 2026-09-19 head replacement that range holds the
  2026-09-08 entry instead. The correct span was re-derived with `sed -n` and **corrected to `CONTEXT.md:525-530`**
  (the repair entry + its verification line "zero \":29\" remain, two \":28\" present").
- **Self-correction on record**: the first manual re-derivation mis-probed R15 (a truncated heading) and
  R11/R12/R13 (non-distinctive probes); re-deriving by reading the spans themselves makes **R15 correct** and fixes
  the R11/R12/R13 classification to the values in §8.4. (The lesson: read the span before concluding — the same lesson
  the 2026-09-10 verifier wrote into research/anatomy-verification.md:50-54.)
- `citecheck.sh` reported **zero** drifts for these two files (meaning: the range is in range) — so the dead citation
  above is **semantic, not syntactic**; a tool whose LIVE semantics are resolvability cannot see it. That is the design gap
  (research/idea-001-reconciliation.md:792 — and the one flag that would close it at :801).
- **The instrument moved too, and it is declared here as well**: the sweep's first run (22:06) used tool build M1
  (`d0c8b5c8…1f2b`); by 00:16 the file had been rewritten to M2 (`80defbd4…4b3`) by another agent, and the sweep was re-run
  against it (00:19). The labels in §8.2 are identical under both builds; the receipts name which build produced each
  number. Nothing was re-labelled silently, and `tools/*` was not modified by this task.
- **A second correction, to this card's own body, declared the same way (2026-10-21)**: writing this §8 rewrote the
  whole file, and the rewrite silently re-spelled one word of the original §7 line (`داخليةً` → `داخليًا` — the same
  word, different bytes, because the tanween moved from the te-marbuta to the alef). A byte-level comparison against
  the committed original (`git show HEAD:research/idea-001-anchor-checker.md`, line by line) caught it: **the original
  line was restored byte-exactly**, and the card's 49 original lines are now byte-identical to the committed version
  **except line 11** — the one declared correction above. Recorded here rather than left silent, because a card that
  catches silent drift in *other* documents may not commit one in itself.

### 8.7 The card's state today (2026-10-20) — with the 2026-09-10 verdict preserved
- **State: ARMED — and NOT EXECUTED, as before.** No written GO (P6) has been given, and the specified evaluator
  `anchors.py` was never built.
- **The pain is confirmed and mechanized**: a sibling device now sweeps the living surfaces read-only, self-tests
  PASS, and reports zero drifts on this card's own files.
- **The frozen evaluator is intact as a hash, stale as a scope**: only 8 of 15 anchor claims still hold (§8.4).
- **H4 measured · H3 partially measured · H1 and H2 untested** (§8.2).
- **The 2026-09-10 verdict stands as issued** (LOG.md:290; its text is in §1 above): "PASS WITH NOTATIONS" — the
  stranger ran 41 live commands in an isolated context, the third attempt after two silent back-end failures; the
  substance held: the two freeze hashes matched byte-for-byte (fde376d3/207b75b5) · mtimes matched · §2 counted 15
  rows · P-006 truly at :28 · zero anchors code in the tree · walls clean · honesty clean (UNTESTED marked twice) —
  with 4 dead anchors in this very card, fixed afterwards by declaration inside the card.
- **The thresholds and the kill-line stand as pre-registered, unmoved** (§8.5); what is missing is a device, not a bar.
