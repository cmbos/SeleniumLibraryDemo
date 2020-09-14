*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
Selecteren en deselecteren checkbox
    select checkbox  xpath://form[@id='checkboxes']/input[1]
    unselect checkbox  xpath://form[@id='checkboxes']/input[2]

Uitlezen waarde checkbox
    ${value}  get element attribute  xpath://form[@id='checkboxes']/input[1]  checked

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/checkboxes

Close website
    close browser