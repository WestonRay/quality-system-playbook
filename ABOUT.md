## How I work (Week 1 / Month 1)

### Week 1 — establish signal and shared understanding
- Align on goals: what “quality” means for this product (trust, correctness, permissions, performance)
- Build a lightweight risk map: identify trust-killers (wrong numbers, permission leaks, misleading empty states, slow/failed renders, export mismatches)
- Review current CI signal and test suite health (flakiness, runtime, coverage intent)
- Define release readiness basics: smoke vs targeted regression vs exploratory charters
- Agree on an incident loop: how issues are reported, reproduced, validated, and converted into prevention

### Month 1 — make it repeatable and sustainable
- Stabilise and tighten the smoke suite around critical journeys (fast, narrow, reliable)
- Add targeted regression coverage based on change risk (not “test everything”)
- Improve defect reporting standards: reproducible steps, evidence, impact framing, and clear ownership
- Create simple runbooks/checklists that survive pace: release readiness, triage/validation, and post-incident learning
- Track a few practical metrics to keep quality honest:
  - flaky test rate / reruns
  - time-to-signal in CI
  - escape rate for trust-critical issues
  - repeat-incident patterns and prevention actions

Predictability = stable CI results, repeatable smoke/regression, known residual risk, and fewer “surprises” in production.
