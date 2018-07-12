*** Settings ***
Documentation  Pruebas de escenarios de Suite2
...            para verificar correcto acceso a
...            sistema
Resource  ../Resources/common.robot
Resource  ../InputData/data.robot
Library  Remote  http://127.0.0.1:8270
Test Setup  Inicio sistema
Test Teardown  Finalizacion sistema

*** Variables ***
# Commentaire
${nombre site}  Amazon

*** Keywords ***
Paso de ejecucion con parametro
    [Arguments]  ${parametro1}
    log  ${parametro1}  console=true

*** Test Cases ***
Test Case 1
    # Commentaire
    [Setup]  Inicio sistema  TCase
    log  Se ha iniciado el TC1
    [Teardown]  Finalizacion sistema  TCase

Test Case 2
    Inicio sistema
    log  Se ha iniciado el TC2 ${nombre site}  console=true
    Finalizacion sistema  TCase

Test Case 3
    [Template]  Paso de ejecucion con parametro
    Juan
    Alberto
    Maria

Test Case 4
    abrir cuenta
    ${saldo_a_fin_de_mes}=  obtener saldo
    log  Mi saldo es ${saldo_a_fin_de_mes}
    cerrar cuenta