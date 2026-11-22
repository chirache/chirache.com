#!/usr/bin/env bash
set -euo pipefail

ZOLA_VERSION="${ZOLA_VERSION:-0.23.6}"

if ! command -v zola >/dev/null 2>&1; then
  ZOLA_DIR="$(mktemp -d)"
  curl -fsSL "https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz" \
    | tar -xz -C "$ZOLA_DIR"
  export PATH="$PATH:$ZOLA_DIR"
fi

npm run build
