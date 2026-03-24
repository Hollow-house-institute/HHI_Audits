#!/data/data/com.termux/files/usr/bin/bash

OUTPUT="audits/checksums/sha256_manifest_new.txt"

find . -type f \
  ! -path "./.git/*" \
  ! -path "./.github/*" \
  ! -name "*CHECKSUMS.sha256" \
  ! -name "*sha256_manifest*.txt" \
  -print0 \
| sort -z \
| xargs -0 sha256sum > "$OUTPUT"
