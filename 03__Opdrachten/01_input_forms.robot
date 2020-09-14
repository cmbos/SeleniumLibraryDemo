*** Settings ***
Library  SeleniumLibrary

Suite Setup  Prepare environment

*** Test Cases ***
Single Input Field
    input text  xpath://input[@id='user-message']  My own message
    click element  xpath://button[.='Show Message']
    ${text}  get text  xpath://span[@id='display']
    should be equal as strings  ${text}  My own message

Two input fields
    input text  xpath://input[@id='sum1']  32
    input text  xpath://input[@id='sum2']  100
    click element  xpath://button[.='Get Total']
    ${calculated_total}  get text  xpath://span[@id='displayvalue']
    ${total}  evaluate  32 + 100
    should be equal as integers  ${calculated_total}  ${total}

*** Keywords ***
Prepare environment
    Openen practice site
    Selecteer menu-optie  Input Forms  Simple Form Demo

Openen practice site
    open browser  about:blank  chrome
    maximize browser window
    go to  https://www.seleniumeasy.com/test/
    wait until element is visible  xpath://div[@id='at-cv-lightbox-content']  5s
    click link  No, thanks!

Selecteer menu-optie
    [Arguments]  ${item}  ${sub_item}
    click link  ${item}
    click link  ${sub_item}