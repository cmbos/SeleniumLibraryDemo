*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Extreme debugging
    # service_log_path wordt ondersteund vanaf SeleniumLibrary versie 4.0
    open browser  https://www.bol.com/nl/  chrome  service_log_path=${OUTPUT_DIR}/chrome_driver.log