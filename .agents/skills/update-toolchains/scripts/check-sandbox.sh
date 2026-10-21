#!/usr/bin/env bash
# Check whether the Vercel Sandbox CLI is available and authenticated.
#
# Exit codes:
#   0  CLI found and `sandbox list` succeeded
#   2  CLI not found
#   3  CLI found but not authenticated/usable
#
# With --print-cli, print only the CLI path on stdout (status stays on stderr).
set -euo pipefail

print_cli=0
if [[ "${1:-}" == "--print-cli" ]]; then
  print_cli=1
fi

find_cli() {
  local candidate
  for candidate in sandbox sbx; do
    if command -v "$candidate" >/dev/null 2>&1; then
      command -v "$candidate"
      return 0
    fi
  done
  for candidate in \
    "$HOME/.local/share/pnpm/bin/sandbox" \
    "$HOME/.local/share/pnpm/bin/sbx" \
    "$HOME/.bun/bin/sandbox" \
    "$HOME/.bun/bin/sbx" \
    "$HOME/.npm-global/bin/sandbox" \
    "/usr/local/bin/sandbox"; do
    if [[ -x "$candidate" ]]; then
      printf '%s\n' "$candidate"
      return 0
    fi
  done
  # npm global bin is usually <prefix>/bin; try the common prefix layout.
  candidate="$(npm root -g 2>/dev/null || true)/../.bin/sandbox"
  if [[ -x "$candidate" ]]; then
    printf '%s\n' "$candidate"
    return 0
  fi
  return 1
}

if ! cli="$(find_cli)"; then
  echo "MISSING: Vercel Sandbox CLI not found (looked for sandbox/sbx in PATH and common global bins)." >&2
  echo "Install it with: npm i -g sandbox   (or pnpm i -g sandbox)" >&2
  exit 2
fi

if ((print_cli)); then
  printf '%s\n' "$cli"
fi

out="$(mktemp)"
trap 'rm -f "$out"' EXIT

if timeout 20 "$cli" list </dev/null >"$out" 2>&1; then
  echo "OK: Vercel Sandbox CLI authenticated ($cli)" >&2
  exit 0
fi

echo "UNAUTHENTICATED: $cli exists but 'list' did not succeed." >&2
echo "Run: $cli login   (or $cli onboard), then re-run this check." >&2
tail -n 5 "$out" >&2 || true
exit 3
