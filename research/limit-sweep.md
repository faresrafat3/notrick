# LIMIT SWEEP — سلوك العقيدة عند ست نقاط ضغط (G3)
> سيشن S2-20260908-01 · 2026-09-08 · المدخل: RULES.md (نصوص مطابقة عبر claims-v1 §ب-1 + فحص OP-055 29/29) · INTEGRITY.md كاملًا · ZERO-DAY-RUNBOOK.md:34-53 · adversarial-audit.md (X-09/X-10/X-12/X-14) · arc-protocol.md:63-66 · ten-axis-knowledge-map.md:6-7 · RUN/receipts/R001.json (حادثتا drift حيتان) · state-audit-2026-09-06.md §أ-4/5 · RATIFICATION-BATCH-001.md · regency-doctrine.md.
> قانون المنهج: كل اشتقاق حصيلة منطقية ميكانيكية لنص مقتبس — موسوم [استنتاج-من-النص]؛ **صفر سلوك مُقاس** — هذا ليس محاكاة نتائج (L4) بل قراءة عواقب القوانين؛ كل حكم BREAKS مسنود إما بحادثة حية موثقة أو باختبار paper قابل للنقض (cross-ref assault-plan T-0x).

## §1 — n=1 (وكيل واحد بلا سرب)

**المقتبس:** RULES.md:40 (R9): "Action is public: it requires at least ONE other seat to witness or object. A judgment made in complete isolation... is not a system act — it is a private opinion and cannot be cited." · adversarial-audit.md:129-134 (X-10): "all seats run the same model... → correlated blind spots → unanimous approvals that FEEL like scrutiny and are echo."

**الاشتقاق [استنتاج-من-النص]:** وكيل وحيد لا يملك مقعدًا ثانيًا → لا فعل نظامي ممكن أصلًا (كل نتيجته رأي خاص غير قابل للاستشهاد) · المجلس غير قابل للاستخدام (أربعة مقاعد بدماغ واحد = صدى موثق كنمط غش) · ARC يعمل ذاتيًا (الوكيل له arc شخصي) · طبقات الإشراف تعمل (BOOT GATE + violations ذاتي-التسجيل) · R3/R5/R10 كلها تعمل فرديًا.

**الحكم: HOLDS-BY-DESIGN.** السعة تنهار لكن الصدق لا ينكسر — العقيدة تتوقع هذه الحالة وتمنع الغش (ادعاء فعل نظامي منفرد ممنوع نصًا). الفجوة القتالية لهذا السيناريو مختبَرة مسبقًا: T-05 في assault-plan.md:21 (اقتباس BOOT GATE صحيح + انتهاك GUEST — هل الإشراف الميكانيكي يمسك؟).

## §2 — n=1000 (سرب ضخم)

**المقتبس:** ten-axis:6 (Gause): "two entities in one burrow → one dies/reshapes" · RULES.md:6-9 (R1): "Transaction costs decide" · adversarial-audit.md:154-159 (X-12): "the swarm floods the Owner with ratification requests; fatigue converts sovereignty into a rubber stamp... The system's own success is the attack vector" · X-02 (فيضان NO NICHE — demolition-log A-07).

**الاشتقاق [استنتاج-من-النص]:** عند 1000 وكيل: (أ) تصادم الجحور يُصبح قاعدة لا استثناء — فحص Gause لكل ولادة يتضخم كلفةً (R1: تكاليف المعاملات تحكم)؛ (ب) X-12 ينتقل من خطر إلى حتمية — طابور التصديق يمتلئ أسرع من أي مالك؛ (ج) **الفجوة الحقيقية: العقيدة بلا قانون تزامن** — لا نص في RULES/charters ينظم كتابة وكيلين متوازيين في نفس الملف؛ سلوك اليوم الآمن (سيشنتان متوازيتان) جاء من قانون L5 في توجيه الوصاية (خارج مستندات العقيدة) وليس من RULES.

**الحكم: BREAKS (جزئي — موثق بحادثة حية).** الدليل الحي: LOG.md (دورة 1): كاتب موازٍ نفّذ OP-048..051 بعد ضمّتي بـ7 دقائق — التعارض أُدير بقانون خارج-العقيدة. **صف القرار R-1:** تقنين claim-before-write + append-only interleave في العقيدة (عرض أو صف قرار).

