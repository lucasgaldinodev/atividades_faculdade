import socket
import threading

servidor = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
servidor.bind(('0.0.0.0', 8081))
servidor.listen()

listaClientes = []


def receber(cliente):
    while True:
        print(f"Recebeu conexão de {endCliente}")
        mensagem = cliente.recv(1024)
        for c in listaClientes:
            # if c == cliente:
            #     mensagem = cliente.recv(1024)
            #     print(f'{endCliente}: {mensagem.decode("utf-8")}')
            print(f'{endCliente}: {mensagem.decode("utf-8")}')
            c.send(mensagem)


while True:
    cliente, endCliente = servidor.accept()
    listaClientes.append(cliente)
    enviarThServer = threading.Thread(target=receber, args=(cliente,))
    enviarThServer.start()
