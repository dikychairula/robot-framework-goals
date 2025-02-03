*** Settings ***
Library    Collections
Library    SeleniumLibrary
Resource    ../env.robot

*** Keywords ***
User already login to web TM Digital
    Open Browser    ${SP_URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    //input[@name='email']    ${EMAIL}
    Input Text    //input[@name='password']    ${PASSWORD}
    Click Button    //button[contains(text(), 'Sign In')]