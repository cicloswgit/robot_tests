*** Settings ***
Documentation     A test suite with test scenarios for validate login feature.
Resource          ../support/resource.robot
Resource          ../steps/login_steps.robot
Resource          ../steps/validation_steps.robot
Suite Setup        Init Tests
Suite Teardown     Quit Tests

*** Test Cases ***
Invalid Login
    Input Username    invalid_user
    Input Password    secret_sauce
    Submit Credentials
    Should see the message   Username and password do not match any user in this service