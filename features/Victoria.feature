Feature: Test login functionality

  Scenario: Login with valid credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 2 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 2 seconds
    Then Type "v333111@yahoo.com" into "//input[@name='username']"
    Then Type "12345" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 3 seconds
    Then Verify page by title "Profotolizer - Projects"
    Then Wait 2 seconds

  Scenario: Login with invalid credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 2 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 2 seconds
    Then Type "test@test.com" into "//input[@name='username']"
    Then Type "test" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 3 seconds
    Then Verify page by title "Profotolizer - Login"
    Then Wait 2 seconds

  Scenario: Login without Username
    Given Open "https://www.profitolizer.com"
    Then Wait 2 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 2 seconds
    Then Type "test" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 3 seconds
    Then Verify page by title "Profotolizer - Login"
    Then Wait 2 seconds

  Scenario: Verify message Password is required
    Given Open "https://www.profitolizer.com"
    Then Wait 2 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 2 seconds
    Then Type "v333111@yahoo.com" into "//input[@name='username']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify presents of element "//div[text()='Password is required']"
    Then Wait 2 seconds
