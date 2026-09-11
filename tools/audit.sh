#!/usr/bin/env bash
# tools/audit.sh — NOTRICK live health card (generated, not law)
# 2026-09-11 · part of research/ergonomics-tower.md §5 · ratified via pr-023 (2026-09-11)
# English-only output per R15 (adopted 2026-09-11).
#
# Philosophy (R14): every count/status/index an agent reads must be generated from disk at
# read time, never hand-maintained. The card is a witness of a moment: quote it in LOG as
# evidence, re-run it on every boot. Reads only — never writes. A failure is filed, not fixed
# silently.
#
# Usage:
#   tools/audit.sh               → full card (~10 lines)
#   tools/audit.sh --proposals   → proposals box table (regenerates proposals/README.md per pr-023-F)

cd "$(dirname "$0")/.." || exit 1   # project root, from anywhere

line(){ printf '%s\n' "$1"; }
now=$(date +%s)
today=$(date '+%Y-%m-%d %H:%M')

if [ "${1:-}" = "--proposals" ]; then
  line "# proposals/ — the proposals box (generated: tools/audit.sh --proposals · $today · not law)"
  line "> Proposals are never edited after filing (templates/PROPOSAL.md:4). Statuses below are read from each file's header at generation time."
  line "> New ID? Scan the full list first — the PR-FILING-INCIDENT lesson (LOG.md)."
  line ""
  line "| File | Status (from its header) |"
  line "|---|---|"
  for f in proposals/pr-*.md proposals/PROPOSAL-*.md proposals/BRK-*.md; do
    [ -f "$f" ] || continue
    st=$(head -12 "$f" | grep -m1 -oiE 'status: [^|»>]*' | cut -c1-60)
    [ -n "$st" ] || st="status: (no status header — fixing it is pr-023-E scope)"
    # a scribed Owner ruling (appended section) supersedes the filed header status;
    # match only the scribed bold form — the template's option list must never match
    if sed -n '/## Owner ruling/,$p' "$f" | grep -qE '^- \*\*APPROVED'; then
      st="status: APPROVED→doctrine (Owner ruling scribed in file tail)"
    fi
    line "| $(basename "$f") | $st |"
  done
  exit 0
fi

line "── NOTRICK HEALTH CARD · generated $today · not law (a moment's witness) ──"

# 1) Version = distance-to-zero
v=$(grep -m1 -oE 'v0\.[0-9]+' VERSION.md)
line "1. VERSION   : $v — $(grep -m1 -A0 'NOW' VERSION.md | cut -c1-80)"

# 2) Doctrine pins (same command as INTEGRITY.md:8-11, verbatim)
pin_out=$(sha256sum -c <(grep -E '^[0-9a-f]{64}' INTEGRITY.md) 2>/dev/null || true)
pins_ok=$(printf '%s\n' "$pin_out" | grep -c ': OK$')
pins_bad=$(printf '%s\n' "$pin_out" | grep -cE ': (FAILED|FAILED open or missing)')
line "2. PINS      : $pins_ok OK / $pins_bad FAILED — a FAILED pin is filed in violations.md, never silently fixed"

# 3) The atomic queue
done_q=$(grep -c '☑' OPS_QUEUE.md); open_q=$(grep -c '☐' OPS_QUEUE.md)
line "3. OPS_QUEUE : ${done_q} ☑ / ${open_q} ☐ open"

# 4) The RUN machine
rcpt=$(ls RUN/receipts/*.json 2>/dev/null | wc -l)
last=$(ls RUN/receipts/*.json 2>/dev/null | sort | tail -1)
lastst=$(grep -m1 -oE '"(status|last_receipt_status)"[^,}]*' "$last" 2>/dev/null | head -1)
line "4. RUN       : $rcpt receipts · last $(basename "$last" 2>/dev/null) — $lastst"

# 5) The proposals box (no hand-maintained status index — see --proposals)
ptotal=$(ls proposals/pr-*.md proposals/PROPOSAL-*.md proposals/BRK-*.md 2>/dev/null | wc -l)
ppend=$(grep -l -iE 'status: ?\**\**(PENDING|proposed-in-file|proposed-in-chat)' proposals/*.md 2>/dev/null | wc -l)
line "5. PROPOSALS : $ptotal files · $ppend awaiting ruling · live index: tools/audit.sh --proposals"

# 6) Lane pulses — mtime is the pulse, touching is the announcement (stigmergy, zero extra writes)
line "6. LANES     : (pulse = state-file mtime · >24h = an artifact, not a live partner)"
for f in RUN/STATE.md bore/runtime/STATE.md hept/runtime/STATE.md research/harness-run/STATE.md; do
  if [ -f "$f" ]; then
    age=$(( (now - $(stat -c %Y "$f")) / 3600 ))
    line "   · $f — last pulse ${age}h ago$([ "$age" -ge 24 ] && echo ' · STALE')"
  else
    line "   · $f — no state file (lane without a measurable pulse)"
  fi
done

# 7) Boot cost — the ruled boot chain (README:5-6 · CONTEXT:5-6)
cb=$(wc -c < CONTEXT.md); ab=$(wc -c < AGENTS.md); fb=$(wc -c < FOUNDATIONAL-BRIEF.md)
line "7. BOOT TAX  : CONTEXT $cb B + AGENTS $ab B + BRIEF $fb B = $((cb+ab+fb)) B before the first lawful act"

# 8) State
line "8. GIT       : $(git rev-parse --short HEAD 2>/dev/null) · $(git status --porcelain | wc -l) uncommitted paths"

line "── end: quote the numbers as they appeared; failures are recorded, never hidden ──"
