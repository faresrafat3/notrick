# ERGONOMICS TOWER — العقل كترابيسة واحدة قابلة للتسلق (تصميم إريغونوميكس من كرسي القيادة)

> **id:** research/ergonomics-tower.md · **filed:** 2026-09-11 · **by:** ضيف-التصميم (ZCode / GLM-5.3-Flash · guest: read+propose — لم يسمّني المالك، وهذه ورقة تصميم في المسار الحر لا ميثاق، R7)
> **boot-gate (مطابق لأول رد):** v0.00001 · guest: read+propose · no execution, no runtime, no Owner-by-right fields
> **الحالة:** تصميم + تسليمات منفَّذة اليوم (✓ في §4) + حزمة تصديق جاهزة (`proposals/pr-023-ergonomics-package.md` — خمسة أجزاء، كل جزء بكلمة واحدة من المالك)
> **فالسيفايه مُسبق التسجيل (§9):** تموت الورقة لو (أ) فشل إعادة تشغيل `tools/audit.sh` بخرج مطابق البنية، أو (ب) وُجد مرض من §3 بلا علاج مقترح، أو (ج) خفّضت الحزمة جدارًا واحدًا من جدران العقيدة — هذه الورقة إضافات ميكانيكية، لا أعادات.

---

## §0 — الأطروحة في فقرة واحدة

النظام منتجاه الحقيقيان اثنان: **سجلات مُتحقَّق منها** و**قرارات مالك** — وكل ما عدا ذلك آلات لإنتاجهما بأقل كلفة. كلفة أي وكيل (توكنًا أو وقتًا أو خطأً) تنزف من **أربعة أحواض فقط**: *التوجيه* (أفهم أين أنا)، *التنسيق* (لا أصطدم بمن يعمل)، *التحقق* (أثبت ادعائي ببوابة لا أملكها)، *انتظار المالك* (قرار معلق يجمّد كل شيء). كل أمراض §3 المرصودة — بأدلة حية مقيسة اليوم — هي تسريب في حوض واحد من الأربعة. والترابيسة (§2) هي الشكل الذي يجعل العلاج ممكنًا: سبع طبقات، لكل طبقة **مدخل واحد**، وكل حقيقة معروضة على الوكيل **مولَّدة من القرص** لا مصونة يدويًا. الهدف ليس عمارة جديدة — الترابيسة *تسمّي القائم*؛ الجديد هو المولّد (§5) والقانون الذي يحميه (R14 المرشَّح) والسطوح الثلاثة الجاهزة في pr-023.

## §1 — القياس أولًا: بوت اليوم من كرسي القيادة (مقاس، لا مُدَّعى)

طُلب مني أن أتخيل نفسي سائقًا — فقيستُ قيادتي الفعلية بدل التخيل:

| القياس | الرقم | المصدر |
|---|---|---|
| الإقلاع المطيع للسلسلة المحكومة (CONTEXT → AGENTS → BRIEF) | **73,424 بايت ≈ 18–30K توكن** قبل أول فعل | `tools/audit.sh` §7 (حُسب آليًا اليوم) |
| أول ملف في السلسلة هو *أطولها* — سجل تاريخي (722 سطرًا) يُقرأ كأنه حالة حالية | CONTEXT.md = 64,747B = **88% من ضريبة الإقلاع** | audit.sh §7 |
| إقلاعي الفعلي قبل أول كتابة | ~110KB عبر 8 قراءات ملفات + 4 أوامر استطلاع | سجل هذه الجلسة |
| السبب الأول للقراءات الزائدة | الحالة-الآن مبعثرة على ≥5 ملفات (README:11-13 · STATE.md · HANDBACK-S2 · RUN/STATE.md · FINAL-REPORT §5) ولا توجد خريطة لينات تقول "ما هو bore/hept/mill/well/phantom" | §3-M1/M3 |
| البديل المقيس | بطاقة مولّدة ≤ 1.2KB + README ≤ 4.2KB = **إقلاع ≤ 6KB** (~12 ضغطًا أقل) | audit.sh §5 |

