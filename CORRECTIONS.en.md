# CORRECTIONS.md — finnish-smart

Project: fhir-fi/finnish-smart
Base branch analyzed: master
Destination fork: https://github.com/admeduardovieira/finnish-smart

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-finnish-001 | No automated tests for FSH/StructureDefinitions | P3 | PROPOSING | Medium | `test/` (new) |
| REA-finnish-002 | SUSHI dependencies pinned as `latest` | P3 | PROPOSING | Low | `sushi-config.yaml` |
| REA-finnish-003 | CI workflows target only `master` | P3 | PROPOSING | Low | `.github/workflows/*.yml` |

## Details of proposed corrections

### REA-finnish-001 — No automated tests for FSH/StructureDefinitions
**Problem:** No tests validate FSH profiles or generated StructureDefinitions.
**Fix:** Add a test suite (e.g., using fsh-tester or simple validation scripts) that checks FSH files compile and key profiles exist.
**Validation:** Run tests against the FSH input; confirm no regressions.

### REA-finnish-002 — SUSHI dependencies as `latest`
**Problem:** `sushi-config.yaml:19-21` uses `latest` for all dependencies, making builds non-reproducible.
**Fix:** Pin dependencies to specific versions known to work with the current IG.
**Validation:** Build the IG with pinned versions; confirm successful generation.

### REA-finnish-003 — CI workflows target only `master`
**Problem:** build.yml and pr-verification.yml only run on `master`.
**Fix:** Consider adding other active branches (e.g., `ci`, `publish`) to the workflow `branches` filter.
**Validation:** Confirm workflows trigger on intended branches.

## Not implemented
None of the above are implemented in this execution; they are proposals for the maintainers.

## Publication plan
- Fork: `admeduardovieira/finnish-smart` (already exists).
- No code changes made in this execution (only audit reports added).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PRs to `fhir-fi/finnish-smart` branch `master`.
