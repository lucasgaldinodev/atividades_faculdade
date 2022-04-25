import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.connect(("0.0.0.0", 3912))

sock.send(b"Enviando dados")

mensagem1 = sock.recv(1024)
mensagem2 = sock.recv(1024)

print(f"1x -> {mensagem1.decode('UTF-8')}")
print(f"2x -> {mensagem2.decode('UTF-8')}")
