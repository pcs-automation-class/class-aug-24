Feature: Test login functionality
      Background:
    Given Open "https://www.profitolizer.com"
    Then Wait 3 seconds
    Then Click element "//a[text()='Login']"
    Then Wait 3 seconds

  Scenario: Login with correct credentials

    Then Type "salesproducts79@gmail.com" into "//input[@type='text']"
    Then Wait 1 seconds
    Then Type "abc123" into "//input[@type='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"

  Scenario: Login with invalid credentials

    Then Type "salesproducts79@gmail.com" into "//input[@type='text']"
    Then Wait 1 seconds
    Then Type "abd123" into "//input[@type='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 1 seconds
    Then Verify presents of element "//p[contains(text(),'Invalid username or password')]"

  Scenario: Login without user name and password

    Then Click element "//button[@type='submit']"
    Then Wait 2 seconds
    Then Verify presents of element "//div[text()='Email is required']"
    Then Wait 1 seconds
    Then Verify presents of element "//div[text()='Password is required']"

  Scenario: Login with correct credentials

#    Then Wait 1 seconds
    Then Type "pcs.automationclass@gmail.com" into "//input[@name='username']"
#    Then Wait 1 seconds
    Then Type "Qwerty7" into "//input[@name='password']"
#    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"

    Scenario:  Login and create New Project

  Then Type "tolstopyatenko.yuliya@gmail.com" into "//input[@name='username']"
      Then Wait 1 seconds
   Then Type "Juli123@" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
#     Then Type "ABC" into "//div[@class='el-input']/div[@class='el-input__wrapper']"
    Then Type "Project ABC" into "//div[@class='el-input']/div[@class='el-input__wrapper']"
    Then Wait 3 seconds
    Then Type "Aug2024" into "//textarea[@class='el-textarea__inner']"
    Then Wait 2 seconds

  Scenario: Verify message Email is required

      Then Click element "//button[contains(text(), 'Login')]"
      Then Verify presents of element "//div[text()='Email is required']"
      Then Wait 3 seconds



  Scenario Outline: Login with correct credentials:


    Then Type "<username>" into "//input[@type='text']"
    Then Wait 1 seconds
    Then Type "<password>" into "//input[@type='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 1 seconds
    Then Verify page by title "<title>"
  Examples:
    | username | password | title |
    |salesproducts79@gmail.com  | abc123   |Profotolizer - Projects|
    |salesproducts79+1@gmail.com| abc123+1 |Profotolizer - Projects|
    |salesproducts79+2@gmail.com| abc123+2 |Profotolizer - Projects|

    Scenario: Create New project

      Then Type "salesproducts79@gmail.com" into "//input[@type='text']"
    Then Wait 1 seconds
    Then Type "abc123" into "//input[@type='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"
    Then Fill out following information
      | project | start_date | description | dimension | duration |
      | New Project| 09/13/2024 | My first project | month | 1 year |

      Then Click element "//button[text()=' Save'][not(contains(@class,'me-2'))]"
      Then Wait 3 seconds
      


