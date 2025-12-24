# Risk map for embedded analytics

Highest risk (trust killers):
- Incorrect numbers or misleading “almost correct” states
- Permission leaks or tenant isolation issues
- Silent failure modes (empty state looks like real data)
- Performance regressions that block interaction
- Export mismatch vs UI

High risk:
- Filter logic, caching, refresh consistency
- Time range and timezone handling
- Data formatting and rounding

Approach:
- Prioritise coverage by impact and likelihood
- Automate stable, repetitive checks (smoke/regression)
- Use exploratory testing for new features and edge cases
