# pr-023 — ERGONOMICS PACKAGE (الترابيسة: إقلاع أرخص، لينات بلا تصادم، مالك بسطح قرار واحد)

> author: ضيف-التصميم (ZCode / GLM-5.3-Flash — guest: read+propose) · filed: 2026-09-11 · status: **PENDING OWNER — ستة أجزاء، كل جزء بكلمة واحدة، والتبني الجزئي مسموح بالتصميم**
> boot-gate (مطابق لأول رد): v0.00001 · guest: read+propose · no execution, no runtime, no Owner-by-right fields
> **التصميم الكامل وأدلته المقيسة:** research/ergonomics-tower.md — والأداة المُختبرة بتشغيلين حيين: tools/audit.sh
> **الشقيق السابق:** pr-022 (يُعتمد أولًا — يصلح شواذ الترويسات؛ هذه الحزمة لا تتداخل معه، تبني فوقه)
> **المنهج:** كل جزء أدناه نص جاهز-حرفي يُطبَّق كما هو بلا تحرير حر عند الاعتماد — وتُعاد تثبيت INTEGRITY في اللحظة نفسها (قاعدتها INTEGRITY.md:13-15). المرجع السابق لنمط الحزمة: pr-022 وpr-021 (author/status/touches).

## لماذا هذه الحزمة الآن (سطر واحد)

ضريبة إقلاع 73,424B مقيسة آليًا، ولينات كلها STALE >41س، وصندوق عروض بلا فهرس حالة، وترويسة "no proposals yet" الكاذبة — كلها أمراض قاستها الأداة اليوم (ergonomics-tower.md §1·§3·§5)، وكلها تُغلق بنصوص جاهزة أدناه دون أن تخفض أي جدار.

---

## الجزء A — ONBOARDING.md v2 (الإقلاع المولَّد + مسارات الأدوار + عادة الإغلاق)

**الملف:** ONBOARDING.md (مثبَّت: `6fd5333c…` — يعاد تثبيته عند الاعتماد) · **نوع الفعل:** إضافة قسم بعد الترويسة مباشرة، دون مساس بفقرات "الحالة/المسموح/الممنوع/لماذا" الحالية (تبقى حرفيًا).

```markdown
## The generated boot card (v2 — pr-023-A; in force ONLY after the Owner's word)

0. Run `tools/audit.sh` first; read its ~10 lines — generated disk-truth (version ·
   doctrine pins · queues · lane pulses · boot tax). The card is a witness of a moment:
   quote it in LOG, never hand-edit it, re-run it on every boot. If the card and a
   record disagree, the record wins.
1. Role paths (after the card): guest → README → AGENTS → this file → proposals/;
   lane-runner → RUN/STATE.md → QUEUE.json → last receipt → RUN/NEXT.md → RUN/WALL.md;
   verifier → audit.sh → INTEGRITY check → research/breaker-log.md;
   the Owner → OWNER-DESK.md (when ratified).
2. The ruled chain (CONTEXT → AGENTS → BRIEF) remains FULLY in force for AUDIT and for
   everything that touches doctrine. Until the Owner adopts this part, the ruled chain
   wins exactly as written — skipping it is not authorized by this file.
3. Accretion habit (leave the tower swept): end every session with (1) receipts landed
   in research/, (2) one "lesson → law" line in LOG.md, (3) a fresh audit.sh run quoted
   in LOG.md. Work that scatters without a pointer is work the next agent pays for twice.
```

**القاتل:** لو لم ينخفض قياس BOOT TAX (audit.sh §7) عند أول إقلاع ملتزم بعد الاعتماد — يُسحب الجزء بسطر واحد ويعود النص السابق، مسجلًا.

---

## الجزء B — RULES.md: قانون R14 (الحقيقة المولَّدة)

**الملف:** RULES.md (مثبَّت: `2b70b7b4…`) · **نوع الفعل:** إلحاق قانون بعد R12 (append-only بحسب ترويسة RULES نفسها). **لا تصادم مع R13/doc-trust** (pr-014): doc-trust يعالج ثقة الوكيل في *محتوى* المستندات ضد الحقن؛ R14 يعالج *الأعداد والفهارس المعروضة* — متكاملان.

