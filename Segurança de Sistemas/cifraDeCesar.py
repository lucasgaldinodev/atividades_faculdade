def cifraDeCesar(texto, chave, cifrando):
    alfabeto = 'abcdefghijklmnopqrstuvwxyz'
    novoTexto = ''
    for letra in texto:
        indice = alfabeto.find(letra)
        if indice == -1:
            novoTexto += letra
        else:
            if cifrando is True:
                novoIndice = indice + chave
            else:
                novoIndice = indice - chave
            novoIndice = novoIndice % len(alfabeto)
            novoTexto += alfabeto[novoIndice:novoIndice+1]
    return novoTexto


def forcaBruta(texto):
    for chave in range(26):
        chave = int(chave)
        print(
            f'Chave: {chave} -> Mensagem: {cifraDeCesar(texto, chave, False)}')


texto = 'AtaqueAgora'
chave = 4

print('Original -> ', texto)
criptografado = cifraDeCesar(texto, chave, True)
print(f'Cifrado com chave {chave} -> {criptografado}')
decriptografado = cifraDeCesar(criptografado, chave, False)
print('Decifrado -> ', decriptografado)
print('')
forcaBruta(texto)
