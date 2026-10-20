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

# age helpers (2026-10-20 · lead, declared in LOG/CONTEXT): days since the last commit
# and since a file's last write. A missing age prints UNKNOWN — never 0 (a zero age
# would read as "the tree moved today" and be false).
age_days_of_git_head(){
  local t; t=$(git log -1 --format=%ct 2>/dev/null)
  [ -n "$t" ] || { echo UNKNOWN; return; }
  echo $(( (now - t) / 86400 ))
}
age_days_of_file(){
  local t; t=$(stat -c %Y "$1" 2>/dev/null)
  [ -n "$t" ] || { echo UNKNOWN; return; }
  echo $(( (now - t) / 86400 ))
}

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
vdesc=$(grep -m1 'NOW' VERSION.md | sed -E 's/^[[:space:]]*[-*]+[[:space:]]*//; s/^\*\*v[0-9.]+ \(NOW\)\*\*[[:space:]]*[—–-][[:space:]]*//')
line "1. VERSION   : $v — $vdesc"

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
# the head/log split of CONTEXT.md: the head is what a boot must read; the decision log
# is history that grows on every append. Both numbers are shown — the whole-file tax is
# what the ruled chain costs today, the head-scoped tax is what a bounded boot costs.
ctx_head=$(awk '/^## Decision log/{print NR; exit}' CONTEXT.md)
ctx_head_b=0
[ -n "$ctx_head" ] && ctx_head_b=$(head -n $((ctx_head-1)) CONTEXT.md | wc -c)
line "7. BOOT TAX  : CONTEXT $cb B + AGENTS $ab B + BRIEF $fb B = $((cb+ab+fb)) B before the first lawful act"
if [ -n "$ctx_head" ] && [ "$ctx_head_b" -gt 0 ]; then
  line "   · CONTEXT split: head $ctx_head_b B (lines 1-$((ctx_head-1))) · decision log $((cb-ctx_head_b)) B ($(( (cb-ctx_head_b)*100/cb ))% of the file) · head-scoped chain tax $((ctx_head_b+ab+fb)) B — the log is history, not boot state (research/ergonomics-39d-audit.md §2)"
fi

# 8) State
line "8. GIT       : $(git rev-parse --short HEAD 2>/dev/null) · $(git status --porcelain | wc -l) uncommitted paths"

# 9) AGE — the dormancy instrument (R14 counts what is there; ages say how long it has waited).
#    §1-§8 numbering is FROZEN (other documents cite "audit.sh §7" for the boot tax): AGE is appended,
#    never renumbered. Everything here is generated from disk at read time; a missing age is
#    reported as UNKNOWN, never as zero.
line "9. AGE       : $(age_days_of_git_head)d since last commit · $(age_days_of_file LOG.md)d since last LOG entry · $(age_days_of_file CONTEXT.md)d since last CONTEXT entry"
# 9a) proposals: unruled count + the oldest + how many have been waiting a long time
unruled=0; oldest_name=""; oldest_days=0; nodate=0; over14=0
for f in proposals/pr-*.md proposals/PROPOSAL-*.md proposals/BRK-*.md; do
  [ -f "$f" ] || continue
  b=$(basename "$f")
  # A scribed ruling = a line under "## Owner ruling" carrying a fate word AND an ISO
  # date. The bold-only match missed pr-024 (its ruling line is unbolded) and over-counted
  # the box by one; the date requirement excludes the template's empty-by-right option
  # list and the Arabic placeholder line (both carry fate words, neither a date).
  if sed -n '/## Owner ruling/,$p' "$f" | grep -E '^-' \
       | grep -E '(APPROVED|REJECTED|HELD|RULED)' \
       | grep -qE '[0-9]{4}-[0-9]{2}-[0-9]{2}'; then
    continue   # ruled (scribed form with a date) — not waiting
  fi
  unruled=$((unruled+1))
  # filed-date: any ISO date on a filed/date-labelled header line; fallback = the first
  # ISO date anywhere in the header block (marked "header date" — unlabelled, not a lie)
  d=$(head -12 "$f" | grep -iE '(filed|dated|date)' | grep -m1 -oE '[0-9]{4}-[0-9]{2}-[0-9]{2}')
  [ -n "$d" ] || d=$(head -12 "$f" | grep -m1 -oE '[0-9]{4}-[0-9]{2}-[0-9]{2}')
  if [ -n "$d" ]; then
    days=$(( (now - $(date -d "$d" +%s 2>/dev/null || echo $now)) / 86400 ))
    [ "$days" -ge 14 ] && over14=$((over14+1))
    if [ "$days" -gt "$oldest_days" ]; then oldest_days=$days; oldest_name="$b (filed $d, ${days}d)"; fi
  else
    nodate=$((nodate+1))
  fi
done
line "   · PROPOSALS: $unruled unruled · oldest ${oldest_name:-UNKNOWN} · $over14 waiting ≥14d"
[ "$nodate" -gt 0 ] && line "   · $nodate header(s) carry no parseable filed-date — age UNKNOWN, not zero"
# 9b) items past their OWN pre-registered expiry (the arc's Omega rule, enforced by an instrument)
exp_hits=$(grep -l -iE 'expir' proposals/*.md 2>/dev/null | while read -r f; do
  lim=$(grep -oiE '(expir[a-z]*|hard limit|حدٌّ مطلق|حد مطلق|انقضاء)[^0-9]{0,60}[0-9]{4}-[0-9]{2}-[0-9]{2}' "$f" | grep -oE '[0-9]{4}-[0-9]{2}-[0-9]{2}' | head -1)
  [ -n "$lim" ] || continue
  if [ "$lim" \< "$(date '+%Y-%m-%d')" ]; then
    echo "   · PAST OWN EXPIRY: $(basename "$f") (limit $lim · $(( (now - $(date -d "$lim" +%s)) / 86400 ))d past) — arc Omega rule: filed, not ignored"
  fi
done)
[ -n "$exp_hits" ] && line "$exp_hits"
# 9c) dormancy verdict — silence is a state, not an absence
dorm=$(age_days_of_git_head)
if ! printf '%s' "$dorm" | grep -qE '^[0-9]+$'; then
  line "   · DORMANCY: UNKNOWN (last-commit age not computable) — never 'none'; silence is a state, not an absence"
elif [ "$dorm" -ge 7 ]; then
  line "   · DORMANCY: ${dorm}d without a commit — a wait with no age shown is a blind wait (OWNER-DESK.md)"
elif [ "$dorm" -ge 1 ]; then
  line "   · DORMANCY: ${dorm}d without a commit (threshold 7d)"
else
  line "   · DORMANCY: none — the tree moved today"
fi

line "── end: quote the numbers as they appeared; failures are recorded, never hidden ──"
