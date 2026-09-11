# pr-022 — BRIEF/HEADERS REFRESH (polish batch: العقيدة المثبّتة الشاذة مؤقتًا)

> author: G-B (guest: read+propose) · 2026-09-10 · status: **PENDING OWNER — كلمة واحدة ترفعه**
> سبب الوجود: هدف المالك "نضبط المشروع للمسار بدل التلخبطات" — والبنود أدناه **غير قابلة لتنفيذ مباشر**:
> ملفات مثبّتة بالهاش في INTEGRITY.md — أي تحرير بدون لحظة approved-docs مسجّلة = شوابة (V-003 الدرس).
> المرجع السابق: verdict-master.md §ز-6 صف 8 (تعارض الترويسات مع P2) + proposals/pr-013-repin.md (سؤال إعادة التثبيت).

## التعديلات المقترحة (سطر بسطر، بمصدر الحقيقة)

| # | الملف:السطر | النص الحالي (شاذ) | النص المقترح | مصدر الحقيقة |
|---|---|---|---|---|
| 1 | `FOUNDATIONAL-BRIEF.md:16` | "Fuel: 38 provider keys … untested" | "Fuel: 57 provider keys (pr-011 F-1, 2026-09-08) — UNTESTED; preregistration on file (P5 HOLD)" | proposals/pr-011-smoke-call-prereg.md (F-1) |
| 2 | `FOUNDATIONAL-BRIEF.md:20` | "charters/ — … (v1, refining; Owner signature pending)" | "… (v1, refining; **SIGNED into active law 2026-09-06 — P2**)" | RATIFICATION-BATCH-001.md:15 · CONTEXT.md:267-274 |
| 3 | `FOUNDATIONAL-BRIEF.md:49` | open-item 1: "Owner signature on CH-001→004 (batch) — drafted in session." | "DONE — P2 signed 2026-09-06. المتبقي: P3 العتبة · P5 AUTHORIZED · P6 الـGO المكتوب" | RATIFICATION-BATCH-001.md · CONTEXT.md:317-331 |
| 4 | `ONBOARDING.md:9-11` + `AGENTS.md:34-35` | "written but NOT ratified / pending Owner batch signature" | حالة موقّعة (نفس إصلاح صف ز-6/8) | RATIFICATION-BATCH-001.md:15 |
| 5 | `FOUNDATIONAL-BRIEF.md:15` (اختياري) | "Front door: OpenClaw 2026.9.2 (idle)" | "Front door: DSH web 127.0.0.1:3080 (running); OpenClaw CLI present, gateway not running" | CONTEXT.md:61-63 |

## التنفيذ عند الاعتماد (مسار ميكانيكي واحد)
1. كلمة المالك: "اعتمد pr-022" (أو تعديل أي بند).
2. تنفيذ التعديلات حرفيًا كما في الجدول.
3. `sha256sum` جديد للملفات المعدّلة → **re-pin في INTEGRITY.md بنفس اللحظة المسجّلة** (INTEGRITY.md:13-15).
4. مدخل CONTEXT.md يسجل اللحظة + الهاشات الجديدة.

## لماذا هذا بند polish وليس تجميل
أي وكيل جديد يدخل بسلسلة الإقلاع يقرأ في FOUNDATIONAL-BRIEF إن الميثاقات "غير موقعة" — بينما هي
قانون نشط موقّع منذ 2026-09-06. هذا التناقض هو بالضبط "التلخبط" الذي يريد المالك إزالته:
السجل الرسمي يقول شيئًا والواقع الموثّق يقول عكسه. الإصلاح يحتاج تصريحه — وهذا الملف هو التصريح الجاهز.

## Owner ruling (scribed append-only — 2026-09-11)
- **APPROVED into doctrine via the 2026-09-11 approved-docs moment** — Owner typed line
  (verbatim): "تمام موافق واتفق معاك  كلامك صحيح ابداء اعمل الهدف بتاعك واشتغل عليه"
  (استجابة لتقرير ergonomics-tower.md العارض لهذه الحزمة). نُفذت حرفيًا في اليوم نفسه
  (الصفوف 1-5) وأعيد تثبيت الهاشات (INTEGRITY.md) و مدخل CONTEXT مسجل.
