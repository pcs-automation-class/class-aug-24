Feature: Test login functionality

  Scenario: Login with correct credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 1 seconds
    Then Type "ann.magzumova@gmail.com" into "//input[@name='username']"
    Then Wait 1 seconds
    Then Click element "//input[@name='password']"
    Then Wait 1 seconds
    Then Type "$RyidKze" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 2 seconds
    Then Verify page by title "Profotolizer - Projects"

  Scenario: Verify message Email and password is required
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 3 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Verify presents of element "//div[text()='Email is required']"
    Then Wait 3 seconds
    Then Verify presents of element "//div[text()='Password is required']"

  Scenario: Login with incorrect credentials (username)
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 3 seconds
    Then Type "test@gmail.com" into "//input[@name = 'username']"
    Then Wait 1 seconds
    Then Type "$RyidKze" into "//input[@name = 'password']"
    Then Wait 1 seconds
    Then Click element "//button[text() = ' Login']"
    Then Wait 1 seconds
    Then Verify presents of element "//p[text() = 'Invalid username or password']"
    Then Wait 1 seconds

    Scenario: Login with incorrect credentials (password)
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 3 seconds
    Then Type "ann.magzumova@gmail.com" into "//input[@name = 'username']"
    Then Wait 1 seconds
    Then Type "1234567" into "//input[@name = 'password']"
    Then Wait 1 seconds
    Then Click element "//button[text() = ' Login']"
    Then Wait 1 seconds
    Then Verify presents of element "//p[text() = 'Invalid username or password']"
    Then Wait 1 seconds
