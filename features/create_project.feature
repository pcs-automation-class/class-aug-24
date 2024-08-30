Feature: Test login functionality

Scenario:  Login and create New Project
  Given Open "https://www.profitolizer.com"
  Then Click element "//a[text()='Login']"
  Then Wait 1 seconds
  Then Type "tolstopyatenko.yuliya@gmail.com" into "//input[@name='username']"
   Then Wait 1 seconds
   Then Type "Juli123@" into "//input[@name='password']"
    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
     Then Type "ABC" into "//*[@id='el-id-7094-17']"
#    Then Type "Project ABC" into "//div[@class='el-input']/div[@class='el-input__wrapper']"
    Then Wait 3 seconds
    Then Type "Aug2024" into "//textarea[@class='el-textarea__inner']"
    Then Wait 2 seconds

  Scenario: Verify message Email is required
      Given Open "https://www.profitolizer.com"
      Then Wait 1 seconds
      Then Click element "//a[text()='Login']"
      Then Wait 3 seconds
      Then Click element "//button[contains(text(), 'Login')]"
      Then Verify presents of element "//div[text()='Email is required']"
      Then Wait 3 seconds
#      Then Verify page by title "Profotolizer - Projects"

  Scenario: Login with correct credentials
    Given Open "https://app.profitolizer.com/#/login"
    Then Wait 2 seconds
    Then Type "salesproducts79@gmail.com" into "//input[@type='text']"
    Then Wait 1 seconds
    Then Type "abc123" into "//input[@type='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 1 seconds
    Then Verify presents of element "//div[@class='d-flex align-items-top']"

  Scenario: Login with invalid credentials
    Given Open "https://app.profitolizer.com/#/login"
    Then Wait 2 seconds
    Then Type "salesproducts79@gmail.com" into "//input[@type='text']"
    Then Wait 1 seconds
    Then Type "abd123" into "//input[@type='password']"
    Then Wait 1 seconds
    Then Click element "//button[@type='submit']"
    Then Wait 1 seconds
    Then Verify presents of element "//p[contains(text(),'Invalid username or password')]"

  Scenario: Login without user name and password  
    Given Open "https://app.profitolizer.com/#/login"
    Then Click element "//button[@type='submit']"
    Then Verify presents of element "//div[contains(text(),'Email is required')]"
    Then Wait 1 seconds
    Then Verify presents of element "//div[contains(text(),'Password is required')]"

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


