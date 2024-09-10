Feature: Test_open Google maps

  Scenario: Open web page
    Given Katya open "https://www.google.com/maps/@37.3891254,-122.0706304,14z?entry=ttu&g_ep=EgoyMDI0MDkwOC4wIKXMDSoASAFQAw%3D%3D"
    Then Katya type "mountain view" into "//input[@id='searchboxinput']"
    Then Katya wait 5 seconds
    Then Katya click element "//span[@style='font-size: 24px']"
    Then Katya wait 5 seconds
    Then Katya verify page by title "//h1[@class='DUwDvf lfPIob']"
    Then Katya wait 10 seconds
