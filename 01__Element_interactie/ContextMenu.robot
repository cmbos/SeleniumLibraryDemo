*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
Rechter muisknop
    open context menu  id:hot-spot
    alert should be present  You selected a context menu

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/context_menu

Close website
    close browser