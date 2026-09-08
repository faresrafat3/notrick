#!/usr/bin/env bash
# count.sh — SERIES 2 disinterested MEASURER. Read-only: recomputes every contested
# number from the repo. May not write anywhere. (R0, 2026-09-08)
set -u
REPO="${1:-/home/fares/Projects/notrick}"
cd "$REPO" || { echo "UNRESOLVABLE: cannot cd $REPO"; exit 1; }

echo "total_md=$(find . -name '*.md' -not -path './.git/*' | wc -l)"
echo "total_files=$(find . -type f -not -path './.git/*' | wc -l)"
for d in mill phantom hept bore well research charters mics proposals templates; do
  printf "%s_md=%s\n" "$d" "$(find "$d" -name '*.md' 2>/dev/null | wc -l)"
done
echo "fence_file_lines=$(wc -l < mill/FENCE.md 2>/dev/null || echo MISSING)"
echo "fence_data_rows=$(grep -cE '^\| F[0-9]{4}' mill/FENCE.md 2>/dev/null || echo MISSING)"
echo "integrity_hash_lines=$(grep -cE '^[0-9a-f]{64}' INTEGRITY.md 2>/dev/null || echo MISSING)"
echo "integrity_header_claim=$(grep -cE 'Pinned hashes' INTEGRITY.md 2>/dev/null || echo MISSING)"
echo "context_bytes=$(wc -c < CONTEXT.md 2>/dev/null || echo MISSING)"
echo "head_sha=$(git rev-parse HEAD 2>/dev/null || echo MISSING)"
echo "run_receipts=$(ls RUN/receipts/ 2>/dev/null | wc -l)"
echo "queue_false=$(grep -c '\"passes\": false' RUN/QUEUE.json 2>/dev/null || echo MISSING)"
# obituary: this measurer dies the moment a round reports a count it did not print;
# the tool is the disinterested MEASURER (Alpha-7) — its stdout is the only legal source
# of the contested numbers (fence rows, pins, file counts), and later edits to it must
# be reviewed as gate tampering.