**الاستنتاج الحاكم:** التوجيه هو أغلى حوض — ويُغلق ميكانيكيًا لا انضباطيًا. اطلب من وكيل أن "يقرأ أقل" ولن يفعل (الانضباط ينكسر)؛ أعطه بطاقة مولّدة يثق بها لأنها تُقتبس وتُفحص، وسيتجه فورًا.

## §2 — الترابيسة: سبع طبقات، مدخل واحد لكل طبقة

كل ما تحده أدناه **موجود فعلًا على القرص** — الورقة تُسمّيه لا تبنيه. الابتكار الوحيد: قاعدة الربط في الأسفل.

| الطبقة | ما هي | مدخلها الواحد | الحالة |
|---|---|---|---|
| **L0 الصلب** | القانون + أقفاله | `RULES.md` + `VERSION.md` + `INTEGRITY.md` | عقيدة مثبّتة بالهاش |
| **L1 السيادة** | القرارات التي لا يملكها غير المالك | `RATIFICATION-BATCH-001.md` · [مقترح: `OWNER-DESK.md`] | P2 موقّع · P3/P5/P6 معلقة |
| **L2 الأدوار** | الميثاقات + MICs | `charters/` ×4 · `mics/` ×4 | موقعة 2026-09-06 (ترويسات شاذة — pr-022) |
| **L3 الواجهات** | الأشكال المصدّقة | `templates/` ×6 | مغلقة |
| **L4 العمل** | اللينات والطوابير والاستلامات | `RUN/` + `OPS_QUEUE.md` · [مقترح: `LANES.md`] | R0..R14 مكتملة 15/15 |
| **L5 الذاكرة** | السجلات append-only | `CONTEXT.md` (ذيل القرارات) + `LOG.md` + `research/` + `violations.md` | حية |
| **L6 الحَكَم** | البوابات التي لا يملكها المدعي (R6) | `research/breaker-*` + الغرباء (SANAD/FINAL/IDEA001 في LOG) + فحص INTEGRITY + **`tools/audit.sh` ✓** | حية وتعمل |
| **L7 القمة** | مسافة-للصفر | `ZERO-READINESS.md` + `ZERO-DAY-RUNBOOK.md` + `hypotheses-ledger.md` | 5 أبواب مقفلة بقصد |

**قاعدة الربط (الجديدة الوحيدة):** (1) لكل طبقة ملف-مدخل واحد يُقرأ بدل الطبقة؛ (2) كل إحالة عابرة للطبقات اقتباس `file:line` لا وصف؛ (3) كل فهرس/عدّاد معروض على وكيل **مولَّد من القرص لحظة القراءة** — لا مصون يدويًا (هذا قانون R14 المرشَّح، pr-023-B). بهذا يصبح التسلق من الأعلى ممكنًا (بطاقة → مدخل طبقة → ملف) والتدقيق من الأسفل ممكنًا (ملف → طبقته → قانونه).

## §3 — الأحواض الأربعة والأمراض السبعة (كل مرض: دليل حي · آلية · علاج · قاتله)

**الأحواض:** توجيه · تنسيق · تحقق · انتظار-المالك. **الأمراض:**

