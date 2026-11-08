# REVERSE_ENGINEERING_REPORT — finnish-smart

## A. General diagnosis

### Architecture identified
FHIR Implementation Guide (IG) based on SUSHI for the SMART App Launch mechanism in Finland. Structure:

- `sushi-config.yaml`: SUSHI configuration (id, canonical, name, version, fhirVersion, dependencies, resources, pages, parameters, menu)
- `input/fsh/*.fsh`: FHIR profile definitions in FSH (Patient, Observation, Medication, etc.)
- `input/fsh/*.json`: examples of CapabilityStatement, AuditEvent
- `input/pagecontent/*.md`: IG pages (index, conformance, examples, downloads, versions)
- `input/includes/*.html`: HTML fragments (footer, profile-list-generator)
- `ig.ini`: IG publisher configuration (template)
- `Dockerfile`, `docker-compose.yml`: build environment (Node.js, fsh-sushi, Java, Ruby/Jekyll)
- `.github/workflows/build.yml`: CI for build and publish to GitHub Pages (branch master)
- `.github/workflows/pr-verification.yml`: CI for PR verification (branch master)

### Technologies and dependencies
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4 (fhirVersion: 4.0.1)
- Node.js, fsh-sushi, openjdk-17, ruby-full, jekyll, bundler
- SUSHI dependencies: `hl7.fhir.fi.base: latest`, `hl7.fhir.uv.ipa: latest`, `hl7.fhir.uv.smart-app-launch: latest`
- No automated tests for FSH/StructureDefinitions

### Maintenance state
Last commit: `f9f3ef3 fix: correct workflow name from 'Node.js CI' to 'FHIR IG Build & Publish'`. Upstream default branch: `master`. Repository: `https://github.com/fhir-fi/finnish-smart`. Active history (45 PRs merged, v2.0.0-rc3, etc.).

### Existing testing mechanisms
No automated tests found for FSH profiles or StructureDefinitions. No `test/` folder, no FSH validation script.

### Investigation limitations
- SUSHI/fsh-sushi not installed; IG build not executed.
- REA 6.7.0 not operational in this environment; static analysis only.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-finnish-001 | No automated tests for FSH/StructureDefinitions | P3 | CONFIRMED | repo root |
| REA-finnish-002 | SUSHI dependencies pinned as `latest` (non-reproducible builds) | P3 | CONFIRMED | `sushi-config.yaml:19-21` |
| REA-finnish-003 | CI workflows target only `master` | P3 | CONFIRMED | `.github/workflows/*.yml` |

### Details of confirmed problems

**REA-finnish-001 (P3, CONFIRMED)**: No automated tests validate FHIR profiles defined in FSH (patient.fsh, observation.fsh, medication.fsh, etc.) nor generated StructureDefinitions. No `test/` folder or validation script exists.

**REA-finnish-002 (P3, CONFIRMED)**: `sushi-config.yaml:19-21` declares all dependencies as `latest`:
- `hl7.fhir.fi.base: latest`
- `hl7.fhir.uv.ipa: latest`
- `hl7.fhir.uv.smart-app-launch: latest`

This makes builds non-reproducible — a new version of any dependency may silently break the IG.

**REA-finnish-003 (P3, CONFIRMED)**: Both workflows (build.yml, pr-verification.yml) filter only `branches: [master]`. If the default branch changes or work happens on other branches, CI will not run.

## C. Recurring problems
No recurring public issues found for this repository (checked via commit history and merges).

## D. Undocumented errors
All items in section B are problems not previously documented by the project.

## E. Performance
The IG build is done via Docker/IG Publisher. No runtime performance-sensitive operations (static documentation build).

## F. Technical improvements
- Add FSH/StructureDefinitions validation tests (REA-finnish-001)
- Pin SUSHI dependency versions instead of `latest` (REA-finnish-002)
- Consider including other branches in CI workflows (REA-finnish-003)
- Verify `releaseLabel` vs `releaselabel` consistency (uses `releaseLabel` correctly — no problem)

## G. Execution plan
All corrections are independent and low risk:
1. REA-finnish-001 — add FSH tests (medium effort)
2. REA-finnish-002 — pin dependency versions (low effort)
3. REA-finnish-003 — adjust workflow branches (low effort)

## H. Expected outcome
Reproducible builds, automated FHIR profile validation, broader CI coverage.

**Tools used:** git, gh, PowerShell/terminal, static code inspection.  
**Limitation:** SUSHI not installed; IG build not executed.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\finnish-smart` (clone of fork, branch `fix/documentation-fixes`, upstream default `master`).
