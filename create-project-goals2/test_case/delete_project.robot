*** Settings ***
Documentation    
Resource    ../step_definitions/delete_project_step_definitions.resource
Resource    ../step_definitions/create_project_step_definitions.resource
Metadata    Feature    Delete Project
Metadata    Generated by    _gherkin2robotframework on 2025-02-02T13:17:35.943051_

*** Test Cases ***
Delete Exist Project
    Background
    Given User has on dashboard page
    When User click menu Project
    And User search project
    And User click Project Name
    And User click Delete Project button
    And User click Confirm Delete button
    Then Project shouldn't Exist


*** Keywords ***
Background
    [Documentation]    Login
    Given user already login to web TM Digital


