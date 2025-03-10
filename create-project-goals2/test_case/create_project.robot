*** Settings ***
Documentation    
Resource    ../step_definitions/create_project_step_definitions.resource
Resource    ../step_definitions/global_step_definitions.resource
Resource    ../variables/globalVariable.robot
Suite Setup     Random Project Name


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
    And User uploads image "${Image_Path}"
    And User fill Project Name "${Project_Name}"
    And User fill Project Description "${Project_Description}"
    And User choose Project Type "${Project_Type}"
    And User choose QA Assigned to "${QA_Assigned}"
    And User choose Start Date "${Start_Date}"
    And User choose End Date "${End_Date}"
    And User choose Platform Type "${Platform_Type}"
    And User choose Technology "${Technology}"
    And User testing Applications "${Applications}"
    And User choose Guest Assigned to "${Guest_Assigned}"
    And User click button Save Project
    And User click button confirm
    Then Success add new Project
    And Add Project Name To File
