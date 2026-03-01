#!/usr/bin/env bash
set -euo pipefail

echo "Validating seed repo for private residue..."
if grep -RIn "mikeobryan\|8159936498\|privaterelay\|@icloud.com" .; then
  echo "Potential private residue detected" >&2
  exit 1
fi
echo "OK"
