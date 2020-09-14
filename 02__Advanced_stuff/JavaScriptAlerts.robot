*** Settings ***
Library  SeleniumLibrary

Test Setup  Open website
#Test Teardown  Close website

*** Test Cases ***
JS Alert - controleer op alert text
    click element  xpath://button[.='Click for JS Alert']
    alert should be present  I am a JS Alert

JS Alert - uitlezen texx
    click element  xpath://button[.='Click for JS Alert']
    # eventueel kun je nog een action meegeven, default is dit ACCEPT
    # andere opties zijn LEAVE en DISMISS
    ${message}  handle alert

JS Confirm
    click element  xpath://button[.='Click for JS Confirm']
#    ${message}  handle alert
    ${message}  handle alert  action=DISMISS
    log to console  ${message}

JS Prompt
    [Tags]  dev
    click element  xpath://button[.='Click for JS Prompt']
    input text into alert  Deze text wordt in de popup gezet

*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  http://the-internet.herokuapp.com/javascript_alerts

Close website
    close browser