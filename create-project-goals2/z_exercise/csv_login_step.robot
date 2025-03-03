*** Settings ***
Library    Collections
Library    SeleniumLibrary
Library    Screenshot
Library    DataDriver
Resource    ../env.robot

*** Test Cases ***
Login base on file CSV
    [Tags]    login    datadriven
    User already login to web TM Digital

*** Keywords ***
User already login to web TM Digital
    Open Browser    ${SP_URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    //input[@name='email']    ${EMAIL}
    Input Text    //input[@name='password']    ${PASSWORD}
    Click Button    //button[contains(text(), 'Sign In')]