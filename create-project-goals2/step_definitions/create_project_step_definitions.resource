*** Settings ***
Documentation    Generated by    _gherkin2robotframework on 2025-01-24T13:31:02.156943_
Library    Collections
Library    SeleniumLibrary
Resource    ../env.robot
 
*** Keywords ***
User has on dashboard page
    Wait Until Element Is Visible    //h1[contains(text(), 'Dashboard')]
    Element Should Be Visible    //h1[contains(text(), 'Dashboard')]    timeout=15 seconds
    Sleep    2s

User click menu Project
    Click Element    //span[text()='Project']

User click button Add New Project
    Wait Until Element Is Visible    //a[@href='/project/add']
    Click Element    //a[@href='/project/add']
    sleep    2s

User uploads image "${Image_Path}"
    Choose File    name=image    ${Image_Path}

User fill Project Name "${Project_Name}"
    Input Text    name=name    ${Project_Name}

User fill Project Description "${Project_Description}"
    Input Text    //textarea[@name='description']    ${Project_Description}

User choose Project Type "${Project_Type}"
    click Element    //span[text()='Please Select']
    Wait Until Element Is Visible    //label[text()=' Fixed Bid']
    Click Element    //label[text()=' Fixed Bid']

User choose QA Assigned to "${QA_Assigned}"
    click Element    css=#form-add > div:nth-of-type(4) > div:nth-of-type(2) .multiselect
    Wait Until Element Is Visible    //label[contains(.,'${QA_Assigned}')]
    Click Element    //label[contains(.,'${QA_Assigned}')]
    click Element    css=#form-add > div:nth-of-type(4) > div:nth-of-type(2) .multiselect

User choose Start Date "${Start_Date}"
    Double Click Element    //span[text()='Start Date']
    Sleep    2s
    Click Element    //td[@class='${Start_Date}']

User choose End Date "${End_Date}"
    Double Click Element    //span[text()='End Date']
    Sleep    2s
    Click Element    (//td[text()='${End_Date}'])[2]

User choose Platform Type "${Platform_Type}"
    Click Element    css=#form-add > div:nth-of-type(5) .multiselect
    Wait Until Element Is Visible    //label[text()=' Mobile Website']
    Click Element    //label[text()=' Mobile Website']
    Click Element    css=#form-add > div:nth-of-type(5) .multiselect

User choose Technology "${Technology}"
    Click Element    css=div:nth-of-type(6) > div:nth-of-type(1) .multiselect
    Wait Until Element Is Visible    //label[text()=' ${Technology}']
    Click Element    //label[text()=' ${Technology}']
    Click Element    css=div:nth-of-type(6) > div:nth-of-type(1) .multiselect

User testing Applications "${Applications}"
    Click Element    css=div:nth-of-type(6) > div:nth-of-type(2) .multiselect
    Wait Until Element Is Visible    //label[text()=' ${Applications}']
    Click Element    //label[text()=' ${Applications}']
    Click Element    css=div:nth-of-type(6) > div:nth-of-type(2) .multiselect

User choose Guest Assigned to "${Guest_Assigned}"
    Click Element    css=div:nth-of-type(7) > div:nth-of-type(1) .multiselect
    Wait Until Element Is Visible    //label[text()=' ${Guest_Assigned}']
    Click Element    //label[text()=' ${Guest_Assigned}']
    Click Element    css=div:nth-of-type(7) > div:nth-of-type(1) .multiselect

User click button Save Project
    click Element    //button[@id='save']
    
User click button confirm
    Wait Until Element Is Visible    id=savedProjectSuccess
    Click Button    id=savedProjectSuccess

Success add new Project
    Wait Until Element Is Visible    //*[@id="savedProjectSuccessModal"]/div/div/div[2]/div/button    10s
    Click Button    //*[@id="savedProjectSuccessModal"]/div/div/div[2]/div/button
    Sleep    5s
    
    # melihat project yang sudah di add berdasarkan nama
    Click Element    //span[text()='Dashboard']
    Wait Until Element Is Visible    //span[text()='Docker Project']
    Scroll Element Into View    //span[text()='Docker Project']
    sleep    10s