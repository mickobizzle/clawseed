#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$ROOT/runtime" "$ROOT/runtime/logs" "$ROOT/runtime/state"

if [ ! -f "$ROOT/USER.md" ]; then
  cp "$ROOT/templates/USER.template.md" "$ROOT/USER.md"
fi
if [ ! -f "$ROOT/AGENTS.md" ]; then
  cp "$ROOT/templates/AGENTS.template.md" "$ROOT/AGENTS.md"
fi

echo "ClawSeed bootstrap complete."
echo "Next: fill USER.md + AGENTS.md + templates/SECRETS_SETUP.template.md"
