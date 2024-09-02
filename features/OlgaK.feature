Scenario: Login with valid credentials
Given Open "https://www.profitolizer.com"
Then Wait 2 seconds
Then Click element "//a[text()='Login']"
Then Wait 2 seconds
Then Type "genndy@gmail.com" into "//input[@name='username']"
Then Type "Ras$123" into "//input[@name='password']"
Then Click element "//button[contains(text(), 'Login')]"
Then Wait 3 seconds
Then Verify page by title "Profitolizer - Projects"
Then Wait 2 seconds