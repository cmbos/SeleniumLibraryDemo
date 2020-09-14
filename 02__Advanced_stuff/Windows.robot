*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
Uitlezen text uit nieuwe window
    click link  Click Here
    # uitlezen alle titels
    @{window_titles}  get window titles
    select window  New Window
    ${text}  get text  xpath://h3

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/windows

Close website
    close browser