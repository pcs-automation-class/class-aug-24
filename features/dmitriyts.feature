Feature: Test login functionality

  Background:
    Given Open "https://profitolizer.com/"
    Then Wait 50 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 30 seconds

  Scenario: Login with correct credentials
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Type "vasian12345" into "//input[@name='password']"
    Then Click element "//button[@type='submit']"
    Then Wait 10 seconds
    Then Verify presents of element "//span[text()='vasianw']"

  Scenario Outline: Log in with right credentials
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
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Wait 1 seconds
    Then Type "wasian12345" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 4 seconds
    Then Verify presents of element "//div[@id='message_8']"

  Scenario: Login without username
    Then Type "vasian12345" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 4 seconds
    Then Verify presents of element "//div[text()='Email is required']"


  Scenario: Login without password
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 4 seconds
    Then Verify presents of element "//div[text()='Password is required']"


  Scenario: Create new project
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Type "vasian12345" into "//input[@name='password']"
    Then Click element "//button[@type='submit']"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"
    Then Fill out following information
      | project       | start_date | description      | dimension | duration |
      | first project | 09/12/2024 | My first project | Month     | 2 Years  |
    Then Fill out following information with keys
      | key                 | value            |
      | Project Name        | first project 1  |
      | Start date          | 09/12/2024       |
      | Project description | My first project |
      | Period Dimension    | Month            |
      | Project Duration    | 2 Years          |
    Then Click element "//button[text()=' Save'][not(contains(@class,'me-2'))]"
    Then Wait 5 seconds