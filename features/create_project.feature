Feature: Test login functionality


  Scenario: Login with correct credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
#    Then Wait 1 seconds
    Then Type "pcs.automationclass@gmail.com" into "//input[@name='username']"
#    Then Wait 1 seconds
    Then Type "Qwerty7" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
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