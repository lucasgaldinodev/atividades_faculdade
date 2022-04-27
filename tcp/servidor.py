import socket

servidor = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
servidor.bind(('0.0.0.0', 8080))
servidor.listen()

while True:
    cliente, endCliente = servidor.accept()
    print(f"Recebeu conexão de {endCliente}")
    while True:
        # try:
        mensagem = cliente.recv(1024)
        print(mensagem.decode("utf-8"))
        cliente.send(mensagem)
        # except:
        #     break
