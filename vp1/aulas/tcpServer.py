#! python
import socket
import _thread as thread


def newConn(newSocketConn):
    linha = ""
    while True:
        data = newSocketConn.recv(1)
        linha += data.decode("UTF-8")
        if data == b"\n":
            print(linha)
            newSocketConn.send(bytes(linha, "UTF-8"))
            break
    newSocketConn.close()


def main():
    tcpSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    print('Socket criado!')

    tcpSocket.bind(('', 8080))
    print('Porta 8080 vinculada!')

    tcpSocket.listen()
    print('Novas conexões sendo ouvidas!')

    while True:
        print('Aguardando conexão!')

        newSocketConn, cliente = tcpSocket.accept()
        print('Nova conexão do cliente: ', cliente)

        thread.start_new_thread(newConn, tuple([newSocketConn]))


main()
