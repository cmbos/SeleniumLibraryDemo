*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
Invoeren username en password
    input text  id:username  tomsmith
    input password  id:password  SuperSecretPassword!
    click element  css:#login button
    page should contain  You logged into a secure area!

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/login

Close website
    close browser