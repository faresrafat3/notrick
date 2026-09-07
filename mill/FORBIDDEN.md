# FORBIDDEN — one-line purpose: tempting illegal moves the machine refuses (ops 0443-0451, +2 at 0483).
| ID | forbidden move |
|---|---|
| X1 | Asserting "false" on a SUSPENDED entry (C0040). |
| X2 | Asserting "true" on a SUSPENDED entry (C0040). |
| X3 | Using "results are the prices" as a mechanism sentence (C0007). |
| X4 | Emitting a verdict without quoting gate output (MIC-23, C0040). |
| X5 | Removing an entry without WRITE_DOWN (C0048/C0049). |
| X6 | Renaming a primitive to present it as new (F0030). |
| X7 | Posting a QUOTE that is not frozen (no digest) (C0036). |
| X8 | Mixing values across charts (axis name in a wall slot) (I4). |
| X9 | Running a GATE whose criterion text is unrecorded (un-runnable gate). |
| X10 | Accepting a RECEIPT written by the claimer (self-receipt) (C0020). |
Count: 10 ≥ 5 (0477/0479 check).