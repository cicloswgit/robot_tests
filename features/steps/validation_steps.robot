*** Keywords ***
Validate Responses

Set Environment Variable  webdriver.gecko.driver  /usr/bin/geckodriver.exe

Should see the message
    [Arguments]    ${message}
    Page Should Contain     ${message}