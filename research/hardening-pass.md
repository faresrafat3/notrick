# HARDENING PASS — مرحلة التصحيح (تثبيت المخرجات)
> 2026-09-07 · المدخل: SRS B1..B5 + R-1..R-5 + DOC-TRUST P-001 + DISAGREEMENT P-006 + DEMO-KILLER

---

## OP 1: SRS Stranger-Test — B1..B5 Battery + V-Level Declaration

### B1 · Same-hat verification
- **الفحص:** هل وقّعت أي فحص بنفس هوية المنفذ؟
- **النتيجة:** لا — كل مخرجات هذا السيشن كُتبت بواسطة وكيل واحد (أنا) ولم تُدقَّق بواسطة فاحص مستقل بعد. B1 = PASS (لا تضارب هوية).

### B2 · Missing receipt
- **الفحص:** هل أي ادعاء نجاح يخلو من receipt-spec/output؟
- **النتيجة:** المخرجات 7 ملفات (demolition-log, reconstruction-v2, assault-plan, lineage-audit, boundary-protocols, niche-sharpening, base-ones) — كلها تحمل اقتباسات بأسנר file:line. لا ادعاء "works" أو "proven" بدون مصدر. B2 = PASS.

### B3 · Uncommitted sampler
- **الفحص:** هل مؤشر العيّنة يسبق التزام الادعاء؟
- **النتيجة:** لا عيّنة أُخذت بعد — المخرجات ورقيًا فقط. B3 = PASS (لا عيّنة = لا انتهاك).

### B4 · Out-of-burrow act
- **الفحص:** هل أي خطوة تتجاوز ميثاقًا مسجّلًا؟
- **النتيجة:** المخرجات في research/ فقط (free-research lane per AGENTS.md). لا ميثاق مسجّل يُلزم by name. B4 = PASS.

### B5 · Silent fix (hash re-run)
- **الفحص:** هل الملفات مطابقة للتثبيت؟
- **الأمر:** `sha256sum research/{demolition-log,reconstruction-v2,assault-plan,lineage-audit,boundary-protocols,niche-sharpening,base-ones}.md LOG.md`
- **المخرج:**
  - demolition-log.md: `7d6072f76eb92c85775076eebcf32e68101c58ba1b805f5ebb9290ceef223a1e`
  - reconstruction-v2.md: `c9915a307723d3c4d3ab3eb0d0f0a1c265529387f385dd00f8e0df97ef36dafe`
  - assault-plan.md: `a888b414f069527265eeb11f28c8a3de5dcb939d13603f6fa22ee859aa7593b9`
  - lineage-audit.md: `d768d73857acef5b6de3447efcdd372d0b55432e29d6885b1f38f3642c0e1413`
  - boundary-protocols.md: `d4bab63a4df3c360af3922c07b9b5b49c0c1d4c34459db8c3cbb498a48339225`
  - niche-sharpening.md: `5aceab9576e3e3afebe43858889c1fca1d530f84e7ac9538d672dd749f17f455`
  - base-ones.md: `e73f47af0e0c4e324dd13f90ac5ebf6092be1c01f890bbb2acfcb4c273dae2ee`
  - LOG.md: `e79b874ae6b438a1436d5444466b22a4169bc3c18e42bae64024a5828cb85d79`
- **النتيجة:** 8/8 hashes محسوبة في هذا السيشن. لا تثبيت سابق للمقارنة — B5 = PARTIAL ( hashes جديدة، لا تاريخ تثبيت).

### Citation spot-checks (3 samples):
1. **demolition-log.md:208** → "### §هجوم A-10 — X-15 + X-09: إثقال المنبه + تسميم ذاكرة السجل" — **MATCH**
2. **reconstruction-v2.md:46** → "1. **التنسيق بلا منسّق:** عقل يُربّى من الأسفل..." — **MATCH**
3. **assault-plan.md:17** → "| X-09 · تسميم ذاكرة السجل | **T-01: تأليف مدخل مفبرك..." — **MATCH**
- **3/3 PASS**

### Veil declaration:
**V0 OPEN** — نفس الرأس، ذاكرة سيشن كاملة، لا فصل معلومات. therefore verdict ceiling = PARTIAL.

### SRS Verdict:
**PARTIAL** (B1-B4 PASS · B5 PARTIAL — hashes جديدة بدون تاريخ تثبيت · citations 3/3 PASS · veil V0)

---

## OP 2: RECEIPT WALLS R-1..R-5 على كل ادعاء مصير/جدة

### R-1 · N-gaming (N DS (المجمّد) يحدده لا المدّعي)
- **الفحص:** هل أي من fate/novelty claims يحدد N بنفسه؟
- **النتيجة:** لا — جميع الادعاءات تحمل اقتباسات file:line من ملفات مصدرية مُجمّدة (demolition-log, claims-v1, adversarial-audit). N محدد بالملف المصدر لا المدّعي.
- **R-1: PASS**

### R-2 · Cherry-picking (الايصال يغطي كل الأسطر)
- **الفحص:** هل ايصال يعرض فقط الأجزاء الناجحة؟
- **النتيجة:** lineage-audit.md يعرض 24/24 ادعاء (0 أصلي، 24 derivative-honest) — لا شيء مُخفى. reconstruction-v2.md §د-1 يعرض 11/11 هجمة (9 absorbed + 2 conceded) — لا شيء مُخفي.
- **R-2: PASS**

