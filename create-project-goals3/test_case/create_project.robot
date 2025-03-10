*** Settings ***
Documentation    
Resource    ../step_definitions/create_project_step_definitions.resource
Resource    ../step_definitions/global_step_definitions.resource
Suite Setup     Random Environment Create new Project

*** Keywords ***
Background
    [Documentation]    Open Browser
    Given User already login to web TM Digital

*** Test Cases ***
Create New Project
    Background
    Given User has on dashboard page
    When User click menu Project
    And User click button Add New Project
    And User uploads image
    And User fill Project Name
    And User fill Project Description
    And User choose Project Type
    And User choose QA Assigned to
    And User choose Start Date
    And User choose End Date
    And User choose Platform Type
    And User choose Technology
    And User testing Applications
    And User choose Guest Assigned to
    # And User click button Save Project
    And User click button confirm
    Then Success add new Project
    And Add Project Name To File
