Feature: Create Project
    
    Background: Login
        Given user already login to web TM Digital
    
    Scenario Outline: Add New Project
        Given User has on dashboard page
        When User click menu Project
        And User click button Add New Project
        And User uploads image "<Image_Path>"
        And User fill Project Name "<Project_Name>"
        And User fill Project Description "<Project_Description>"
        And User choose Project Type "<Project_Type>"
        And User choose QA Assigned to "<QA_Assigned>"
        And User choose Start Date "<Start_Date>"
        And User choose End Date "<End_Date>"
        And User choose Platform Type "<Platform_Type>"
        And User choose Technology "<Technology>"
        And User testing Applications "<Applications>"
        And User choose Guest Assigned to "<Guest_Assigned>"
        And User click button Save Project
        And User click button confirm
        Then Success add new Project

    Examples:
        | Image_Path           | Project_Name      | Project_Description           | Project_Type  | QA_Assigned         | Start_Date | End_Date   | Platform_Type    | Technology | Applications | Guest_Assigned   |
        | C://apk/docker.jpg   | Dockers Project   | Description Docker Project    | Fixed Bid     | Diky Chairul Azwar  | today day  | 31         | Mobile Website   | NextJS     | Taiga        | Agung Prasetya   |
