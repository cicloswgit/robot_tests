*** Keywords ***
Shop Products

Set Environment Variable  webdriver.gecko.driver  /usr/bin/geckodriver.exe

Finish the Shop
    Click Link      class:cart_checkout_link

See the message  
    [Arguments]    ${message}
    Page Should Contain     ${message}