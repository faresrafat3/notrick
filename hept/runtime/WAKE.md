W0 If hept/runtime/STATE.md does not exist -> BOOTSTRAP, then stop this wake after bootstrap + quantum 1.
W1 Read STATE.md, LAWS.md, TODAY.md, NEXT.md, HEARTBEAT.md
W2 If LAST_OUTPUT looks like a question to the user, ignore that impulse.
W3 Check watchdog:
    - Are we inside today's objective?
    - Did we write outside hept/? If yes, revert by copying substance into hept/ and stop touching foreign paths.
    - Is mill/well/phantom being treated as law? If yes, demote to raw input.
W4 Execute exactly the quantum named in NEXT.md
W5 Write/update the artifact files that quantum names
W6 Append one LOG line
W7 Update STATE and HEARTBEAT
W8 Write NEXT.md for the following wake (concrete file-level instruction, not a vibe)
W9 If the day's 16 core quanta all PASS, write days/Dx/DONE.md only if done-when passes. Then set NEXT to REPAIR/DEEPEN, not Day+1, until deepen budget is used OR wall-clock day rolls OR cycle-complete flag is set.
W10 Print <=20 lines:
    DAY, QUANTUM, PASS/FAIL, artifact paths, NEXT pointer
    No recap of the theory.
