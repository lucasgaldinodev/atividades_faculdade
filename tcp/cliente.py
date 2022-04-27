import socket

cliente = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
cliente.connect(('0.0.0.0', 8080))

while True:
    cliente.send(input("Digite a mensagem: ").encode())
    mensagem = cliente.recv(1024)
    print(mensagem.decode("utf-8"))
