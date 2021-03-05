import socket

udpSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
print("Socket UDP criado!")

udpSocket.sendto(b"dados que vou enviar", ("192.168.1.77", 3546))
print("Mensagem UDP enviada!")
