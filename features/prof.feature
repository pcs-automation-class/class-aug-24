Feature: Test login functionality

  Background:
    Given Open "https://profitolizer.com/"
    Then Wait 50 seconds
    Then Click element "//a[@class='header-link _btn__link']"
    Then Wait 30 seconds



  Scenario: Create new project
    Then Type "vasianw@mail.ru" into "//input[@class='ps-3 form-control el-input is-invalid']"
    Then Type "vasian12345" into "//input[@name='password']"
    Then Click element "//button[@type='submit']"
    Then Wait 5 seconds
    Then Verify page by title "Profotolizer - Projects"
    Then Type "project1" into "//input[@class='el-input__inner'][not(contains(@placeholder, 'Start date'))]"
    Then Type "2024-11-20" into "//input[@class='el-input__inner'][contains(@placeholder, 'Start date')]"
    Then Type "My best project" into "//textarea[@class='el-textarea__inner']"
    Then Click element "//button[text()=' Save'][not(contains(@class,'me-2'))]"
    Then Wait 5 seconds