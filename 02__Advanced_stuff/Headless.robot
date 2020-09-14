*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Headless Chrome - Open Browser
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    ${options}=     Call Method     ${chrome_options}    to_capabilities

    Open Browser  about:blank  chrome  desired_capabilities=${options}
    maximize browser window
    go to  https://www.bol.com/nl/
    capture page screenshot
