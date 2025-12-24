# CI signal principles

- Fast feedback beats large suites
- Reliability beats volume
- If a test is flaky, it is either:
  - testing the wrong thing, or
  - asserting too much, or
  - missing testability hooks
- CI should answer: “Is it safe to ship?” not “Did we test everything?”
