*** Settings ***
Documentation    
Test Tags    ValidLogin
Resource    ../step_definitions/login_tm_digital_step_definitions.resource
Metadata    Feature    Login TM Digital
Metadata    Generated by    _gherkin2robotframework on 2025-01-24T14:24:11.374257_

*** Test Cases ***
Valid Login
    [Tags]    Valid
    [Template]    Scenario Outline Valid Login
    titoqa@maildrop.cc    P@ssw0rd


*** Keywords ***
Background
    [Documentation]    Login
    Given User already access web TM Digital

Scenario Outline Valid Login
    [Arguments]    ${email}    ${password}
    Background
    Given User has on Login Page
    And User input email address "${email}"
    And User input password "${password}"
    And User click the Sign In Button
    Then User should be success Login


