from __future__ import annotations

import csv
import json
from pathlib import Path

from jsonschema import Draft202012Validator


ROOT = Path(__file__).resolve().parents[1]
MANIFEST_PATH = ROOT / "datasets" / "sample-set" / "manifest.json"
SCHEMA_PATH = ROOT / "schemas" / "manifest.schema.json"
METADATA_PATH = ROOT / "datasets" / "sample-set" / "metadata.csv"


def main() -> None:
    manifest = json.loads(MANIFEST_PATH.read_text(encoding="utf-8"))
    schema = json.loads(SCHEMA_PATH.read_text(encoding="utf-8"))

    Draft202012Validator(schema).validate(manifest)

    with METADATA_PATH.open("r", encoding="utf-8") as handle:
        rows = list(csv.DictReader(handle))

    case_count = manifest["case_count"]
    assert case_count == len(manifest["cases"]), "Manifest case_count mismatch"
    assert case_count == len(rows), "Metadata row count mismatch"
    assert manifest["release"].startswith("sample-set-v0."), "Unexpected release naming"

    manifest_ids = {case["case_id"] for case in manifest["cases"]}
    metadata_ids = {row["case_id"] for row in rows}
    assert manifest_ids == metadata_ids, "Manifest and metadata case IDs differ"

    release_notes = ROOT / "releases" / f'{manifest["release"].replace("sample-set-", "")}.md'
    assert release_notes.exists(), "Release notes missing for manifest release"

    print(f"Validated benchmark release with {case_count} cases")


if __name__ == "__main__":
    main()
