#!/usr/bin/env bash
# citecheck — read-only citation sweep for NOTRICK (R14-class generated truth).
#
# WHAT: verifies every `file.md:NN` / `file.md:NN-MM` reference written in the
# living surfaces resolves to (a) an existing file and (b) an in-range line.
# References INTO CONTEXT.md are counted separately as log-anchors: the decision
# log is append-only and its head is scheduled for re-compaction (pr-024-A), so
# line-refs into it are checked but flagged brittle.
#
# WHY: citation drift is the most-documented pain in this project
# (research/idea-001-anchor-checker.md pain receipts · the 2026-09-10 anchor
# repair · pr-022 existed to fix anchor rot). This mechanizes the manual
# ~15min/round sweep as one read-only command.
#
# HOW: grep-only; reads, never writes; no deps beyond coreutils+git.
#
# MODES:
#   citecheck             sweep living surfaces, print report (exit 1 if drifts)
#   citecheck --self-test plant a known drift in a temp tree and prove the
#                         tool catches it (the known-positive rule: a checker's
#                         "clean" is believed only after it has caught a lie)
#
# QUOTATION RULE: refs inside inline `backticks` or inside ``` code fences are
# quotations (witness text — e.g. a paper citing a broken ref as evidence), not
# live citations; the engine strips them before matching and preserves line
# numbers. Only refs in live prose are swept.
#
# Output is a moment's witness: quote it in LOG, never store it as truth (R14).
# Where a report and a record disagree, the record wins.

set -u
cd "$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
PATTERN='[A-Za-z0-9][A-Za-z0-9_./-]*\.md:[0-9]+(-[0-9]+)?'
CTXPATTERN='[A-Za-z0-9_./-]*CONTEXT\.md:[0-9]+(-[0-9]+)?'

# FROM-scope: the living surfaces an agent reads/cites from. Lane trees
# (bore/ hept/ mill/ well/ phantom/ protocols/) and RUN/ receipts are foreign
# or frozen records — their refs are cited-as-land, not swept.
from_scope() {
  {
    find . -maxdepth 1 -name '*.md' -print
    find research proposals templates mics charters -name '*.md' -print 2>/dev/null
  } | sort -u
}

# engine <file> — emit one line per drift: "<file>:<srcline> -> <ref> (<reason>)"
engine() {
  f="$1"
  [ -f "$f" ] || return 0
  dir=$(dirname "$f")
  tmp=$(mktemp)
  # strip code fences (line count preserved via blanks) + inline backtick spans
  awk 'BEGIN{f=0} /^```/{f=!f; print ""; next} {if(f) print ""; else print}' "$f" \
    | sed 's/`[^`]*`//g' > "$tmp"
  grep -noE "$PATTERN" "$tmp" 2>/dev/null | while IFS= read -r hit; do
    srcline=${hit%%:*}; ref=${hit#*:}
    target=${ref%:*}; lines=${ref##*:}
    # resolve: (a) root-relative, (b) relative to the citing file's dir,
    # (c) unique basename anywhere in the tree (house style writes bare
    # basenames for research/charters files), else ambiguous/missing.
    t=""
    if [ -f "$target" ]; then t="$target"
    elif [ -f "$dir/$target" ]; then t="$dir/$target"
    else
      base=$(basename "$target")
      matches=$(find . -name "$base" -not -path './.git/*' 2>/dev/null)
      count=$(printf '%s\n' "$matches" | grep -c .)
      if [ "$count" -eq 1 ]; then t=${matches#./}
      elif [ "$count" -gt 1 ]; then
        echo "$f:$srcline -> $ref (ambiguous basename: $count matches)"; continue
      else
        echo "$f:$srcline -> $ref (missing file)"; continue
      fi
    fi
    # NR (not wc -l): counts the last line even when no trailing newline
    total=$(awk 'END{print NR}' "$t")
    case "$lines" in
      *-*) a=${lines%-*}; b=${lines#*-}
           if [ "$a" -lt 1 ] || [ "$b" -gt "$total" ] || [ "$a" -gt "$b" ]; then
             echo "$f:$srcline -> $ref (range $lines out of 1..$total)"
           fi ;;
      *)    if [ "$lines" -lt 1 ] || [ "$lines" -gt "$total" ]; then
             echo "$f:$srcline -> $ref (line $lines out of 1..$total)"
           fi ;;
    esac
  done
  rm -f "$tmp"
}

if [ "${1:-}" = "--self-test" ]; then
  tmp=$(mktemp -d)
  printf 'plain ghost2.md:99 here and `ghost.md:99` quoted and real.md:1\n' > "$tmp/a.md"
  printf 'before fence\n```bash\nfenced ghost3.md:99 inside\n```\nafter fence ghost4.md:5\n' > "$tmp/b.md"
  printf 'one line\n' > "$tmp/real.md"
  caught=$(engine "$tmp/a.md" | grep -c 'ghost2\.md:99 (missing file)')
  quoted=$(engine "$tmp/a.md" | grep -c 'ghost\.md:99')
  caught_f=$(engine "$tmp/b.md" | grep -c 'ghost4\.md:5 (missing file)')
  fenced=$(engine "$tmp/b.md" | grep -c 'ghost3\.md:99')
  ok=$(engine "$tmp/real.md" | wc -l)
  rm -rf "$tmp"
  if [ "$caught" -eq 1 ] && [ "$quoted" -eq 0 ] && [ "$caught_f" -eq 1 ] && [ "$fenced" -eq 0 ] && [ "$ok" -eq 0 ]; then
    echo "SELF-TEST PASS: plain drifts caught (2/2) · quoted + fenced refs ignored (0/2) · clean file clean"
    exit 0
  fi
  echo "SELF-TEST FAIL: caught=$caught quoted=$quoted caught_f=$caught_f fenced=$fenced ok=$ok — do not trust this tool (known-positive rule)"
  exit 1
fi

echo "── NOTRICK CITATION SWEEP · generated $(date '+%Y-%m-%d %H:%M') · not law (a moment's witness) ──"
total_refs=0; total_log=0; total_drift=0
drift_file=$(mktemp)
mapfile -t FILES < <(from_scope)
for f in "${FILES[@]}"; do
  refs=$(grep -coE "$PATTERN" "$f" 2>/dev/null); refs=${refs:-0}
  [ "$refs" -eq 0 ] && continue
  d=$(engine "$f")
  nd=0; [ -n "$d" ] && nd=$(printf '%s\n' "$d" | wc -l | tr -d ' ')
  lac=$(grep -coE "$CTXPATTERN" "$f" 2>/dev/null); lac=${lac:-0}
  total_refs=$((total_refs + refs))
  total_log=$((total_log + lac))
  total_drift=$((total_drift + nd))
  [ "$nd" -gt 0 ] && printf '%s\n' "$d" >> "$drift_file"
  printf '%-48s refs=%-4s ctx-anchors=%-3s drifts=%s\n' "$f" "$refs" "$lac" "$nd"
done
echo "── summary: files=${#FILES[@]} · refs=$total_refs · drifts=$total_drift · refs-into-CONTEXT.md(log-anchors)=$total_log ──"
if [ "$total_drift" -gt 0 ]; then
  echo "── drifts (file:srcline -> ref · reason) — findings to file, never silent fixes ──"
  cat "$drift_file"
  rm -f "$drift_file"
  exit 1
fi
rm -f "$drift_file"
echo "── end: clean sweep — quote as appeared; failures are recorded, never hidden ──"
exit 0