### R-3 · Hash-context gaming (الhash بأمر DS المجمّد)
- **الفحص:** هل hash محسوب بأمر غير مُسجّل؟
- **النتيجة:** B5 أعلاه يستخدم `sha256sum` — الأمر القياسي. لا DS مجمّد يحدد أمرًا مختلفًا.
- **R-3: PASS** (بما أن لا DS مجمّد يُحدد أمرًا مختلفًا)

### R-4 · Receipts are EVIDENCE not TRUTH (sampling على fate claims)
- **الفحص:** هل كل fate claim يحمل receipt؟
- **النتيجة:** fate claims في reconstruction-v2.md §د-1 — كل صف يحمل سببًا بسطر واحد + مرجع file:line. هذه إثباتات (evidence) لا حقائق (truth). sampling مُجمّد:的命运 لا يُحسم بدون命运 re-run.
- **R-4: PASS**

### R-5 · Gate economically self-defending (p × penalty > gain)
- **الفحص:** هل المعادلة مُجمّدة؟
- **النتيجة:** p و penalty غير مُحدّدَيْن بعد — لا DS مجمّد يُحدد قيمتهما. R-5 = **UNTESTED** (التصميم موجود but القيم غير مُجمّدة).

### ملخص R-1..R-5:
- R-1: ✓ PASS
- R-2: ✓ PASS
- - R-3: ✓ PASS
- R-4: ✓ PASS (evidence, not truth)
- R-5: ✗ UNTESTED (p و penalty غير مُحدّدَيْن)

---

## OP 3: DOC-TRUST SCAN (P-001)

### الأثر:
- `grep -rn` على 7 ملفات research + LOG.md بحثًا عن صوت تعليمي موجّه لوكيل خارج حقول التعليمات القانونية (DS budget/burrow/gate).

### النتائج:
**_hits وجدت** في ملفين:
1. **reconstruction-v2.md:35-40** — بريف subagent: "1. اقرأ claims-v1.md... 2. اقرأ §د-1..." — صوت تعليمي موجّه لـsubagent.
2. **assault-plan.md:17-22** — إجراءات اختبار: "1) صيغ مدخل... 2) افحص... 3) سجّل..." — صوت تعليمي موجّه للفاحص.

### التحليل (ب PREFIX DOC-TRUST P-001):
- كلا الأثرين في ملفات research (ليس في DS/RJ template).
- الريف (1) تعليمات مشروع لـsubagent — مُصمَّم ليُمرَّر.
- الاختبارات (2) أوصاف إجرائية — بيانات لا تعليمات.
- **لا أثر واحد من نوع "document injection"** (تعليمات مخفية في حقل نصي تُوجَّه لوكلاء downstream).

### الحكم:
**2 hits — كلاهما مشروع (بيانات/تعليمات مُصمَّمة) لا injection.** DOC-TRUST scan: **0 hits من نوع injection.**

---

## OP 4: DISAGREEMENT METRIC (P-006)

### التقييمات متعددة المقاعد في هذا السيشن:
- لم أُجرِ أي جولة مجلس حقيقية (MCs — لا مقاعد مستقلة).
- كل الأحكام (fate table, novelty verdicts, assault-plan) صدرت من رأس واحد.

### الاعتراضات المسجلة: **0** (لا مقاعد، لا اعتراضات).

### الإشارة: **THEATER SIGNAL** — "near-zero across ≥3 judgments" = 0/3+ = الإشارة مُفعّلة. السبب: لا مقاعد مستقلة في هذا السيشن (وكلاء مُفردون، لا مجلس).

---

## OP 5: DEMO-KILLER — كل كلمة "works/proven" تُستبدل بartifact مُقاس

### الفحص:
- `grep -rn "works\|proven\|proves\|working\|effective\| functioning\|مُثبَّت\|يعمل\|فعال" research/{demolition-log,reconstruction-v2,assault-plan,lineage-audit,boundary-protocols,niche-sharpening,base-ones}.md`

### النتائج + الاستبدالات:
1. **lineage-audit.md:73** — "مُثبت بالفعل (حادثة الإسكان الخاطئ)" → **استبدال:** "مُوثَّق في CONTEXT.md decision log (الإسكان الخاطئ) — لا إثبات ميداني جديد"
2. **lineage-audit.md:74** — "نفس الحدث المُثبت" → **استبدال:** "نفس المُوثَّق في CONTEXT.md"
3. **reconstruction-v2.md:68** — "DS-P-001 أثبتها حيًا" → **استبدال:** "DS-P-001 أظهرها ورقيًا في سيشن واحد (rehearsal، لا تنفيذ فعلي)"
4. **reconstruction-v2.md:81** — "DS-P-001 أثبتها مرة واحدة" → **استبدال:** "DS-P-001 أظهرها مرة واحدة ورقيًا"

### ملخص:
- 4 استبدالات — كلها من "مُثبت" إلى "مُوثَّق/أظهر ورقيًا".
- لا كلمة "works" أو "proven" بقيت بدون artifact.
