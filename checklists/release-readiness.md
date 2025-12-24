# Release readiness checklist (fast-moving team)

## Pre-release
- Confirm scope: what changed, what didn’t, and what risks are accepted
- Identify trust-critical areas: correctness, permissions, performance, data formatting, exports
- Decide coverage: smoke vs targeted regression vs exploratory charters

## Verification
- Smoke suite passes (critical journeys)
- Targeted regression for changed areas
- Exploratory testing for edge cases and failure modes
- Validate monitoring/alerts for known risk areas (if available)

## Go/No-go
- Known issues documented with impact + mitigation
- Rollback plan is clear (or release is reversible)
- Post-release ownership and monitoring plan agreed
