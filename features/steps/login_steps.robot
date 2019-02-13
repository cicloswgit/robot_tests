*** Keywords ***
Login With Valid Credentials

Set Environment Variable  webdriver.gecko.driver  /usr/bin/geckodriver.exe

See Login Page
    Title Should Be    Swag Labs

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text     user-name    ${username}

Input Password
    [Arguments]    ${password}
    Input Text     password    ${password}

Submit Credentials
    Click Button    class:login-button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
  