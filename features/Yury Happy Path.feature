Feature: E2E Web-log in use case. Positive.

  Scenario: Open web site and navigate to log in link. Log in with valid credentials (both password and username are correct).
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 1 seconds
    Then Type "yurymukhin@yahoo.com" into "//input[@name='username']"
    Then Wait 1 seconds
    Then Click element "//input[@name='password']"
    Then Wait 1 seconds
    Then Type "Test1234!" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"


     Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 3 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Verify presents of element "//div[text()='Email is required']"
    Then Wait 3 seconds
    Then Verify presents of element "//div[text()='Password is required']"
      