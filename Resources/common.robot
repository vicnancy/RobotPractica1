*** Keywords ***
Inicio sistema
    [Arguments]  ${parametro}=TSuite
    log  Inicio sistema pruebas suite 2 con parametro ${parametro}  console=true

Finalizacion sistema
    [Arguments]  ${parametro1}=TSuite
    log  Finalizacion sistema pruebas suite 2 con parametros ${parametro1}  console=true

Acceder a url en ventana maximizada
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window