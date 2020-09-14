*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
Opgeven username en password in popup
    # geen actie nodig, username en password zitten al in de URL

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://admin:admin@the-internet.herokuapp.com/basic_auth

Close website
    close browser