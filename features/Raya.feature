Feature: Test Login Functionality

Scenario: Login Happy Path
    Given Open "https://profitolizer.com/"
    Then Click element "//img[@src='https://profitolizer.com/wp-content/themes/profitolizer/assets/img/login.svg']"
    Then Wait 3 seconds
    Then Type "rayatsv@gmail.com" into "//input[@name='username']"
    Then Type "Test" into "//input[@name='password']"
    Then Click element "//button[@class='btn btn-primary w-100']"
    Then Wait 3 seconds
    Then Verify page by title "Profotolizer - Projects"


     Scenario: Login with Wrong Credentials
    Given Open "https://profitolizer.com/"
    Then Click element "//img[@src='https://profitolizer.com/wp-content/themes/profitolizer/assets/img/login.svg']"
    Then Wait 3 seconds
    Then Type "rayatsv@gmail.com" into "//input[@name='username']"
    Then Type "Tesk" into "//input[@name='password']"
    Then Click element "//button[@class='btn btn-primary w-100']"
    Then Wait 3 seconds
    Then Verify presents of element "//p[contains(text(), 'Invalid username or password')]"


Scenario: Login Without Username
   Given Open "https://profitolizer.com/"
    Then Click element "//img[@src='https://profitolizer.com/wp-content/themes/profitolizer/assets/img/login.svg']"
    Then Wait 3 seconds
#   Then Type "rayatsv@gmail.com" into "//input[@name='username']"
    Then Type "Test" into "//input[@name='password']"
    Then Click element "//button[@class='btn btn-primary w-100']"
    Then Wait 3 seconds
    Then Verify presents of element "//div[contains(text(),'Email is required')]"

Scenario: Login Without Password
    Given Open "https://profitolizer.com/"
    Then Click element "//img[@src='https://profitolizer.com/wp-content/themes/profitolizer/assets/img/login.svg']"
    Then Wait 3 seconds
    Then Type "rayatsv@gmail.com" into "//input[@name='username']"
#   Then Type "Test" into "//input[@name='password']"
    Then Click element "//button[@class='btn btn-primary w-100']"
    Then Wait 3 seconds
    Then Verify presents of element "//div[contains(text(),'Password is required')]"
