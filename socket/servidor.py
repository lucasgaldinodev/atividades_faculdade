import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind(("0.0.0.0", 3912))

while True:
    mensagem, endereco_remetente = sock.recvfrom(1024)
    print(f"Mensagem recebida de {endereco_remetente}")
    sock.sendto(mensagem, endereco_remetente)
    sock.sendto(mensagem, endereco_remetente)
