Feature:Compra en el e-commerce online
  Scenario:usuario no logado puede listar productos catalogo
    Given usuario no logado
    When usuario busca productos de tipo jardineria
    Then aparecen resultados de busqueda de productos relevantes