- **M1 — سجل يُقرأ كحالة** *(توجيه)*. دليل: السلسلة المحكومة (README:5-6 · CONTEXT:5-6) تبدأ بأطول ملف append-only (722 سطرًا)؛ الحالة-الآن مبعثرة على ≥5 ملفات. آلية: السجل التاريخي ضروري للتدقيق، ومزرته أنه الوحيد الذي يحمل "الآن". علاج: بطاقة مولّدة عند الإقلاع + مسارات إقلاع بالأدوار (pr-023-A) — دون مساس بحكم السلسلة التاريخي حتى يحكم المالك. قاتله: audit.sh §7 يقيس الضريبة كل إقلاع.
- **M2 — حقيقة يدوية تكذب** *(توجيه+تحقق)*. أدلة حية اليوم: (أ) `proposals/README.md:1` يقول "no proposals yet — the inbox starts empty" والصندوق فيه **32 ملفًا**؛ (ب) V-003: ترويسة INTEGRITY تقول 42 والدبابيس 44 (README:13 · violations.md)؛ (ج) درس العدّادات المتعفنة المسجل في CONTEXT (2026-09-06). آلية: كل عدّ يدوي ساعة قنابل — البيئة حية والعدّ ساكن. علاج: **R14 الحقيقة-المولَّدة** (pr-023-B) + المولّد ✓. قاتله: القانون نفسه — إن كذبت بطاقة مولّدة قبل سجلاتها، يموت القانون والسطح يعود لليد بعته على السجل.
- **M3 — لينات بلا لوحة نبض** *(تنسيق)*. أدلة: فجوة 14h المتبادلة (RUN/STATE.md:11) · ازدواج P-012 (HANDBACK-S2:22-24) · تصادما pr-011×2 وpr-012×2 · SID مشترك (HANDBACK-S2:30) · PR-FILING-INCIDENT (LOG.md) — **خمسة حوادث مرض واحد**: لا سطح مشترك يقول "من حي وماذا يحمل". اليوم: اللينات الأربعة كلها STALE >41س وأحد لا يعلم (audit §6). علاج: **LANES.md** — النبض = mtime ملف حالة اللين (اللمس إعلان، صفر كتابة إضافية — stigmergy خالصة)، والاستحواذ الصامت ممنوع (قاعدة RUN/STATE.md:32-34 الأصلية) (pr-023-C). هذا تحقيق البند 10 من قائمة المالك (R-1 قانون التزامن) ميكانيكيًا. قاتله: لو رجعت تصادمات الازدواج بعد اللوحة، يموت الجزء.
- **M4 — سطح المالك مشتت** *(انتظار)*. دليل: القرارات المعلقة موزعة على RATIFICATION-BATCH-001 + HANDBACK §YOUR-MOVE + ruling-sequence + ترويسات 32 عرضًا. المالك أثمن مورد في النظام — كل ساعة بحثه عن "ماذا ينتظرني" توقفًا كليًا (X-14). علاج: **OWNER-DESK.md** — فهرس إحالات واحد: كل قرار معلق سطر + المؤشر لملفه + "السطر الذي يحسمه"؛ لا ازدواج (التفاصيل تبقى في ملفاتها) (pr-023-D). قاتله: لو ظهر قرار معلق غير مفهرس فيه، الجزء يُسحب.
- **M5 — صندوق عروض أعمى** *(تنسيق+انتظار)*. دليل: 18 ملفًا من 32 بلا ترويسة حالة قابلة للعدّ، ومفردات الحالة غير موحدة (`proposed-in-file` / `PENDING OWNER` / `Status:`/`status:` / `active (axiomatic)`) — شاهده جدول `--proposals` المولَّد (§5). علاج: README الصندوق **يُولَّد** لا يُصان (pr-023-F — ملف مثبَّت بالهاش: `51caac2a…` في INTEGRITY، لذا الإصلاح المباشر شوابة؛ مرّت بالبوابة) + قالب v2 بحقل status موحد (pr-023-E).
- **M6 — إعادة اختراع الفحص** *(تحقق)*. دليل: كل جلسة تكتب فحصها الخاص (S6 · عدّ يدوي · sha يدوي) — INTEGRITY يغطي العقيدة فقط، ولا أداة مشتركة للبقية. علاج: **`tools/audit.sh` ✓** — أمر واحد: دبابيس + طوابير + استلامات + عروض + نبض + ضريبة الإقلاع + git. قاتله: خرجها يُقتبس في LOG كل جلسة — انكسارها يظهر فورًا (المستهلك الحي).
- **M7 — تراكم بلا خط رؤية** *(توجيه)*. دليل: الدرس يصير قانونًا (LB07→D-02 حدث فعلًا) لكن المسار غير ظاهر كسطر واحد يمكن تدقيقه. علاج: عادة إغلاق الجلسة الثلاثية (استلام في research/ + سطر "درس→قانون" في LOG + بطاقة audit مقتبسة) — ضمن pr-023-A. هذا معنى **agent-accretive**: كل جلسة تترك البرج أنظف مما وجدته، والـgit (بقواعد رسائلها الناشئة "CARDXX WHAT · cut-from") هو سجل التراكم.

