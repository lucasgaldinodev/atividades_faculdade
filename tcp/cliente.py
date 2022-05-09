import socket
import threading

threads = list()
cliente = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
cliente.connect(('0.0.0.0', 8081))


def enviar(cliente):
    while True:
        cliente.send(input("Digite a mensagem: \n").encode())


def receber(cliente):
    while True:
        mensagem = cliente.recv(1024)
        print(mensagem.decode("utf-8"))
        print('-----')


enviarTh = threading.Thread(target=enviar, args=(cliente,))
receberTh = threading.Thread(target=receber, args=(cliente,))

receberTh.start()
enviarTh.start()

# for index, thread in enumerate(threads):
#     thread.start()
