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






    Scenario: Login with correct credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
#    Then Wait 1 seconds
    Then Type "tolstopyatenko.yuliya@gmail.com" into "//input[@name='username']"
#    Then Wait 1 seconds
    Then Type "Juli123@" into "//input[@name='password']"
#    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"



    Scenario: Verify message Email is required
      Given Open "https://www.profitolizer.com"
      Then Wait 1 seconds
      Then Click element "//a[text()='Login']"
      Then Wait 3 seconds
      Then Click element "//button[contains(text(), 'Login')]"
      Then Verify presents of element "//div[text()='Email is required']"
      Then Wait 3 seconds
      Then Verify page by title "Profotolizer - Projects"



    Scenario: Login without password
   Given Open "https://www.profitolizer.com"
 Then Click element "//a[text()='Login']"
 Then Type "tolstopyatenko.yuliya@gmail.com" into "//input[@name='username']"
 Then Wait 1 seconds
 Then Click element "//button[contains(text(), 'Login')]"
 Then Wait 1 seconds
 Then Verify page by title "Profotolizer - Login"



    Scenario: Login without username
  Given Open "https://www.profitolizer.com"
  Then Click element "//a[text()='Login']"
  Then Type "Juli123@" into "//input[@name='password']"
  Then Wait 1 seconds
  Then Click element "//button[contains(text(),'Login')]"
  Then Wait 1 seconds
  Then Verify page by title "Profotolizer - Login"



    Scenario: Login and create New Project
  Given Open "https://www.profitolizer.com"
  Then Click element "//a[text()='Login']"
  Then Wait 1 seconds
  Then Type "tolstopyatenko.yuliya@gmail.com" into "//input[@name='username']"
    Then Wait 1 seconds
    Then Type "Juli123@" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Type "NewProject" into "//div[@class='el-input']/div[@class='el-input__wrapper']"
    Then Wait 3 seconds
    Then Type "Aug2024" into "//textarea[@class='el-textarea__inner']"
    Then Wait 2 seconds



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
      | username                        | password | title                   |
      | tolstopyatenko.yuliya@gmail.com | Juli123@ | Profotolizer - Projects |
      | tolstopyatenko.yuliya@gmail.com | Juli123@ | Profotolizer - Projects |
      | tolstopyatenko.yuliya@gmail.com | Juli123@ | Profotolizer - Projects |


  Scenario: Create new project
   Given Open "https://www.profitolizer.com"
   Then Click element "//a[text()='Login']"
   Then Wait 1 seconds
   Then Type "tolstopyatenko.yuliya@gmail.com" into "//input[@name='username']"
    Then Wait 1 seconds
    Then Type "Juli123@" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"
#    Then Fill out following information
#      | project       | start_date | description      | dimension | duration |
#      | first project | 09/12/2024 | My first project | Month     | 2 Years  |
    Then Fill out following information with keys
      | key                 | value            |
      | Project Name        | first project 2  |
      | Start date          | 2024/09/04        |
      | Project description | My first project |
      | Period Dimension    | Month            |
      | Project Duration    | 2 Years          |
    Then Click element "//button[text()=' Save'][not(contains(@class,'me-2'))]"
    Then Wait 5 seconds



 Scenario: Delete new project
   Given Open "https://www.profitolizer.com"
   Then Click element "//a[text()='Login']"
   Then Wait 1 seconds
   Then Type "tolstopyatenko.yuliya@gmail.com" into "//input[@name='username']"
    Then Wait 1 seconds
    Then Type "Juli123@" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"
#    Then Fill out following information
#      | project       | start_date | description      | dimension | duration |
#      | first project | 09/12/2024 | My first project | Month     | 2 Years  |
    Then Fill out following information with keys
      | key                 | value            |
      | Project Name        | first project 1  |
      | Start date          | 2024/09/04       |
      | Project description | My first project |
      | Period Dimension    | Month            |
      | Project Duration    | 2 Years          |
    Then Click element "//button[text()=' Save'][not(contains(@class,'me-2'))]"
    Then Wait 5 seconds
    Then Click element "//span[text()='Settings']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(),'Delete')]"
    Then Wait 2 seconds
    Then Click element "//button[text()='Delete']"







