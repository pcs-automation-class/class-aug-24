Feature: Create new project tests

  Scenario: Login with correct credentials
    Given Open "https://www.profitolizer.com"
#    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
#    Then Wait 1 seconds
    Then Type "pcs.automationclass@gmail.com" into "//input[@name='username']"
#    Then Wait 1 seconds
    Then Type "Qwerty7" into "//input[@name='password']"
#    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"
