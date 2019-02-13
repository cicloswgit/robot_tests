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
    #Element Text Should Be       class:summary_total_label     'Total: $' + str(sum_price())
    Element Text Should Be       class:summary_total_label     Total: $28.06

def sum_price():
    product_1_price     =   float(        Get Text      class:inventory_item_price[1]       )
    product_2_price     =   float(        Get Text      class:inventory_item_price[2]       )
    tax_price           =   float(        Get Text      class:summary_tax_label             )
    return product_1_price + product_2_price + tax_price
