#!/usr/bin/env bash
set -euo pipefail

hits=0
patterns=(
  "AKIA[0-9A-Z]{16}"
  "ghp_[A-Za-z0-9]{20,}"
  "sk-[A-Za-z0-9]{20,}"
  "[0-9]{10,}"
  "@icloud.com"
)

for p in "${patterns[@]}"; do
  if grep -RInE "$p" . --exclude-dir=.git; then
    hits=$((hits+1))
  fi
done

if [ "$hits" -gt 0 ]; then
  echo "Potential sensitive content found ($hits pattern groups hit)."
  exit 1
fi

echo "Safety scan passed."
