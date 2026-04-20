# neurocad-benchmarks

Public benchmark artifacts, evaluation notes, and selected datasets for NeuroCAD.

## Purpose

This repository is the public benchmark layer for NeuroCAD.

It exists to demonstrate engineering rigor, evaluation discipline, and reproducible public-facing artifacts without exposing proprietary training corpora or internal data generation systems.

## Scope

This repository is intended to host:

- selected benchmark subsets
- evaluation protocols and task definitions
- metadata schemas and release notes
- reproducibility notes for public artifacts
- benchmark documentation for partners and technical reviewers

## What this repository does not contain

This repository does not expose:

- full internal corpora
- private simulation generation pipelines
- internal training data infrastructure
- production model internals

The public benchmark surface is meant to be inspectable and credible, while the large-scale private stack remains proprietary.

## Intended structure

As public benchmark releases are published, this repository will be organized around:

- `datasets/` for selected public benchmark artifacts
- `schemas/` for metadata and packaging formats
- `protocols/` for evaluation methodology
- `releases/` for versioned release notes
- `docs/` for benchmark documentation and interpretation

## Status

Initial public scaffold.

The repository is being prepared to host selected benchmark artifacts that represent NeuroCAD's evaluation discipline without disclosing the full internal system.

## Links

- Organization: [github.com/neurocad-eu](https://github.com/neurocad-eu)
- Website: [neurocad.eu](https://neurocad.eu)
- Contact: [office@neurocad.eu](mailto:office@neurocad.eu)
