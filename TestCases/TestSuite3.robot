*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../InputData/data.robot
Test Setup   Ir a Amazon.es
Test Teardown   Close Browser

*** Variables ***
${titulo esperado}=  GTD System & Software Engineering: Tailor made ICT solutions
${URL GTD}  http://www.gtd.eu
${URL Amazon}  https://www.amazon.es

*** Keywords ***
Ir a Amazon.es
    Acceder a url en ventana maximizada  ${URL Amazon}  ${Browser}

*** Test Cases ***
Abrir y cerrar gtd.eu
    [Setup]  Open Browser  ${URL GTD}  ${Browser}
    #${titulo}=  Get Text  xpath://div[@class='title']
    ${titulo}=  Get Title
    log  El titulo es ${titulo}  console=true
    should contain  ${titulo}  GTD
    should start with  ${titulo}  GTD
    should not end with  ${titulo}  GTD
    should be equal  ${titulo}  ${titulo esperado}
    Click Button  xpath://button[@class='agree-button']
    Click Element  xpath://div[@class='ico-menu']
    Click Link  xpath://a[contains(text(), 'Team')]
    Sleep  2

Acceder a login a partir del acceso superior de identificacion
    [Tags]  amazon
    #${elemento singin}=  Get Webelement  id=nav-link-accountList
    Click Link  id=nav-link-accountList
    #Click Link  xpath://a[@data-nav-role='signin']
    ${boton continuar}=  Get Element Attribute  id=continue  type
    should be equal as strings  ${boton continuar}  submit