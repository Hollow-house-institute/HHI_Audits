#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

# Only include audit artifacts (markdown + json)
find . -type f \
  \( -name "*.md" -o -name "*.json" \) \
  ! -path "*/.git/*" \
  ! -name "*.sha256" \
  -print0 | sort -z | xargs -0 sha256sum > checksums.sha256

echo "Checksums regenerated (artifact-only scope)"
