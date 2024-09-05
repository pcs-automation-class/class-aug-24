 Scenario: Login with correct credentials

  Given Open "https://app.profitolizer.com/#/login"
  Then Wait 1 seconds
  Then Type "irinamartynuik@gmail.com" into "//input[@type='text']"
  Then Wait 1 seconds
  Then Type "qweasdzxc" into "//input[@type='password']"
  Then Wait 1 seconds
  Then Click element "//button[@type='submit']"
  Then Wait 1 seconds
  Then Verify presents of element "//div[@class='d-flex align-items-top']"

 Scenario: Login with invalid password

  Given Open "https://app.profitolizer.com/#/login"
  Then Wait 1 seconds
  Then Type "irinamartynuik@gmail.com" into "//input[@type='text']"
  Then Wait 1 seconds
  Then Type "qweasdzxc" into "//input[@type='password']"
  Then Wait 1 seconds
  Then Click element "//button[@type='submit']"
  Then Wait 1 seconds
  Then Verify presents of element "//div[@class='d-flex align-items-top']"


Scenario: Verify message Email is required
      Given Open "https://www.profitolizer.com"
      Then Wait 1 seconds
      Then Click element "//a[text()='Login']"
      Then Wait 1 seconds
      Then Click element "//button[contains(text(), 'Login')]"
      Then Verify presents of element "//div[text()='Email is required']"
      Then Wait 1 seconds


Scenario: Login without username
  Given Open "https://www.profitolizer.com"
  Then Click element "//a[text()='Login']"
  Then Type "qweasdzxc" into "//input[@name='password']"
  Then Wait 1 seconds
  Then Click element "//button[contains(text(),'Login')]"
  Then Wait 1 seconds
  Then Verify page by title "Profitolizer - Login"