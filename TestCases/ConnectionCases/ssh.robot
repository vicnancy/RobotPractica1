*** Settings ***
Library  SSHLibrary
Suite Setup  Open Connection And Log in
Suite Teardown  Close All Connections

*** Variables ***
${HOST}  localhost
${USERNAME}  test
${PASSWORD}  test

*** Keywords ***
Open Connection And Log in
    Open Connection  ${HOST}
    #Login  ${USERNAME}  ${PASSWORD}

*** Test Cases ***
Ejecuter comando y comprobar resultado
    [Documentation]  blabla
    ${out}=  Execute Command  echo Esta es una prueba de RF y SSH
    should be equal  ${out}  Esta es una prueba de RF y SSH
