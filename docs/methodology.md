# Methodology

## Public methodology stance

The goal of this repository is not to expose the private internal evaluation stack.

The goal is to publish enough structure that an external reviewer can understand:

- what a public release contains
- how benchmark cases are identified
- how packaging boundaries are maintained
- how release integrity is checked

## Public release components

Each benchmark release should include:

- a versioned manifest
- stable case identifiers
- tabular metadata
- representative case descriptors
- a validation schema
- release notes

## Stability principles

- public case identifiers should not be reused
- release boundaries should be versioned
- schema changes should be explicit
- checksums should be regenerated for packaged artifacts
