*** Keywords ***
Add and Remove Products 

Set Environment Variable  webdriver.gecko.driver  /usr/bin/geckodriver.exe

Add 3 products on the cart 
    Click Element       class:add-to-cart-button
    Click Element       class:add-to-cart-button
    Click Element       class:add-to-cart-button

Remove 1 product from the cart
    Click Element       class:remove-from-cart-button    

Shopping Cart Should have 2 products
    Element Text Should Be       class:shopping_cart_badge     2
