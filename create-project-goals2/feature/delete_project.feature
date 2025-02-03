Feature: Delete Project
    
    Background: Login
        Given user already login to web TM Digital
        
    Scenario: Delete Exist Project
        Given User has on dashboard page
        When User click menu Project
        And User search project
        And User click Project Name
        And User click Delete Project button
        And User click Confirm Delete button
        Then Project shouldn't Exist