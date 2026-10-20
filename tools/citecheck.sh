#!/usr/bin/env bash
# citecheck — read-only citation sweep for NOTRICK (R14-class generated truth).
#
# WHAT: verifies every `file.md:NN` / `file.md:NN-MM` reference written in the
# living surfaces resolves to (a) an existing file and (b) an in-range line.
#
# THREE CLASSES OF REFERENCE (the tool's contract):
#   LIVE       — a pointer an agent is expected to follow. A broken LIVE ref is a
#                DRIFT: the sweep fails (exit 1).
#   WITNESS    — a quotation OF a reference: the text is talking ABOUT a citation
#                (a drift report, a rule's worked example, a log entry describing
#                the very ref it quotes). Marked in prose by backticks / code
#                fences, or declared in tools/witness.list. A WITNESS ref may
#                quote a broken ref on purpose; it is not a failure.
#   STALE-DECL — an entry in tools/witness.list that no longer matches the file
#                (the line moved or the text changed): the register itself rotted.
#                Reported as a warning, never auto-dropped (R14: no silent fixes;
#                a hand-maintained index must be verified too).
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
#   citecheck --self-test plant known drifts + a declared witness + a stale
#                         register entry, and prove the tool classifies all of
#                         them correctly (the known-positive rule: a checker's
#                         "clean" is believed only after it has caught a lie)
#
# Output is a moment's witness: quote it in LOG, never store it as truth (R14).
# Where a report and a record disagree, the record wins.

set -u
cd "$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
PATTERN='[A-Za-z0-9][A-Za-z0-9_./-]*\.md:[0-9]+(-[0-9]+)?'
WITNESS_LIST="tools/witness.list"

# FROM-scope: the living surfaces an agent reads/cites from. Lane trees
# (bore/ hept/ mill/ well/ phantom/ protocols/) and RUN/ receipts are foreign
# or frozen records — their refs are cited-as-land, not swept.
from_scope() {
  {
    find . -maxdepth 1 -name '*.md' -print
    find research proposals templates mics charters -name '*.md' -print 2>/dev/null
  } | sort -u
}

# witness_declared <file> <srcline> <ref> — is this exact triple declared a witness?
witness_declared(){
  local f="$1" sl="$2" ref="$3"
  [ -f "$WITNESS_LIST" ] || return 1
  grep -qE "^[[:space:]]*${f}:${sl}[[:space:]]+${ref}([[:space:]]|$)" "$WITNESS_LIST"
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
  printf 'declared ghost5.md:42 here\n' > "$tmp/c.md"
  mkdir -p "$tmp/tools"
  printf '%s\n' "$tmp/c.md:1 ghost5.md:42 — declared witness" > "$tmp/tools/witness.list"
  printf '%s\n' "$tmp/a.md:1 ghost7.md:11 — stale entry (not on that line)" >> "$tmp/tools/witness.list"
  orig=$PWD; cd "$tmp"
  caught=$(engine "$tmp/a.md" | grep -c 'ghost2\.md:99 (missing file)')
  quoted=$(engine "$tmp/a.md" | grep -c 'ghost\.md:99')
  caught_f=$(engine "$tmp/b.md" | grep -c 'ghost4\.md:5 (missing file)')
  fenced=$(engine "$tmp/b.md" | grep -c 'ghost3\.md:99')
  ok=$(engine "$tmp/real.md" | wc -l)
  w_yes=$(witness_declared "$tmp/c.md" 1 "ghost5.md:42" && echo yes || echo no)
  w_no=$(witness_declared "$tmp/c.md" 1 "ghost9.md:99" && echo yes || echo no)
  cd "$orig"; rm -rf "$tmp"
  if [ "$caught" -eq 1 ] && [ "$quoted" -eq 0 ] && [ "$caught_f" -eq 1 ] && [ "$fenced" -eq 0 ] \
     && [ "$ok" -eq 0 ] && [ "$w_yes" = "yes" ] && [ "$w_no" = "no" ]; then
    echo "SELF-TEST PASS: plain drifts caught (2/2) · quoted+fenced ignored (0/2) · clean file clean · declared witness found · undeclared not found"
    exit 0
  fi
  echo "SELF-TEST FAIL: caught=$caught quoted=$quoted caught_f=$caught_f fenced=$fenced ok=$ok w_yes=$w_yes w_no=$w_no — do not trust this tool (known-positive rule)"
  exit 1
fi

echo "── NOTRICK CITATION SWEEP · generated $(date '+%Y-%m-%d %H:%M') · not law (a moment's witness) ──"
total_refs=0; total_drift=0; total_witness=0
drift_file=$(mktemp); witness_file=$(mktemp); stale_file=$(mktemp)
mapfile -t FILES < <(from_scope)
for f in "${FILES[@]}"; do
  refs=$(grep -coE "$PATTERN" "$f" 2>/dev/null); refs=${refs:-0}
  [ "$refs" -eq 0 ] && continue
  total_refs=$((total_refs + refs))
  d=$(engine "$f")
  [ -n "$d" ] || continue
  while IFS= read -r row; do
    [ -n "$row" ] || continue
    src=${row%% -> *}
    ref=$(printf '%s' "$row" | sed -E 's/.*-> ([^ ]+) .*/\1/')
    file=${src%%:*}; sl=${src##*:}
    if witness_declared "$file" "$sl" "$ref"; then
      printf '%s\n' "$row" >> "$witness_file"; total_witness=$((total_witness+1))
    else
      printf '%s\n' "$row" >> "$drift_file"; total_drift=$((total_drift+1))
    fi
  done <<< "$d"
done
# stale register entries: declared, but the line no longer carries the ref
if [ -f "$WITNESS_LIST" ]; then
  while IFS= read -r entry; do
    [ -n "$entry" ] || continue
    loc=$(printf '%s' "$entry" | awk '{print $1}')
    ref=$(printf '%s' "$entry" | awk '{print $2}')
    file=${loc%%:*}; sl=${loc##*:}
    if [ ! -f "$file" ] || ! sed -n "${sl}p" "$file" 2>/dev/null | grep -qF "$ref"; then
      echo "   · STALE REGISTER ENTRY: $loc $ref — declared as a witness but the line no longer carries it" >> "$stale_file"
    fi
  done < <(grep -vE '^[[:space:]]*(#|$)' "$WITNESS_LIST" 2>/dev/null)
fi
echo "── summary: files=${#FILES[@]} · refs=$total_refs · DRIFTS=$total_drift · declared-witness=$total_witness ──"
[ -s "$witness_file" ] && { echo "── declared witnesses (quotations of refs, not live citations) ──"; cat "$witness_file"; }
[ -s "$stale_file" ] && { echo "── register rot (declared but no longer matching) ──"; cat "$stale_file"; }
if [ "$total_drift" -gt 0 ]; then
  echo "── DRIFTS (file:srcline -> ref · reason) — findings to file, never silent fixes ──"
  cat "$drift_file"
  rm -f "$drift_file" "$witness_file" "$stale_file"
  exit 1
fi
rm -f "$drift_file" "$witness_file" "$stale_file"
echo "── end: clean sweep — quote as appeared; failures are recorded, never hidden ──"
exit 0
