# Smoke vs Regression (pragmatic approach)

## Smoke (fast signal, every PR or every deploy)
- Auth/login + session stability
- Navigation to key analytics surfaces
- Render of a representative dashboard
- One filter application + refresh persistence
- Basic export (if core)

## Regression (targeted, before release)
- Permission boundaries
- Empty states and data correctness checks
- Time range logic and formatting
- Multi-tenant isolation assumptions
- Browser/device matrix as needed

Principle: keep smoke stable and narrow; avoid flaky checks and high-maintenance assertions.
