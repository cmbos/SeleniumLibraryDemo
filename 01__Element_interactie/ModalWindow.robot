*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
Wegklikken modal window
    wait until element is visible  css:.modal-footer p
    click element  css:.modal-footer p

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/entry_ad

Close website
    close browser