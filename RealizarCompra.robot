*** Settings ***
Documentation      Robot Framework
Library            SeleniumLibrary     timeout=500

*** Keywords ***

Add Item
    Click Link    Laptops
    Wait Until Element Is Visible    link=MacBook Pro
    Click Link    MacBook Pro
    Wait Until Element Is Visible    xpath=//div[2]//a
    Click Element    xpath=//div[2]//a
    Alert Should Be Present   


Finalizar Compra 
    Click Link    Cart
    Click Button    css=.btn-success
    Wait Until Element Is Visible    id=name
    Input Text    id=name    Carolina Alessandra
    Input Text    id=country    Brasil
    Input Text    id=city    Brasil
    Input Text    id=card    01234567
    Input Text    id=month    07
    Input Text    id=year    2024
    Click Button    xpath=//button[text()='Purchase']
    Element Text Should Be    css=.sweet-alert > h2    Thank you for your purchase!
    Click Button    css=.confirm



