*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
Test Teardown  Close website

*** Test Cases ***
Remove/add
    # click op checkbox en button
    click element  id:checkbox
    click element  css:#checkbox-example button
    # wachten tot text verschijnt
    wait until page contains  It's gone!  10s
    capture page screenshot

Enable/disable
    # click enable button
    click element  css:#input-example button
    # wachten tot enabled en text invoeren
    wait until element is not visible  css:#loading
    input text  css:#input-example input  mijn_text
    capture page screenshot

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/dynamic_controls

Close website
    close browser