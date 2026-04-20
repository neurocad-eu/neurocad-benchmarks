#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="${ROOT_DIR}/dist"
ARCHIVE="${OUT_DIR}/neurocad-benchmarks-sample-set-v0.2.0.zip"

mkdir -p "${OUT_DIR}"
rm -f "${ARCHIVE}"

cd "${ROOT_DIR}"
zip -r "${ARCHIVE}" \
  datasets/sample-set \
  schemas/manifest.schema.json \
  protocols/evaluation.md \
  docs/data-card.md \
  docs/methodology.md \
  docs/limitations.md \
  releases/v0.1.0.md

sha256sum "${ARCHIVE}" | sed "s#${ARCHIVE}#neurocad-benchmarks-sample-set-v0.2.0.zip#" > "${ROOT_DIR}/checksums/sha256.txt"
echo "Packaged ${ARCHIVE}"
