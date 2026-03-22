#!/data/data/com.termux/files/usr/bin/bash
find audits -type f -exec sha256sum {} \\; > audits/checksums/sha256_manifest.txt
