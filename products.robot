*** Settings ***
Documentation     A test suite with test scenarios for validate products feature.
Resource          resource.robot
Resource          login_steps.robot
Resource          products_steps.robot

*** Test Cases ***
Operate Cart
    Open Browser To Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials
    Welcome Page Should Be Open

    Add 3 products on the cart 
    Remove 1 product from the cart
    Shopping Cart Should have 2 products
[Teardown] Close Browser