*** Settings ***
Documentation     A test suite with test scenarios for validate login feature.
Resource          ../support/resource.robot
Resource          ../steps/login_steps.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials
    Welcome Page Should Be Open
[Teardown] Close Browser
