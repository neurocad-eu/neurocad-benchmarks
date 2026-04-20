# Release Policy

## Public release posture

Benchmark releases are published as versioned, inspectable packaging artifacts.

Each public release should include:

- a manifest with stable case identifiers
- matching tabular metadata
- a validation schema
- release notes
- checksum material

## Change rules

- case identifiers are append-only across releases
- release identifiers must be explicit
- packaging changes must be reflected in release notes
- checksum material must be regenerated whenever the archive changes

## Interpretation

Public releases are designed to show packaging rigor and evaluation discipline.

They are not intended to mirror the full private NeuroCAD benchmark estate.
