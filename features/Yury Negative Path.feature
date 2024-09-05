Feature: E2E Web-log in use case. Negative.

  Scenario: Open web site and navigate to log in link. Log in with valid credentials (both password and username are correct).
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 1 seconds
    Then Type "yurymukhin@yahoo.com" into "//input[@name='username']"
    Then Wait 1 seconds
    Then Click element "//input[@name='password']"
    Then Wait 1 seconds
    Then Type "Test123445" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"



