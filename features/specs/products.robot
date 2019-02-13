*** Settings ***
Documentation     A test suite with test scenarios for validate products feature.
Resource          ../support/resource.robot
Resource          ../steps/login_steps.robot
Resource          ../steps/products_steps.robot
Resource          ../steps/checkout_steps.robot
Resource          ../steps/order_steps.robot
Resource          ../steps/validation_steps.robot
Suite Setup        Init Tests
Suite Teardown     Quit Tests

*** Test Cases ***
Operate Cart
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials
    Welcome Page Should Be Open

    Add 3 products on the cart 
    Remove 1 product from the cart
    Shopping Cart Should have 2 products

    Go to checkout page
    Fill Checkout informations
    See the total price

    Finish the shop
    Should see the message  THANK YOU FOR YOUR ORDER
