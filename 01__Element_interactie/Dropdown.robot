*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
Selecteer waarde uit dropdown
#    select from list by value  id:dropdown  2
#    select from list by index  id:dropdown  2
#    select from list by label  id:dropdown  Option 2

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/dropdown

Close website
    close browser