# r2-verifier

- Q1 | MATCH | `sed -n '9p' research/assault-plan.md` → "المعايير مجمّدة قبل أي تنفيذ + 2026-09-07. أي اختبار مكتوب بعد هذا السطر = باطل." — byte-identical to recorded.
- Q2 | MATCH | `sed -n '98p' research/reconstruction-v2.md` → "## §د-4 — سجل التغييرات v1→v2" — byte-identical, incl. heading markers.
- Q3 | MATCH | `sed -n '136p' research/lineage-audit.md` → "> **الحصيلة الحقيقية:** ليست في الادعاءات الفردية (كلها منقول) بل في التوليف — تطبيق stigmergy + blackboard + contract-net + Minsky على حوكمة وكلاء AI في بيئة قابلة للكتابة. هذا التوليف هو الجحر الفارغ الذي يملكه NOTRICK. لكن التوليف ليس CL مفردًا — إنه بنية النظام ككل." — byte-identical incl. ">" prefix.
- Q4 | MATCH | `sed -n '21p' mill/VERDICT.md` → "Chosen: R4 (foreigner, double-entry), by the scores in SCORES.md (16 vs R1's 13). R2 and R3 eliminated by rule (SCORES.md eliminations). No synthesis wording is present anywhere: R4 was chosen over R1, and R1's deferral posture was rejected, not absorbed." — byte-identical.
- Q5 | MATCH | `sed -n '7p' mill/BINDING.md` → "5. THE VERDICT TEXT IS FROZEN (op 0378); reopening a killed reading requires a KILL_REASON logged in CONTRA." — byte-identical.
- Q6 | MATCH | `grep -n 'RJ-001' RULES.md | head -3` → first line "27:## R7 — Birth on demand (niche law; per RJ-001, progressive birth is strategy, not law)" — byte-identical to recorded first line (further hits at :29 exist but were not cited).

Summary: MATCH 6 / MISMATCH 0 / UNRESOLVABLE 0.
