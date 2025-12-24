Feature: In-product analytics - reliability and trust

  Background:
    Given the user is authenticated
    And the user belongs to tenant "Acme"
    And the dataset "Orders" exists for tenant "Acme"

  Scenario: User can view a dashboard with valid data
    When the user opens the "Revenue Overview" dashboard
    Then the dashboard loads successfully
    And the charts render within an acceptable time
    And KPI values are displayed with correct formatting

  Scenario: Permission boundary - restricted user cannot access sensitive metrics
    Given the user has role "Viewer"
    When the user opens the "Profit Breakdown" dashboard
    Then access is denied
    And the UI shows a clear permission message
    And no sensitive values are displayed

  Scenario: Empty state is explicit and non-misleading
    Given the dataset "Orders" has no records for date range "Last 24 hours"
    When the user opens the "Revenue Overview" dashboard
    Then the dashboard loads successfully
    And an empty state explains that no data is available for the selected range
    And the UI does not display placeholder values as real data

  Scenario: Filters change results deterministically
    When the user applies filter "Country = NL"
    And the user applies filter "Status = Paid"
    Then the displayed KPIs update
    And the filter state is visible and reversible
    And the results are consistent after page refresh

  Scenario: Export reflects the same data as the UI
    When the user exports the dashboard as CSV
    Then the exported data matches the UI values for the same filters
    And the export includes metadata about filters and time range

  Scenario: Resilience - partial backend failure is visible and actionable
    Given the metrics service returns an error for one widget
    When the user opens the "Revenue Overview" dashboard
    Then the dashboard loads with unaffected widgets
    And the failing widget shows a clear error state
    And the UI suggests a retry or support path
