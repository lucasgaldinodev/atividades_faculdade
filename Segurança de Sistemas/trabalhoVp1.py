from cryptography.fernet import Fernet


mensagem = 'testando'
segredo = 'segredo'
chave = Fernet.generate_key()


def enviar(mensagem, segredo, chave):
    cifrando = Fernet(chave)
    textoCifrado = cifrando.encrypt(mensagem)
    print('Mensagem cifrada -> ' + textoCifrado.decode('utf-8'))
    return textoCifrado


def receber(mensagemCifrada, segredo, chave):
    chave = bytes(chave, encoding='utf-8')
    cifrando = Fernet(chave)
    textoDecifrado = cifrando.decrypt(mensagem)
    print(textoDecifrado.decode('utf-8'))


textoCifrado = enviar(bytes(mensagem, encoding='utf-8'), segredo, chave)
receber(bytes(textoCifrado, encoding='utf-8'), segredo, chave)
