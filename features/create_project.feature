Feature: Test login functionality


  Scenario: Login with correct credentials
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//a[text()='Login']"
#    Then Wait 1 seconds
    Then Type "pcs.automationclass@gmail.com" into "//input[@name='username']"
#    Then Wait 1 seconds
    Then Type "Qwerty7" into "//input[@name='password']"
#    Then Wait 1 seconds
    Then Click element "//button[contains(text(), 'Login')]"
    Then Wait 1 seconds
    Then Verify page by title "Profotolizer - Projects"



 Scenario: Calculator
    Given Open "https://www.profitolizer.com"
    Then Wait 1 seconds
    Then Click element "//div [@class='hero-desc__block']/a[@class='_btn _btn__primary _btn__arrow _btn__big scrollto-js'and @href='#mainForm']"
          Then Wait 2 seconds
    Then Type "DoroninQA@gmail.com" into "//input[@name='email']"
          Then Wait 2 seconds
    Then Type "Test" into "//input[@name='project_name']"
          Then Wait 2 seconds
    Then Click element "//label[@for='three']"
          Then Wait 2 seconds
    Then Click element " element "//div[@class='main-form__group _desctop']//input[@type='checkbox']"
          Then Wait 2 seconds
    Then Click element "//button[@name='submit' and text() ='Calculate']"
          Then Wait 2 seconds
    Then Verify presents of element "//h1[contains(text(),'P&L')]"





    Scenario: Verify message Email is required
      Given Open "https://www.google.com"
      Then Wait 3 seconds
      Then Type "aaaaa" into "//textarea[@title='Search']"
      Then Wait 1 seconds
      Then Click element "//div[@class='FPdoLc lJ9FBc']//input[@value='Google Search']"
      Then Wait 3 seconds
      Then Click element "//div[text()='Images']"
#      Then Click element "//a[text()='Login']"
      Then Wait 3 seconds
#      Then Click element "//button[contains(text(), 'Login')]"
#      Then Verify presents of element "//div[text()='Email is required']"
#      Then Wait 3 seconds
