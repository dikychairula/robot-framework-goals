Feature: Update Project
    
    Background: Login
        Given user already login to web TM Digital
    
    Scenario: Update Existing Project
        Given User has on dashboard page
        When User click menu Project
        And User search project
        And User click Project Name
        And User click Edit Project button
        And User uploads new picture "Image_Path"
        And User fill Project Name "Project_Name"
        And User fill Project Description "Project_Description"
        And User choose Project Type "Project_Type"
        And User choose QA Assigned to "QA_Assigned"
        And User choose Start Date "Start_Date"
        And User choose End Date "End_Date"
        And User choose Platform Type "Platform_Type"
        And User choose Technology "Technology"
        And User testing Applications "Applications"
        And User choose Guest Assigned to "Guest_Assigned"
        And User click button Save Project
        And User click button confirm
        Then Success add new Project