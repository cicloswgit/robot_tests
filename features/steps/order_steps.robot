*** Keywords ***
Shop Products

Set Environment Variable  webdriver.gecko.driver  /usr/bin/geckodriver.exe

Finish the Shop
    Click Link      class:cart_checkout_link