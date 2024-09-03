# Created by irinamartynuk at 8/30/24
Feature: # Enter feature name here
  # Enter feature description here

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


  Scenario: Create a new project
    Given Open "https://app.profitolizer.com/#/login"
    Then Wait 1 seconds
    Then Type "irinamartynuik@gmail.com" into "//input[@type='text']"
  Then Type "qweasdzxc" into "//input[@type='password']"
  Then Click element "//button[@type='Login']"
    Then Wait 1 seconds
    And Click element "//a[text()='Create Project']"
    Then Wait 1 seconds
And Type "My first project" into "//textarea[@name='project_name']"
    Then Fill out following information with keys
      | project       | My first project    |
      | start_date    | 09/12/2024       |
      | description   | My first project |
      | dimension     | Month            |
      | duration      | 1 years          |
    Then Click element "//button[text()=' Save'][not(contains(@class,'me-2'))]"
    Then Wait 2 seconds




