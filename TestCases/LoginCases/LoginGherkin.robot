*** Keywords ***
usuario con credentciales correctas
    log  preconficion credenciales OK  console=true

usuario introduce el username
    log  intro username  console=true

usuario introduce la clave
    log  intro clave  console=true

le aparece el profile de usuario
    log  pantalla user profile OK  console=true

*** Test Cases ***
Usuario accede al sistema con credenciales correctas
    [Tags]  gherkin
    Given usuario con credentciales correctas
    When usuario introduce el username
    And usuario introduce la clave
    Then le aparece el profile de usuario