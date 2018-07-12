*** Settings ***
Test Setup  navegar a la pagina  http://www.amazon.es
Test Teardown  cerrar navegador

*** Keywords ***
navegar a la pagina  ${URL}

cerrar navegador

usuario no logado

usuario busca productos de tipo jardineria

aparecen resultados de busqueda de productos relevantes

*** Test Cases ***
usuario no logado puede listar productos catalogo
    Given usuario no logado
    When usuario busca productos de tipo jardineria
    Then aparecen resultados de busqueda de productos relevantes
