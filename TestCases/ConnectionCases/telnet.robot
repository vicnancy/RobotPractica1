*** Settings ***
Library  Telnet
Library  Collections
suite teardown  Close All Connections
Test Timeout  10s

*** Variables ***
${ip}  64.13.139.230
${port}  23

*** Test Cases ***
Connectarse a sistema via telnet
    Open Connection  ${ip}  ${port}
    Set Prompt  user
    Read until  user

Obtener informacion del sistema conectado
    ${out}=  Execute Command  HELP
    ${item}=  Get From List  ${out}  0
    log  ${out}  console=true
    #should match regexp  ${item}  ^2048