import socket

udpSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
print("Socket UDP2 criado!")

udpSocket.bind(("", 3546))
print("Porta 3546 vinculada!")

msg, senderAddress = udpSocket.recvfrom(5000)
print(f"Mensagem '{msg}' recebida do '{senderAddress}")
