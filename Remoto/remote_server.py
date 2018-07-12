from robotremoteserver import RobotRemoteServer
from libreria_remota import SistemaBancario

server = RobotRemoteServer(SistemaBancario(), serve=False)
server.serve()