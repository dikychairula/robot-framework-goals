*** Settings ***
Documentation    Generated by    _gherkin2robotframework on 2025-02-02T13:17:35.944604_
Library    Collections
Library    SeleniumLibrary

*** Keywords ***
# user already login to web TM Digital
#     Fail    Keyword "user already login to web TM Digital" Not Implemented Yet

User has on dashboard page
    Wait Until Element Is Visible    //h1[contains(text(), 'Dashboard')]
    Element Should Be Visible    //h1[contains(text(), 'Dashboard')]    timeout=15 seconds
    Sleep    2s

User click menu Project
    Click Element    //span[text()='Project']

User search project
    Fail    Keyword "User search project" Not Implemented Yet

User click Project Name
    Fail    Keyword "User click Project Name" Not Implemented Yet

User click Delete Project button
    Fail    Keyword "User click Delete Project button" Not Implemented Yet

User click Confirm Delete button
    Fail    Keyword "User click Confirm Delete button" Not Implemented Yet

Project shouldn't Exist
    Fail    Keyword "Project shouldn't Exist" Not Implemented Yet

