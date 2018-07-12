from robot.api import logger

class SistemaBancario:

    def __init__(self):
        self.id_banco = "BA-900"

    def abrir_cuenta(self):
        logger.console("abrir cuenta")

    def cerrar_cuenta(self):
        logger.console("cerrar cuenta")

    def obtener_saldo(self):
        logger.console("obtener saldo")
        return 900