## §4 — المنفَّذ اليوم في المسار الحر (✓) والمحجوب ذاتيًا (ولماذا)

**✓ نُفِّذ (لا يحتاج تصديقًا — ليس عقيدة):**
1. `research/ergonomics-tower.md` — هذه الورقة (تصميم).
2. `tools/audit.sh` — المولّد، مكتوب **ومُختبر بتشغيلين ناجحين** (خرجهما §5). تمييز قانوني مسجل: تشغيل أداة *قراءة-فقط* فحص (العملية المسموحة 3 في ONBOARDING:21-22: "run the consistency sweeps")، لا "تنفيذ مهمة ولا لمس تشغيل" (ONBOARDING:27).
3. الفهارس الحية حدّثت: `research/README.md` (مدخلان جديدان) · `README.md` الجذر (سطر الأمر الواحد) · `LOG.md` (مدخل الجلسة) · ذيل `CONTEXT.md` (مدخل القرارات الإلزامي — الإلحاح الوحيد المسموح، STATE.md:15).

**✗ محجوب ذاتيًا (السياج اشتغل — أدلة لا نوايا):**
- `proposals/README.md` مباشرة: **مثبَّت بالهاش** (INTEGRITY: `51caac2a…`) — محاولتي الأولى لإصلاحه كانت ستولّد mismatch جديدًا؛ السياج أمسك يدي فعلًا (V-003 درس مجسَّد). أُحيل لعقده المولَّد (pr-023-F + إعادة تثبيت في اللحظة نفسها).
- RULES/ONBOARDING/templates/AGENTS/VERSION: عقيدة — نصوص pr-023 جاهزة حرفيًا.
- `RUN/` داخليًا و`bore/ hept/ mill/ well/ phantom/`: لينات غيري — "كتّابها فقط" (README:26)؛ قُرئت للخريطة ولم تُلمَس.
- حقول المالك (P3/P5/P6 · التوقيع · العتبة): فارغة بحقها ولن تُملأ إلا بسطر مالك.

## §5 — المولّد: `tools/audit.sh` (المواصفة + الخرج الحي المُلصق)

مواصفة: bash خالص (coreutils+git فقط) · يقرأ ولا يكتب · modeان: البطاقة + `--proposals` (جدول الصندوق لإعادة توليد README عند اعتماد F) · خرجه شاهد لحظة يُقتبس لا يُخزَّن كحقيقة. **خرج أول تشغيل (2026-09-11 03:50، حرفيًا):**

