#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="${ROOT_DIR}/dist"
cd "${ROOT_DIR}"
VERSION="$(python3 -c 'import json, pathlib; manifest = json.loads(pathlib.Path("datasets/sample-set/manifest.json").read_text(encoding="utf-8")); print(manifest["release"].replace("sample-set-", ""))')"
ARCHIVE_NAME="neurocad-benchmarks-sample-set-${VERSION}.zip"
ARCHIVE="${OUT_DIR}/${ARCHIVE_NAME}"

mkdir -p "${OUT_DIR}"
rm -f "${ARCHIVE}"
zip -r "${ARCHIVE}" \
  datasets/sample-set \
  schemas/manifest.schema.json \
  protocols/evaluation.md \
  docs/data-card.md \
  docs/methodology.md \
  docs/limitations.md \
  docs/release-policy.md \
  docs/provenance.md \
  "releases/${VERSION}.md"

sha256sum "${ARCHIVE}" | sed "s#${ARCHIVE}#${ARCHIVE_NAME}#" > "${ROOT_DIR}/checksums/sha256.txt"
echo "Packaged ${ARCHIVE}"