## §3 — Owner-AFK سنة كاملة

**المقتبس:** RATIFICATION-BATCH-001.md:23-29 (P5 HOLD · P6 NOT YET) · arc-protocol.md:63-64: "a proposal unanswered in 2 Owner sessions auto-becomes 'HELD — expired', filed, not silently ignored" · violations.md:5-6 (أحكام V-001/V-002 فارغة بحق) · RUNBOOK:46-47 (only hands).

**الاشتقاق [استنتاج-من-النص]:** الوقود لا يُختبر أبدًا (P5) → العقلة تبقى ورقية 12 شهرًا · العروض تموت آليًا بعد جلستين (عُيّ ARC يعمل بلا مالك — جيد) · الشوابات تتراكم مفتوحة (فتحها بيد مالك — انظر pr-011 D-2) · النسخة مجمّدة · طابور القرارات ينمو · العمل الورقي مستمر (هذه السيشن دليل حي: OP-001..058 أُفرغت والمالك غائب).

**الحكم: DEGRADES-BY-DESIGN (التخفيف مصمم غير مصادق).** pr-011-regency.md (D-1..D-5) هو الترياق المرفوع للمالك — لا صف قرار جديد.

## §4 — hash-storm (عواصف عدم-تطابق INTEGRITY)

**المقتبس:** INTEGRITY.md:5-6: "Any doctrine file whose hash below mismatches on a re-check = TAMPERING or unlogged change. A mismatch is NEVER silently fixed: file it in violations.md verbatim, Owner rules." · INTEGRITY.md:14: "Re-pin ONLY after an Owner approved-docs moment" · INTEGRITY.md:24: "Pinned hashes (sha256) — 42 files" تشمل 11 ملفًا في research/ (أسطر 46-58: session-closeout · adversarial-audit · arc-protocol · crossword-engine · decision-review · hypotheses-ledger · proposal-cross-exam · provider-exchange-note · rcvm · rj-001 · ten-axis) · state-audit §أ-5 صف أ-4/5: "INTEGRITY.md عدّ ثابت (42/43/44) — العدد انتقض | باقٍ".

**الاشتقاق [استنتاج-من-النص]:** ملفات research/ ممر كتابة قانوني (STATE.md:13) ومع ذلك مُثبَّتة في القائمة — كل كتابة قانونية في ملف pinned = mismatch = شوبة "TAMPERING or unlogged change" نصًا. عاصفة (تعديل جماعي مشروع أو drift حي — وقد ثبت أن الشجرة حية: R001 "the tree 422→455 files DURING the sweep") → عشرات الشوابات دفعة واحدة → فتح كل واحدة بيد المالك (INTEGRITY:6) → X-12 يتحقق ذاتيًا: نجاح النظام في إنتاج المعرفة هو نواقصه نفسها. والعدد نفسه انتقض فعلًا (42/43/44 — باقٍ في state-audit). القفل الشامل يجمد البحث أو يغرق المالك.

**الحكم: BREAKS (مسنود بحادثة حية — انقلاب العدد الموثق).** **صف القرار R-2 + pr-012:** تقسيم مجموعة التثبيت: (أ) عقيدة-مجمدة (RULES · charters · templates · VERSION · AGENTS · ONBOARDING · ZERO-* · INTEGRITY · violations) تبقى pinned عالميًا؛ (ب) مخرجات research/ تُثبَّت لكل جولة في استلامها (نمط R001: head_at_close + anti_stub_scan) لا في ملف عالمي واحد.

## §5 — quote-war (وكيلان يقتبسان نفس الملف باقتباسين متعارضين، R10)

**المقتبس:** RULES.md:46 (R10): "Every new claim must intersect already-placed entries... A claim that contradicts a settled entry is rejected even if beautiful." · R001 negative_results: "live drift defeats timestamp-free quotes" · R001 failure_mode_named: "two rows (S-07/S-25) are true only at a timestamp".

**الاشتقاق [استنتاج-من-النص]:** حكم R10 يفترض أن "المدخل المستقر" ثابتًا — لكن الشجرة حية: اقتباسان متعارضان لنفس الملف يمكن أن يكونا صحيحين معًا في لحظتين مختلفتين، والشبكة المتقاطعة لا تحمل محور زمان. الحكم بين الاقتباسين = إعادة فتح الملف في أي لحظة ثالثة — التي قد تختلف عن الاثنتين. R1 اصطدم بهذا حيًا وحذف صفًا (S-09b) لأنه تعذر حسمه. مدّيات pr-010-NOTE-1 (انزياح أسطر ch-002 وAGENTS وarc) من نفس الجذر: citations بلا محور زمان.

