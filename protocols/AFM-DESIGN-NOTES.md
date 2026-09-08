# Arc-Fed MIC (AFM) — Design notes for T4
Methodology: Arc-Fed MIC — MIC activates ONLY when ARC event enters slot.
Seed MICs: mic-07 (budget event) → budget-counter activates; mic-11 (doc without ID) → id-formatter activates; mic-23 (gate claim) → gate-runner activates; mic-31 (3 same-axis tags) → axis-tagger → migration to Prime.
Each activation requires Alpha-7 questions answered (same as T1-T3 mechanism).
Will produce AFM-v1.md after T3 verifies.
