*** Settings ***
Documentation      Robot Framework
Library            SeleniumLibrary     timeout=500

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    Click Link    Log in
    Wait Until Element Is Visible    id=loginusername
    Input Text    id=loginusername    ${login}
    Input Text    id=loginpassword    ${password}
    Click Button    xpath=//button[text()='Log in']
    Wait Until Element Is Visible    id=nameofuser
    Element Text Should Be    id=nameofuser    Welcome carolina123