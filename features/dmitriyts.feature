Feature: Test login functionality

  Scenario: Login with correct credentials
    Given Open "https://profitolizer.com/"
#    Then Wait 3 seconds
    Then Click element "//a[@class='header-link _btn__link']"
#    Then Wait 3 seconds
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
#    Then Wait 1 seconds
    Then Type "vasian12345" into "//input[@name='password']"
#    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
#    Then Wait 3 seconds
    Then Verify presents of element "//span[text()='vasianw']"


  Scenario: Login with incorrect credentials(invalid password)
    Given Open "https://profitolizer.com/"
    Then Wait 3 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 3 seconds
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Wait 1 seconds
    Then Type "wasian12345" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 3 seconds
    Then Verify presents of element "//div[@id='message_8']"

  Scenario: Login without username
    Given Open "https://profitolizer.com/"
    Then Wait 3 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 3 seconds
    Then Type "vasian12345" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 3 seconds
    Then Verify presents of element "//div[text()='Email is required']"


  Scenario: Login without password
    Given Open "https://profitolizer.com/"
    Then Wait 3 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 3 seconds
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 3 seconds
    Then Verify presents of element "//div[text()='Password is required']"