```markdown
## R14 — Generated truth (the count-law)
Any count, status, index, or tally presented to agents or the Owner on an authoritative
surface MUST be generated from the records at read time (a tool's verbatim output) or
live-computed — hand-maintained counts on such surfaces are banned, because a live tree
with a static count is a lie on a timer (born from: V-003, INTEGRITY "42"≠44;
proposals/README "no proposals yet" vs 32 files; the static-counts-rot lesson, 2026-09-06).
A broken generator is a broken gate: its failure is filed, never silently re-trusted.
A generated card is a witness of a moment, quotable per-run — never a law; where a card
and a record disagree, the record wins.
Falsifier: if a generated surface is caught lying to its reader before the records do,
this law dies into the obituary registry and the surface returns to hand-maintenance
with its rot on the record.
```

**القاتل:** مكتوب داخل القانون نفسه.

---

## الجزء C — LANES.md (لوحة النبض — تحقيق البند 10 من قائمة المالك: R-1 قانون التزامن)

**الملف:** جديد في الجذر · **النص الكامل الجاهز:**

```markdown
# LANES — لوحة النبض (توليدية عند الاعتماد · pr-023-C)

> آلية النبض: mtime ملف حالة اللين هو نبضه — اللمس هو الإعلان (stigmergy: صفر كتابة إضافية).
> اللوحة تُعرض من tools/audit.sh §6، لا تُصان يدويًا (R14 عند اعتمادها).
> >24 ساعة بلا نبض = أثر لا شريك حي: اقرأه، لا تنسّق معه، ولا تستولِ على عمله صامتًا —
> التقارب القانوني على الإغلاق نفسه + سطر LOG (سابقه المُلزم: فجوة 14h، RUN/STATE.md:11،
> وقاعدة obituary RUN/STATE.md:32-34: الاستئناف الصامت لدورة مكتملة هو الفشل المُصطاد).
> كل لين يُبقي آخر سطر في ملف حالته بصيغة: HOLDS: {ما يحمله الآن} — يعرضه المدقق.

| اللين | ملف النبض | niche |
|---|---|---|
| RUN machine | RUN/STATE.md | آلة الجولات والاستلامات R0..R14 |
| bore | bore/runtime/STATE.md | مخبر الحفرة (site locator · hole doctrine) |
| hept | hept/runtime/STATE.md | مخبر السجل الصادق (RECORD/CRITERION/TRACE) |
| harness-run | research/harness-run/STATE.md | زميل البحث الضيف (السيشن الموحِّدة) |

(لين جديد = سطر هنا + ملف حالة؛ لين بلا ملف حالة = بلا نبض قابل للقياس — يُسجَّل كأثر.)
```

**القاتل:** لو رجعت تصادمات الازدواج (نمط P-012) بعد اعتماد اللوحة، يُسحب الجزء ويُحال للسجل.

---

## الجزء D — OWNER-DESK.md (سطح القرار الواحد — فهرس إحالات، لا قرار)

**الملف:** جديد في الجذر · **النص الكامل الجاهز:**

```markdown
# OWNER-DESK — سطح القرار الواحد (فهرس إحالات · لا قرار هنا · pr-023-D)

> كل قرار معلق له سطر واحد هنا + مؤشره لملفه + "السطر الذي يحسمه". التفاصيل لا تُكرَّر
> (الازدواج مرض) — هذا الفهرس يُحدَّث بإلحاق/شطب سطر عند كل حكم، ويُراجَع عند كل إقلاع.
> التسلسل المقترح لا التزام: ruling-sequence.md (لحظتان + مسار أسطر) · الرموز "1A 2B" تعمل بأي ترتيب.

| القرار المعلق | يحسمه سطر | أين | كلفة التأجيل |
|---|---|---|---|
| P3 العتبة الأولى | قيمة واحدة | RATIFICATION-BATCH-001.md Part 3 | العقيدة بلا عتبة |
| P4 الاختراق | TEXT-UNTIL-THEN أو تعريف | Part 4 | أطول بند معلق |
| P5 الوقود | "P5: AUTHORIZED" | Part 5 | الوقود يبقى مغلقلًا |
| P6 الـGO المكتوب | نص GO حرفي | Part 6 | صفر تشغيل (قانون الطور لا عطل) |
| تحريك النسخة v0.0001 | سطر مالك | VERSION.md | — |
| القائمة 15 | رموز | ruling-sequence.md | V-003 يتعفن كل جولة (بند 11 أرخصها) |
| pr-022 ترويسات | "اعتمد pr-022" | proposals/pr-022 | كل إقلاع يقرأ كذبة موقّعة |
| pr-023 إريغونوميكس | "اعتمد pr-023: A C …" | proposals/pr-023 | ضريبة الإقلاع تبقى 73KB |
| pr-021 سَنَد | حكم | proposals/pr-021 | توحيد العقيدة معلق |
| X0003 (pr-010) | حكم المصير | proposals/pr-010 | D-3 يبقى مقفولًا |
| العروض pr-001..020 | حالة كل عرض | proposals/README (عند اعتماد F) | صندوق أعمى |

(قرار معلق بلا سطر هنا = عيب في هذا الملف — يُسجَّل ويُصلَح بإلحاق، لا بصمت.)
```

