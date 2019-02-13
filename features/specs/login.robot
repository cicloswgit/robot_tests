*** Settings ***
Documentation     A test suite with test scenarios for validate login feature.
Resource          ../support/resource.robot
Resource          ../steps/login_steps.robot
Resource          ../steps/validation_steps.robot
Test Setup        Init Tests
Test Teardown     Quit Tests

*** Test Cases ***
Valid Login
    [Tags]   login
    See Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials
    Welcome Page Should Be Open


Invalid Login
    [Tags]   invalid_login
    See Login Page
    Input Username    invalid_user
    Input Password    secret_sauce
    Submit Credentials
    Should see the message   Username and password do not match any user in this service