#!/usr/bin/env bash
# cite.sh — SERIES 2 measurer: prints a file line so a quote can be byte-compared.
# Read-only. May not write anywhere. (R0, 2026-09-08)
#
# USAGE
#   cite.sh <file> <start_line> [end_line]
#   - prints lines start..end (default end = start) verbatim to stdout
#   - no adornment, no markers: the stdout IS the quote
#   - exit 1 + UNRESOLVABLE if the file is missing
#
# EXAMPLES (byte-compare discipline, B2)
#   RUN/tools/cite.sh VERSION.md 1                 # the version line
#   RUN/tools/cite.sh RULES.md 24 25               # R6 verbatim
#   RUN/tools/cite.sh mill/STATE.md 16             # protocol prohibition
#
# WHY THIS EXISTS (Alpha-7 MEASURER slot)
#   A claim is written only after this printed its evidence in-session; the R14 audit
#   re-derives a random 20% of CITATIONS.md using this tool. A quote that this tool
#   cannot reproduce is UNRESOLVABLE and is deleted, not edited.
set -u
f="${1:?need file}"; s="${2:?need start line}"; e="${3:-$s}"
if [ ! -f "$f" ]; then echo "UNRESOLVABLE: $f not found"; exit 1; fi
sed -n "${s},${e}p" "$f"
# obituary: this measurer dies the moment a quote is accepted without its output, or the
# R14 audit finds a citation whose line this tool cannot reproduce — the tool is the
# byte-compare authority (B2), and a quote it cannot print is UNRESOLVABLE, not trusted.