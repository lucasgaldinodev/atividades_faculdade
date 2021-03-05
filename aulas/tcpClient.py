import socket


def main():
    tcpSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcpSocket.connect(('www.google.com', 8080))
    print("Conexão estabelecida!")

    tcpSocket.send(b"ola mundo\n")

    linha = ""
    while True:
        data = tcpSocket.recv(1)
        linha += data.decode("UTF-8")
        if data == b"\n":
            print(linha)
            break

    tcpSocket.close()


main()