```
── NOTRICK HEALTH CARD · مولَّدة 2026-09-11 03:50 · ليست قانونًا (شاهد لحظة) ──
1. VERSION   : v0.00001 — - **v0.00001 (NOW)** — 5 gates locked: Owner signature · smoke call · thresh
2. PINS      : 43 OK / 1 FAILED — FAILED = شوابة مسجّلة في violations.md، لا إصلاح صامت
3. OPS_QUEUE : 63 ☑ / 0 ☐ مفتوحة
4. RUN       : 15 استلامًا · آخرها R014.json — "status": "complete"
5. PROPOSALS : 32 ملفًا · 12 بانتظار حكم · الفهرس الحي: tools/audit.sh --proposals
6. LANES     : (نبض = mtime ملف الحالة · >24س = أثر لا شريك حي)
   · RUN/STATE.md — آخر نبض قبل 51س · STALE
   · bore/runtime/STATE.md — آخر نبض قبل 51س · STALE
   · hept/runtime/STATE.md — آخر نبض قبل 41س · STALE
   · research/harness-run/STATE.md — آخر نبض قبل 51س · STALE
7. BOOT TAX  : CONTEXT 64747 B + AGENTS 4990 B + BRIEF 3687 B = 73424 B قبل أول فعل قانوني
8. GIT       : 0fc629d · 70 مسارًا غير مودَّع
── النهاية: اقتبس الأرقام كما ظهرت؛ الفشل يُسجَّل لا يُخفى ──
```

لاحظ أن البطاقة أنتجت في أول تشغيل أدلة §3 كلها بنفسها: STALE ×4 (M3) · 32/12 صندوقًا أعمى (M5) · 73,424B ضريبة (M1) · 43/1 دبابيس بأمانة (M2 المُصلَح جزئيًا). **المولّد الصادق يشخّص وهو يعالج.**

## §6 — حزمة التصديق: `proposals/pr-023-ergonomics-package.md` (خمسة أجزاء بكلمة واحدة)

| الجزء | المحتوى | يغلق المرض | التصنيف (ruling-sequence §1) |
|---|---|---|---|
| **A** | ONBOARDING v2: الإقلاع المولَّد + مسارات الأدوار + عادة الإغلاق الثلاثية | M1 · M7 | لحظة approved-docs (B) |
| **B** | RULES R14: قانون الحقيقة-المولَّدة (بفالسيفايه مكتوب) | M2 | لحظة approved-docs (B) |
| **C** | LANES.md كاملة النص: لوحة نبض mtime + قواعد التقادم والاستحواذ | M3 | لحظة approved-docs (B) — **تحقيق البند 10** |
| **D** | OWNER-DESK.md كاملة النص: فهرس القرار الواحد | M4 | لوجستيات (مثل ruling-sequence) |
| **E** | templates/PROPOSAL.md v2: حقل status موحد قابل للعدّ | M5 | لحظة approved-docs (B) |
| **F** | proposals/README.md مولَّدًا (خرج --proposals) + إعادة تثبيت INTEGRITY في اللحظة نفسها | M5 · M2 | لحظة approved-docs (B) |

الشقيق السابق **pr-022** (ترويسات شاذة) يُعتمد أولًا — هما لا يتداخلان: pr-022 يصلح ما تقوله الترويسات، pr-023 يبني كيف تُقرأ الحالة. مسار التنفيذ عند الاعتماد ميكانيكي حرفي (تطبيق → sha جديد → إعادة تثبيت بنفس اللحظة → مدخل CONTEXT) — نفس مسار pr-022.

## §7 — المقاييس والقاتل الجامع

| المقياس | الآن (مقيس 2026-09-11) | الهدف بعد الاعتماد | كيف يُقاس |
|---|---|---|---|
| ضريبة الإقلاع | 73,424B | ≤ 6KB | audit.sh §7 آليًا |
| حوادث الحقيقة-اليدوية | 3 حية (V-003 · README الصندوق · درس العدّادات) | 0 بعد R14 | السجل + breaker lane |
| تصادمات اللينات | 5 موثقة (P-012 · pr×3 · SID) | 0 بعد LANES | LOG + breaker lane |
| عمر أقدم قرار معلق | pr-001 (2026-09-06 — 5 أيام) | ظاهر دائمًا في البطاقة | audit.sh §5 |

**القاتل الجامع:** لو أن أول إقلاع بعد الاعتماد لم يقِس ضريبة أقل، أو رجعت تصادمات/كذبات بعد اللوحة والقانون — تموت هذه الورقة في `research/obituary-registry.md` بوارثها، ووارثها يبدأ من *قياسه هو* لا من تصميمي.