**القاتل:** لو ظهر قرار معلق خارج الفهرس في أي تدقيق، يُسحب الجزء.

---

## الجزء E — templates/PROPOSAL.md v2 (حالة موحدة قابلة للعدّ)

**الملف:** templates/PROPOSAL.md (مثبَّت: `f6986aba…`) · **نوع الفعل:** سطر واحد في قسم Meta + قائمة الحالات الموحدة (تستبدل التعدد الحي: `proposed-in-file`/`PENDING OWNER`/`Status:`/بلا حالة — 18 ملفًا من 32، شاهده جدول `--proposals`).

```markdown
- **status:** {PENDING OWNER | APPROVED→doctrine {date} | REJECTED {reason} | HELD | EXPIRED (جلستان بلا رد — arc:63-64)}
  (الحقل الأخير في الترويسة الأولى (≤12 سطرًا) — يقرؤه tools/audit.sh --proposals حرفيًا؛
  كل صيغة أخرى = بلا حالة على السطح المولَّد)
```

**القاتل:** لو أخفق الجدول المولَّد في قراءة الحالات بعد اعتماد القالب، يُسحب الجزء.

---

## الجزء F — proposals/README.md يُولَّد لا يُصان (إصلاح الكذبة الحية) + إعادة تثبيت

**الملف:** proposals/README.md — **مثبَّت بالهاش (`51caac2a…`) وترويسته الحالية كاذبة**: "no proposals yet — the inbox starts empty" مقابل 32 ملفًا اليوم. **عمدًا لم ألمسه**: أي تحرير مباشر = mismatch جديد (V-003 نمط)؛ فالمحتوى الجاهز أدناه هو خرج `tools/audit.sh --proposals` الحرفي (2026-09-11 03:52) — يُكتب في الملف عند الاعتماد ويُعاد تثبيت الهاش في اللحظة نفسها:

