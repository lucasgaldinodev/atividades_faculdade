resposta = 's'
alfa = float(input('Valor do alfa: '))
beta = float(input('Valor do beta: '))
ertt = float(input('EstimatedRTT inicial: '))
drtt = float(input('DevRTT inicial: '))


def calcular(alfa, beta, srtt):
    global ertt
    global drtt

    ertt = (1 - alfa) * ertt + alfa * srtt
    drtt = (1 - beta) * drtt + beta * abs(srtt - ertt)
    toi = ertt + 4 * drtt
    print(f'EstimatedRTT -> {ertt} ms')
    print(f'DevRTT -> {drtt} ms')
    print(f'TimeOut Interval -> {toi} ms')


while True:
    print('')
    resposta = input('Inserir novo valor de SampleRTT? s ou n: ')
    if resposta == 'n':
        break
    if resposta == 's':
        srtt = float(input('Novo valor: '))
        print('')
        print('-------------------------------')
        print(f'Para o SampleRTT -> {srtt} ms')
        calcular(alfa, beta, srtt)
        print('-------------------------------')
