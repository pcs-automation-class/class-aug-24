Feature: Test login functionality

  Background:
    Given Open "https://www.profitolizer.com"
    Then Wait 3 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 1 seconds

    #any comment

  Scenario: Login with correct credentials
    Then Type "pcs.automationclass@gmail.com" into "//input[@name='username']"
    Then Type "Qwerty7" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"

  Scenario: Verify message Email is required
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 3 seconds
    Then Verify presents of element "//div[text()='Email is required']"
    Then Wait 3 seconds

  Scenario Outline: Log in with correct credentials
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


  Scenario: Create new project
    Then Type "pcs.automationclass@gmail.com" into "//input[@name='username']"
    Then Type "Qwerty7" into "//input[@name='password']"
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"
#    Then Fill out following information
#      | project       | start_date | description      | dimension | duration |
#      | first project | 09/12/2024 | My first project | Month     | 2 Years  |
    Then Fill out following information with keys
      | key                 | value            |
      | Project Name        | first project 1  |
      | Start date          | 09/12/2024       |
      | Project description | My first project |
      | Period Dimension    | Month            |
      | Project Duration    | 2 Years          |
    Then Click element "//button[text()=' Save'][not(contains(@class,'me-2'))]"
    Then Wait 5 seconds
