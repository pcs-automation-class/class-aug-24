Feature: Test login functionality

  Background:
    Given Open "https://www.profitolizer.com"
    Then Wait 2 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 1 seconds

  Scenario: Login with correct credentials
    Then Type "ann.magzumova@gmail.com" into "//input[@name='username']"
    Then Type "$RyidKze" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 2 seconds
    Then Verify page by title "Profotolizer - Projects"
    Then Wait 1 seconds

  Scenario: Verify message Email and password is required
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify presents of element "//div[text()='Email is required']"
    Then Wait 1 seconds
    Then Verify presents of element "//div[text()='Password is required']"
    Then Wait 1 seconds

  Scenario: Login with incorrect credentials (username)
    Then Type "test@gmail.com" into "//input[@name = 'username']"
    Then Wait 1 seconds
    Then Type "$RyidKze" into "//input[@name = 'password']"
    Then Wait 1 seconds
    Then Click element "//button[text() = ' Login']"
    Then Wait 1 seconds
    Then Verify presents of element "//p[text() = 'Invalid username or password']"
    Then Wait 1 seconds

    Scenario: Login with incorrect credentials (password)
    Then Type "ann.magzumova@gmail.com" into "//input[@name = 'username']"
    Then Type "1234567" into "//input[@name = 'password']"
    Then Wait 1 seconds
    Then Click element "//button[text() = ' Login']"
    Then Wait 1 seconds
    Then Verify presents of element "//p[text() = 'Invalid username or password']"
    Then Wait 1 seconds

  Scenario Outline: Log in with correct credentials
    Then Type "<username>" into "//input[@name='username']"
    Then Type "<password>" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "<title>"
    Examples:
    | username | password | title |
    | ann.magzumova@gmail.com | $RyidKze | Profotolizer - Projects |
    | ann.magzumova+1@gmail.com | $RyidKze+1 | Profotolizer - Projects |
    | ann.magzumova+3@gmail.com | $RyidKze+3 | Profotolizer - Projects |


  Scenario: Create new project
    Then Type "ann.magzumova@gmail.com" into "//input[@name='username']"
    Then Type "$RyidKze" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 2 seconds
    Then Verify page by title "Profotolizer - Projects"
    Then Wait 1 seconds
    Then Fill out following information
    | project_name  | start_date | description      | dimension | duration |
    | first project | 09/12/2024 | My first project | Month     | 2 years  |
    Then Fill out following information with keys
    | key          | value            |
    | project_name | first project    |
    | start_date   | 09/12/2024       |
    | description  | My first project |
    | dimension    | Month            |
    | duration     | 2 years          |
    Then Click element "//button[text()=' Save'][not(contains(@class, 'me-2'))]"
    Then Wait 5 seconds