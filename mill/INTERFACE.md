# INTERFACE — one-line purpose: how a later engine would call this skeleton; hooks only, no generator (ops 0472-0473).
The engine (P05+) will implement exactly these hooks over the state set (STATE_SCHEMA fields):
1. open(quote, gateName, slots) → entryID      [O1; fails on off-chart value, missing digest, absent written-go]
2. verify(entryID) → {receipt, honoringCost}    [O2; runs the named gate against frozen inputs]
3. close(entryID) → "CLOSED"|"SUSPENDED"        [O3; requires a receipt; CLOSED only on receipt == gate output]
4. writeOff(entryID, reason, violationLine) → writeDownID  [O4]
5. periodClose(entrySet) → summary              [O5; fails on unfinished entries]
6. reEnter(pair) → newEntryID                   [O6; requires prior STALE detection and a logged decision]
Hooks are pure functions of the state; receipts are raw bytes; verdicts quote gate output. 
No generator, no simulator, no inference exists yet — these are interface hooks only (STATE op 0473).
Executability note (from FAKE_MATH repair): a GATE must have an actual executable criterion; until P05 supplies one, every gate-dependent hook returns "not executable" rather than a fake verdict.