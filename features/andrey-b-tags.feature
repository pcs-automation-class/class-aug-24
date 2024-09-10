Feature: Test login functionality

  @smoke
  Scenario: First scenario
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds

  @regression
  Scenario: Second scenario
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds

  @smoke @regression
  Scenario: Third scenario
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds

    @api
    Scenario: Get weather
      Given Get weather in "San Francisco"