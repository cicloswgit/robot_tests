*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${SERVER}         www.saucedemo.com
${BROWSER}        Firefox
${DELAY}          0
${LOGIN URL}      https://${SERVER}/
${WELCOME URL}    https://${SERVER}/inventory.html

*** Keywords ***
Init Tests
    Open Browser                          ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed                    ${DELAY}

Quit Tests
    Capture Page Screenshot    ./screenshots/${TEST_NAME}.png
    Close All Browsers       