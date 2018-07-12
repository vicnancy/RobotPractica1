from robot.api import logger
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

@keyword("Conectarme al sistema remoto de creacion de helados")
def test_python():
    logger.console(u"Funcion expuesta desde módulo Python")
    logger.error(u"Error expuesta desde módulo Python")
    return "test_python"

@keyword("Listar productos de la web")
def lista_productos(class_name):
    selenium_lib = BuiltIn.get_library_instance("SeleniumLibrary")
    browser = selenium_lib._current_browser()
    lista = browser.find_element_by_class_name(class_name)
    lista_productos = lista.find_elements_by_tag_name("article")
    for producto in lista_productos:
        logger.console(producto)