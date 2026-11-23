#!/usr/bin/env bash
set -euo pipefail

ISO="${1:-}"
if [[ -z "$ISO" || ! -f "$ISO" ]]; then
  echo "Usage: $0 path/to/nexus.iso" >&2
  exit 2
fi

echo "[1/3] File identification"
file "$ISO"

echo "[2/3] ISO boot catalog"
xorriso -indev "$ISO" -report_el_torito as_mkisofs

echo "[3/3] SHA-256"
sha256sum "$ISO"