```
# proposals/ — صندوق العروض (مولَّد: tools/audit.sh --proposals · 2026-09-11 03:52 · ليس قانونًا)
> العروض لا تُحرَّر بعد الإيداع (templates/PROPOSAL.md:4). الحالة أدناه مقروءة من ترويسة كل ملف لحظة التوليد.
> ID جديد؟ افحص القائمة كاملة أولًا — درس PR-FILING-INCIDENT (LOG.md).

| الملف | الحالة (من ترويسته) |
|---|---|
| pr-001-proposal-template.md | status: proposed-in-file · touches: templates/PROPOSAL.md ( |
| pr-002-quorum-tiers.md | status: proposed-in-file · touches: research/hypotheses-led |
| pr-003-measurers.md | status: proposed-in-file · touches: research/decision-revie |
| pr-004-paper-rj-quorum.md | status: proposed-in-file · touches: NONE (ruling request on |
| pr-005-cheap-receipts.md | status: proposed-in-file · touches: templates/DS.md + mics/ |
| pr-006-receipt-attacks-and-math.md | status: proposed-in-file · parent: PR-005 · touches: NONE  |
| pr-007-the-crossing.md | status: proposed-in-file · parents: PR-002/003/004/005/006  |
| pr-008-veiled-eye.md | status: proposed-in-file · parents: PR-005/006/007 · touch |
| pr-009-srs-methodology.md | status: proposed-in-file · parents: PR-008 (Veiled Eye) ·  |
| pr-010-stale-reentry.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-011-regency.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-011-smoke-call-prereg.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-012-four-deliverables-completion.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-012-integrity-semantics.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-013-repin.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-014-r13-doc-trust.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-015-heir-ch001.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-016-heir-ch002.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-017-heir-ch003.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-018-heir-ch004.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-019-violation-closure.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-020-proposal-expiry.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| pr-021-sanad-unification.md | status: PENDING OWNER — لا يُقرّ شيئًا ولا  |
| pr-022-brief-refresh.md | status: **PENDING OWNER — كلمة واحدة ترفعه** |
| PROPOSAL-SERIES-T1-T5.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| PROPOSAL-T1-HEIR-CLAUSE.md | Status: proposed-in-file · Touches: charters/ch-001..004 (v |
| PROPOSAL-T5-AI1S.md | Status: PROPOSED — requires Owner ratification (R8) + veri |
| BRK-001.md | status: active (axiomatic)` |
| BRK-002.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| BRK-003.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| BRK-004.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
| BRK-005.md | status: (بلا ترويسة حالة — إصلاحها بند pr-023-E) |
```

(عند الاعتماد: يُعاد التوليد لحظة الكتابة بالتاريخ الجديد — النص أعلاه عينة حية، لا نص مجمد.)

---

## التنفيذ عند الاعتماد (مسار ميكانيكي واحد — نفس مسار pr-022)

1. كلمة المالك: **"اعتمد pr-023: A C D"** (أي مجموعة أحرف — التبني الجزئي مسموح بالتصميم).
2. تطبيق الأجزاء المحكومة **حرفيًا كما في هذا الملف** — لا تحرير حر (العروض لا تُحرَّر بعد الإيداع، وتُنفَّذ كما كُتبت).
3. `sha256sum` للملفات المعدلة/الجديدة الملحقة بالعقيدة → **إعادة تثبيت INTEGRITY.md في اللحظة نفسها** (قاعدتها INTEGRITY.md:13-15؛ الجديد يُثبَّت أو يُعلن استثناءه بمدخل).
4. مدخل CONTEXT.md (التاريخ + الأجزاء المعتمدة + الهاشات) + سطر LOG — والنسخة لا تتحرك (لا باب منها في VERSION scale).

## العُيّ المسجلة سلفًا (قبل الحكم — L8)

- **المتجه:** الحزمة من يد تستفيد من اعتمادها؛ أدلتها من أداة كتبتها اليد نفسها.
- **البديل/الثمن:** الأداة بخارجها (bash/coreutils/git — لا اعتماد خفي) وقابلة لإعادة التشغيل من أي مدقق في دقيقة؛ والغريب المستقل (نمط SANAD-STRANGER) يُنصح به قبل الحكم — كل جزء يحمل قاتله المكتوب فالحكم الخطأ يُعكس فرديًا بلا فكّ الحزمة.
- **الثمن الصادق:** الجزء A يعدّل *عادة* الإقلاع لا السلسلة المحكومة (تبقى حرفيًا للتدقيق) — أرخص تغيير ممكن بأكبر أثر مقيس؛ والثمن إن فشل: أسماء ملفات جديدة في الجذر (LANES/OWNER-DESK) تُحذف بسطر واحد.

## Owner ruling (scribed append-only — 2026-09-11)
- **APPROVED (A–F) into doctrine via the 2026-09-11 approved-docs moment** — Owner typed line
  (verbatim): "تمام موافق واتفق معاك  كلامك صحيح ابداء اعمل الهدف بتاعك واشتغل عليه"
  (استجابة لتقرير ergonomics-tower.md). نُفذت الأجزاء الستة حرفيًا في اليوم نفسه؛
  LANES/OWNER-DESK معفات من التثبيت بإعلان (أسطح حية)؛ audit.sh معفى (يحميه الاستهلاك الحي)؛
  R14 قانون حي؛ V-003 عولج دبوسه ضمن اللحظة (44 OK / 0 FAILED) والسجل الباتق باقٍ.
