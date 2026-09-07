# WAKE — Every-Wake Protocol (Section 3). Run W0-W10 every wake.

W0 If STATE missing -> BOOTSTRAP, then D1-Q01
W1 Read STATE, LAWS, SITE, NEXT, HEARTBEAT
W2 If SITE.md missing after D1-Q02, you are illegal: recreate from LOG or rerun site choice on raw sources
W3 Watchdog: is this quantum still inside the hole? If not, abort and do a TURN on the same fragment
W4 Execute NEXT quantum
W5 Write artifacts
W6 One LOG line
W7 Update STATE + HEARTBEAT
W8 Write NEXT as a file-level instruction that still names the same site
W9 After 12 core quanta: REPAIR/TURN only. Do not dawn a new research object
W10 Print <=15 lines: DAY, Qid, PASS/FAIL, site path, NEXT. No theory recap
