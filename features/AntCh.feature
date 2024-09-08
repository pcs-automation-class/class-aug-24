Feature: Login functionality

  Background:
    Given Open "https://app.profitolizer.com/#/login"
    Then Wait 2 seconds

Scenario: login happy path
    Then Type "fake_mail@yopmail.com" into "//input[@required][@name='username']"
    Then Type "derparole" into "//input[@required][@name='password']"
    Then Click element "//button[@type='submit']"
    Then Wait 3 seconds
    Then Verify page by title "Profotolizer - Projects"

  Scenario: login with wrong credentials
    Then Type "<email>" into "//input[@required][@name='username']"
    Then Type "<password>" into "//input[@required][@name='password']"
    Then Click element "//button[@type='submit']"
    Then Wait 2 seconds
    Then Verify presents of element "//p[contains(text(),'Invalid username or password')]"
      Examples:
    | email               | password | title                 |
    |www@gmail.com        | 111 |Profotolizer - Projects|
    |fake_mail@yopmail.com| 111 |Profotolizer - Projects|
    |fake_mail@yopmail.com| derparole |Profotolizer - Projects|

  Scenario: login without username
#    Then Type "fake_2_mail@yopmail.com" into "//input[@required][@name='username']"
    Then Type "derparole" into "//input[@required][@name='password']"
    Then Click element "//button[@type='submit']"
    Then Wait 2 seconds
    Then Verify presents of element "//div[contains(text(),'Email is required')]"

  Scenario: login without password
    Then Type "fake_2_mail@yopmail.com" into "//input[@required][@name='username']"
#    Then Type "derparole" into "//input[@required][@name='password']"
    Then Click element "//button[@type='submit']"
    Then Wait 2 seconds
    Then Verify presents of element "//div[contains(text(),'Password is required')]"