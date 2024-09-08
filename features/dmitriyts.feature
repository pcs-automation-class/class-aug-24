Feature: Test login functionality

  Scenario: Login with correct credentials
    Given Open "https://profitolizer.com/"
    Then Click element "//a[@class='header-link _btn__link']"
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Type "vasian12345" into "//input[@name='password']"
    Then Click element "//button[@type='submit']"
    Then Verify presents of element "//span[text()='vasianw']"

  Scenario Outline: Log in with correct credentials
    Given Open "https://profitolizer.com/"
    Then Click element "//a[@class='header-link _btn__link']"
    Then Type "<username>" into "//input[@name='username']"
    Then Type "<password>" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 3 seconds
    Then Verify page by title "<title>"
    Examples:
      | username          | password  | title        |
      | vasianw@mail.ru   | vasian12345   | Profotolizer - Projects |
      | pcs.automationclass+1@gmail.com | Qwerty7+1 | Profotolizer - Projects |
      | pcs.automationclass+2@gmail.com | Qwerty7+2 | Profotolizer - Projects |


  Scenario: Login with incorrect credentials(invalid password)
    Given Open "https://profitolizer.com/"
    Then Wait 4 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 4 seconds
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Wait 1 seconds
    Then Type "wasian12345" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 4 seconds
    Then Verify presents of element "//div[@id='message_8']"

  Scenario: Login without username
    Given Open "https://profitolizer.com/"
    Then Wait 4 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 4 seconds
    Then Type "vasian12345" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 4 seconds
    Then Verify presents of element "//div[text()='Email is required']"


  Scenario: Login without password
    Given Open "https://profitolizer.com/"
    Then Wait 4 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 4 seconds
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 4 seconds
    Then Verify presents of element "//div[text()='Password is required']"