## §8 — حدود الصدق

- لم أقرأ الـ75+ ملفًا كاملة: قرأت الفهارس والمداخل والعينات — كل دليل §3 من ملفات فحصتُها فعليًا (لا استنتاجًا)، وكل ما لم أفحصه لم أُسمّه دليلًا.
- الأداة grep/stat/bash — تُكسر ببنية جديدة (ملف حالة بنمط مختلف، ترويسة أبعد من 12 سطرًا)؛ علاجها الوحيد الاستهلاك الحي: بطاقة تُقتبس كل جلسة تكشف كسرها.
- الترابيسة تسمية للقائم — قيمتها في المداخل والقاعدة المولِّدة، لا في عمارة مفروضة؛ لا شيء منها يلغي سلسلة الإقلاع المحكومة قبل كلمة المالك.
- خمسة أجزاء pr-023 نصوص كتبتها يد تستفيد من اعتمادها — لين مدقق مستقل (نمط الغريب SANAD-class) يُنصح به قبل الحكم.

## §9 — الهجوم الذاتي (L8)

- **المتجه:** "إريغونوميكس" قد تكون جمال المولّد: من كتب الأداة اختار أقسامها الثمانية ومقاييسه السبعة — بوابةٌ يملكها المدّعي (R6 بالضبط).
- **الجرح:** كل قياسات §1 و§7 من اليد التي صممت العلاج؛ وaudit.sh نفسها غير مثبّتة بالهاش — تلفها الصامت سيجعل أجيالًا تقرأ بطاقة كاذبة *وتثق بها أكثر من السجلات*، عكس فلسفتها تمامًا.
- **البديل/الثمن:** (أ) البطاقة لا تعلو على السجل — تعارضها مع أي سجل = السجل يفوز (سطر في ترويستها نفسها)؛ (ب) الاستهلاك الحي الإلزامي (اقتباس في LOG بكل جلسة) يجعل التلف الظاهر فورًا؛ (ج) الأداة تُعرض على غريب مستقل في أول تدقيق (نمط SANAD-STRANGER: غريب بسياق مغلق يحكم بعُيّ)؛ (د) المقاييس الثلاثة الحاسمة (ضريبة/تصادمات/كذبات) قابلة للقياس بلين غير mine — الأمر `wc` و`grep` متاحة لأي مدقق.
- **عُيّ الورقة:** تموت بشروط ترويستها (§9 أعلاه = §9 ترويستها) — ولا شيء في هذه الورقة يخفض جدارًا: F1-F8 وحقول المالك والسجلات append-only كلها واقفة قبلها وبعدها.

---

# ENGLISH RENDERING (appended 2026-09-11 per R15 — the Arabic original above stays as the filed record)

