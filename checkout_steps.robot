*** Keywords ***
Manipulate Cart 

Set Environment Variable  webdriver.gecko.driver  /usr/bin/geckodriver.exe

Go to checkout page
    Click Link      class:shopping_cart_link
    Click Link      class:cart_checkout_link

Fill Checkout informations
    Input Text      class:checkout-input[placeholder="First Name"]          Teste
    Input Text      class:checkout-input[placeholder="Last Name"]           Lorena
    Input Text      class:checkout-input[placeholder="Zip/Postal Code"]     40000
    Click Element   class:cart_checkout_link

See the total price
    Element Text Should Be       class:summary_total_label     Total: $28.06    