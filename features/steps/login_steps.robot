*** Keywords ***
Login With Valid Credentials

Set Environment Variable  webdriver.gecko.driver  /usr/bin/geckodriver.exe

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
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

Close the Browser
    Close All Browsers     