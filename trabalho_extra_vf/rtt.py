def calcular(alfa, srtt, ertt, drtt):
    ertt = (1 - alfa) * ertt + alfa * srtt
    drtt = (1 - beta) * drtt + beta * abs(srtt - ertt)
    toi = ertt + 4 * drtt
    print(f'EstimatedRTT -> {ertt} ms')
    print(f'DevRTT -> {drtt} ms')
    print(f'TimeOut Interval -> {toi} ms')


resposta = 's'
alfa = float(input("Valor do alfa: "))
beta = float(input("Valor do beta: "))
initERTT = float(input("EstimatedRTT inicial: "))
initDRTT = float(input("DevRTT inicial: "))
srtt = []

while resposta == 's':
    resposta = input('Inserir novo valor de SampleRTT? s ou n: ')
    if resposta == 's':
        srtt.append(float(input('Novo valor: ')))
    if resposta == 'n':
        print('')
        for srtt in srtt:
            print('')
            print(f'Para o SampleRTT -> {srtt} ms')
            calcular(alfa, srtt, initERTT, initDRTT)
