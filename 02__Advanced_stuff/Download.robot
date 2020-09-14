*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  OperatingSystem

#Test Setup  Open website
#Test Teardown  Close website

*** Variables ***
${URL}  http://the-internet.herokuapp.com

*** Test Cases ***
Download file
    # link downloaden met de request (HTTP) library, buiten Selenium om
    create session  file_download  ${URL}/download
    ${download}  get request  file_download  /selenium.jpg
    # sla de bestandsinhoud op als file
    create binary file  ${EXEC_DIR}/plaatje.jpg  ${download.content}


*** Keywords ***
Open website
    open browser  about:blank  chrome
    maximize browser window
    go to  ${URL}/download

Close website
    close browser