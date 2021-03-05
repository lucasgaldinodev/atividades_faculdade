#! python
import sys
import socket

# Dessa forma conseguimos passar os parâmetros via terminal
url = sys.argv[1]
method = sys.argv[2]

# Aqui criamos o socket e definimos a conexão
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((url, 80))

# Aqui é feita a requisição HTTP de acordo com os parâmetros passados
# request = f"{method} / HTTP/1.1\r\nHost:%s\r\n\r\n" % url
request = f"{method} / HTTP/1.1\nHost: {url}\n\n"
client.send(request.encode())

# Aqui tratamos a resposta de alguma forma
response = client.recv(5000).decode()
http_response = repr(response)
http_response_len = len(http_response)

if(http_response):
    print('')
    print('Conexão feita com sucesso!')
    print('')
    print(f'Código de status e mensagem da resposta: {http_response}')
    print('')
    print(f'Tamanho da resposta: {http_response_len}')

if(http_response_len > 0):
    print(f'Dados recebidos: {http_response}')
