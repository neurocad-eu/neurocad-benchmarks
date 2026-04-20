# Evaluation Protocol

## Purpose

This document defines the public-facing evaluation posture for benchmark artifacts released through this repository.

## Goals

- make benchmark packaging inspectable
- make task intent explicit
- make release boundaries stable
- allow external reviewers to understand what a public sample set represents

## Public benchmark checks

Each public release should document:

- release identifier
- schema version
- case count
- task families covered
- packaging format
- known exclusions

## Non-goals

This repository does not publish:

- internal scoring infrastructure
- private model selection logic
- full data generation methodology

## Review stance

Public releases are meant to support:

- packaging validation
- metadata inspection
- benchmark structure review
- high-level evaluation diligence
