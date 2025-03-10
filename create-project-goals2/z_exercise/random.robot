*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/globalVariable.robot
Library    OperatingSystem

*** Variables ***
${FILE_PATH}      ./variables.txt

*** Test Cases ***
Check Random Variable
    ${random_value}=    Evaluate    random.randint(1, 1000)    random
    Set Global Variable    ${random_project}    value ${random_value}
    Log To Console    ${random_project}

*** Test Cases ***
Simpan dan Baca Variabel dari File
    
    # Menyimpan variabel ke dalam file
    ${data}    Set Variable    VariabelContoh=12345
    Append To File    ${FILE_PATH}    ${data}
    
    # Membaca variabel dari file
    ${isi_file}    Get File    ${FILE_PATH}
    Log    Isi file: ${isi_file}