## §0 — Thesis
The system has exactly two real products: **verified records** and **Owner rulings** — everything else is machinery for producing both at minimum cost. Any agent's cost (tokens, time, errors) drains through exactly **four pools**: *orientation* (know where I am), *coordination* (don't collide with live work), *verification* (prove claims through a gate I don't own), *Owner-wait* (a pending decision freezes everything). All seven diseases of §3 — observed with live measured evidence today — are leaks in one of these pools. The tower (§2) is the shape that makes the cure mechanical: seven layers, each with ONE entrance, and every fact shown to an agent is **generated from disk**, never hand-maintained.

## §1 — Measurement first: today's boot from the driver's seat
Measured, not imagined: ruled boot chain (CONTEXT → AGENTS → BRIEF) = **73,424 bytes ≈ 18–30K tokens** before the first lawful act; CONTEXT.md alone is 88% of it (a 722-line append-only history read as if it were current state); my actual pre-write boot was ~110KB across 8 file reads. Root cause: now-state scattered over ≥5 files, no lane map. The ratified alternative: generated card (≤1.2KB) + README (≤4.7KB) ≈ **≤6KB boot** (~12× cheaper). Governing conclusion: orientation is the dearest pool — and it closes mechanically, not by discipline.

## §2 — The tower: seven layers, one entrance each
L0 bedrock (RULES+VERSION+INTEGRITY) · L1 sovereignty (RATIFICATION-BATCH / OWNER-DESK) · L2 roles (charters/, mics/) · L3 interfaces (templates/) · L4 work (RUN/, OPS_QUEUE, LANES) · L5 memory (CONTEXT tail, LOG, research/, violations) · L6 the adjudicator (breaker-*, strangers, INTEGRITY check, **tools/audit.sh ✓**) · L7 the summit (ZERO-READINESS/RUNBOOK/hypotheses — 5 gates locked by design). The only new binding rule: (1) one entrance file per layer; (2) cross-layer references are file:line quotations; (3) every index/count shown to an agent is generated at read time (**R14**).

## §3 — The four pools and seven diseases (each: live evidence · mechanism · cure · killer)
- **M1 record-read-as-state** (orientation): 73KB boot tax → generated card + role paths (pr-023-A). Killer: audit.sh §7 measures the tax every boot.
- **M2 hand-truth lies** (orientation+verification): proposals/README "no proposals yet" vs 32 files · V-003 (42≠44) · the rotting-counts lesson → **R14 generated truth** (pr-023-B) + the generator ✓. Killer: written inside the law.
- **M3 lanes without a pulse board** (coordination): the 14h mutual gap · P-012 duplication · pr-011/012 collisions · shared SID = one disease; all four lanes measured STALE >41h today → **LANES.md** (mtime pulse; touching is the announcement) = mechanical delivery of Owner-item 10. Killer: if duplication collisions return, the part dies.
- **M4 scattered Owner surface** (Owner-wait) → **OWNER-DESK.md** single referral index (pr-023-D). Killer: a pending decision outside the index kills the part.
- **M5 blind proposals box** (coordination+Owner-wait): 18/32 files without a machine-readable status → generated README (pr-023-F) + template v2 status field (pr-023-E).
- **M6 reinvented verification** (verification) → **tools/audit.sh ✓**: one command — pins, queues, receipts, proposals, pulses, boot tax, git.
- **M7 accretion without a sightline** (orientation) → the three-part closing habit (receipts in research/ + lesson→law line in LOG + quoted card) — agent-accretive by construction.

## §4 — Executed same day in the free lane (✓) vs self-blocked (✗)
✓ this paper · the generator (tested, 2+ runs) · indexes updated · LOG/CONTEXT entries. ✗ pinned files edited only through the ratification moment (proposals/README was hash-pinned — the fence caught my own hand); doctrine text staged in pr-023; foreign lanes untouched; Owner fields untouched.

## §5 — The generator spec + first live output
bash, coreutils+git only; reads, never writes; two modes (card / --proposals); output is a moment's witness to be quoted, never stored as truth. First run (2026-09-11 03:50) produced §3's evidence by itself: 4× STALE lanes · 32/12 box · 73,424B tax · 43/1 pins honest. **An honest generator diagnoses while it treats.** (Output now English per R15.)

## §6–§9 — Package · metrics · honesty limits · self-attack
pr-023 = six ready-verbatim parts (A boot · B R14 · C LANES · D OWNER-DESK · E template · F generated README), each one Owner word, each with its written killer — **ruled & executed 2026-09-11**. Metrics: boot ≤6KB ✓ (measured 5,893B) · lane collisions → 0 · hand-truth lies → 0 (pins 44/0). Honesty limits: I read indexes+entrances+samples, not all 90 files; the generator is grep-fragile by design and protected by live consumption; every measurement came from the hand that designed the cure — the tool runs for any auditor in a minute, and an independent stranger (SANAD-pattern) is advised. The paper dies if its header conditions fire; nothing in it lowers any wall.
