*** Settings ***
Resource           RealizarCompra.robot
Resource           Login.robot
Documentation      Robot Framework
Library            SeleniumLibrary     timeout=500

*** Variables ***
${url}    https://www.demoblaze.com

*** Keywords ***

Iniciar sessão
    Open Browser    ${url}    chrome
    Maximize Browser Window

Encerrar sessão
    Capture Page Screenshot
    Close Browser


*** Test Cases ***
Login 
    Iniciar sessão
    Login    carolina123    123456
    Encerrar sessão

Realizar Compra
    Iniciar sessão
    Add Item
    Finalizar Compra
    Encerrar sessão



