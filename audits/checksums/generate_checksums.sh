#!/data/data/com.termux/files/usr/bin/bash

set -euo pipefail

OUTPUT="audits/checksums/sha256_manifest.txt"

echo "----------------------------------"
echo "HHI Checksum Generation (Structural)"
echo "----------------------------------"

echo "Cleaning previous manifest..."
rm -f "$OUTPUT"

echo "Generating checksums..."

find . -type f \
  ! -path "./.git/*" \
  ! -path "./audits/checksums/sha256_manifest.txt" \
  ! -name "*.jsonl" \
  ! -path "./node_modules/*" \
  -exec sha256sum {} \; \
  | sort > "$OUTPUT"

echo "----------------------------------"
echo "Checksums written to: $OUTPUT"
echo "----------------------------------"

echo "Sample output:"
head -n 5 "$OUTPUT" || true

echo "----------------------------------"
echo "Checksum generation complete"
echo "----------------------------------"
