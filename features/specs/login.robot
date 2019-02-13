*** Settings ***
Documentation     A test suite with test scenarios for validate login feature.
Resource          ../support/resource.robot
Resource          ../steps/login_steps.robot
Suite Setup        Init Tests
Suite Teardown     Quit Tests

*** Test Cases ***
Valid Login
    See Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials
    Welcome Page Should Be Open
