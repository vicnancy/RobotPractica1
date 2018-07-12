*** Settings ***
Library  SeleniumLibrary
Library  ../External/common.py
Resource  ../Resources/common.robot
Resource  ../InputData/data.robot

*** Variables ***
${URL mercadona}  https://www.mercadona.es

*** Keywords ***
Accion que retorna un valor
    [Arguments]  ${parametro1}
    [Return]  Valor retornado ${parametro1}

KeywordA
    ${resultado}=  Conectarme al sistema remoto de creacion de helados
    log  KeyA ${resultado}  console=true

KeywordB
    log  KeyB  console=true

KeywordC
    log  KeyC  console=true

Accion que recibe parametro y en funcion del mismo realiza accion A o B
    [Arguments]  ${edad}
    Run Keyword if  ${edad} > 17  KeywordA
    ...          ELSE IF  ${edad} == 17  KeywordC
    ...          ELSE  KeywordB

*** Test Cases ***
Abrir y cerrar navegador
    [Tags]  browser
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  xpath://input[@id='lst-ib']  robotframework
    Click Button  name=btnK
    Sleep  2
    Close Browser

Abrir enlace que contiene Robot
    [Tags]  enlaces  browser
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  xpath://input[@id='lst-ib']  robotframework
    Click Button  name=btnK
    Click Link  xpath://a[contains(text(), 'Robot')]
    ${valor retornado}=  Accion que retorna un valor  Victor
    log  Valor retornado por la keyword es ${valor retornado}  console=true
    Close Browser

Test Edad
    Accion que recibe parametro y en funcion del mismo realiza accion A o B  16
    Accion que recibe parametro y en funcion del mismo realiza accion A o B  17
    Accion que recibe parametro y en funcion del mismo realiza accion A o B  18

Abrir y cerrar navegador desde python
    [Tags]  python
    Open Browser  ${URL mercadona}  ${Browser}
    Listar productos de la web  o-info
    [Teardown]  Close Browser