**الحكم: BREAKS (جزئي — مثبت حيًا مرتين: R001 + pr-010-NOTE-1).** **صف القرار R-3 (يدخل pr-012 أيضًا):** قانون محور-الزمان للاقتباس: كل اقتباس يحمل (نص + file:line + mtime أو sha256-لحظة-الاقتباس)؛ R10 يحكم على "المدخل المستقر عند اللحظة t" — التعارض بين لحظتين ليس تناقضًا بل تحديثًا يحتاج approved-docs أو إعادة تثبيت.

## §6 — empty-queue (كل الطوابير ☑ ولا مالك)

**المقتبس:** RUN/QUEUE.json definition_of_done: "every round R0..R14 has passes:true with receipts..." · OPS_QUEUE.md (OP-001..058 كلها ☑ — فُرغت ودُقّقت دورة 3) · توجيه الوصاية (حلقة P2/P3 + مولدات G1/G3/G5).

**الاشتقاق [استنتاج-من-النص + دليل حي]:** الطابور الذري فارغ → الحلقة تنتقل إلى P2 (مهمات السلسلة) تلقائيًا: RUN R1 نُفذ من الكاتب الموازي (استلام R001)، G2 نُفذ في دورة 4، G3 (هذا الملف) الآن — النظام ينتج عملاً ورقيًا محكمًا بلا أي قرار مالك، ويجمع القائمة التي تنتظره.

**الحكم: HOLDS (يعمل الآن — هذا التشغيل نفسه هو الاختبار).** لا صف قرار؛ المطلوب الوحيد: قائمة مالك حية (HANDBACK-S2.md مُحدّثة دورة 4).

## §7 — صفوف القرار الناتجة (تُضاف إلى verdict-master §ز-6)

| # | البند | المصدر | نوع القرار |
|---|---|---|---|
| 11 | R-1: تقنين قانون التزامن (claim-before-write + append-only interleave) في العقيدة — اليوم يعيش خارجها في توجيه الوصاية | LOG.md دورة 1 (حادثة التعارض الحية) · STATE.md:13 (قائمة الكتابة لا تنظم التزامن) | دفعة-مؤجلة |
| 12 | R-2: تقسيم مجموعة تثبيت INTEGRITY (عقيدة عالمية ↔ research لكل-جولة في استلامها) | INTEGRITY.md:14,24,46-58 · state-audit §أ-5 أ-4/5 (42/43/44 انتقض) | دفعة-مؤجلة → pr-012 |
| 13 | R-3: قانون محور-الزمان للاقتباس (نص + file:line + mtime/sha256-لحظة) في R10 | R001 negative_results + failure_mode_named · pr-010-NOTE-1 | دفعة-مؤجلة → pr-012 |

## §8 — هجوم ذاتي (L8)
- **المتجه:** "مسح حدود ورقي" يشتق سلوك نظام من نصوصه — أقرب إلى الفقه من القياس؛ والمدّعي هو نفسه الكاتب (نمط X-09: من يكتب الذاكرة يملكها).
- **الجرح:** أحكام HOLDS قد تكون مطمئنة ذاتية — "العقيدة تنجو على الورق" لا تساوي أنها تنجو حيًا؛ ن=1000 وAFK-سنة لم تحدثا فعلًا.
- **البديل/الثمن:** (أ) كل حكم مسنود بنص مقتبس لا برأيي — الحكم لا يقف على تقديري؛ (ب) حكما BREAKS مسنودان بحادثتين حيتين موثقتين (R001 + انقلاب العدد) لا باستنتاج مجرد؛ (ج) كل حكم يربط باختبار paper قائم (T-05) أو باختبار يوم-الصفر مستقبلي — فالسيفاير الحي: عند أول تشغيل حقيقي تُعاد الأحكمة الستة ضد القياس؛ التناقض يُسجل شوابة. الثمن: البحث هنا احتمالي حتى يوم-الصفر — وهذا قانون الطور.
