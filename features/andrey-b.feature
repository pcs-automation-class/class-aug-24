Feature: Test login functionality

  Scenario: Login with correct credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
    Then Type "pcs.automationclass@gmail.com" into "//input[@name='username']"
    Then Type "Qwerty7" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"

  Scenario: Verify message Email is required
    Given Open "https://www.google.com"
    Then Wait 3 seconds
    Then Type "aaaaa" into "//textarea[@title='Search']"
    Then Wait 1 seconds
    Then Click element "//div[@class='FPdoLc lJ9FBc']//input[@value='Google Search']"
    Then Wait 3 seconds
    Then Click element "//div[text()='Images']"
    Then Wait 3 seconds

  Scenario Outline: Login with correct credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 3 seconds
    Then Click element "//a[text()='Login']"
    Then Type "<username>" into "//input[@name='username']"
    Then Type "<password>" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 3 seconds
    Then Verify page by title "<title>"
    Examples:
      | username                        | password  | title                   |
      | pcs.automationclass@gmail.com   | Qwerty7   | Profotolizer - Projects |
      | pcs.automationclass+1@gmail.com | Qwerty7+1 | Profotolizer - Projects |
      | pcs.automationclass+2@gmail.com | Qwerty7+2 | Profotolizer - Projects |
