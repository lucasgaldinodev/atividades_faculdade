import csv

# dados inseridos pelo usuário
userPath = 'redes2/dadosVp1.csv'
userIp = '128.45.67.15'


# transforma os ips em binário
def toBinary(ip):
    return '.'.join([bin(int(x)+256)[3:] for x in ip.split('.')])


# retorna o total de bits iguais em dois ips
# comparados de acordo com o tamanho da máscara
def binaryCompare(userIp, csvIp, mask):
    counter = 0
    userIp = toBinary(userIp).replace('.', '')
    csvIp = toBinary(csvIp).replace('.', '')
    for bit in range(0, mask):
        if userIp[bit] == csvIp[bit]:
            counter = counter + 1
    return counter


# retorna o total de bits 1 na mascara
def maskCounter(mask):
    counter = 0
    mask = toBinary(mask)
    for bit in range(0, len(mask)):
        if mask[bit] == '1':
            counter = counter + 1
    return counter


# leitura do csv
def readCsv():
    with open(userPath) as csvFile:
        csvReader = csv.reader(csvFile, delimiter=',')
        lineCount = 0
        for row in csvReader:
            print(f'Prefix -> {row[0]}, '
                  f'Mask -> {row[1]}, '
                  f'Next Hop Port -> {row[2]}'
                  )
            lineCount += 1


# algortimo do trabalho
def operation(userIp):
    print('Comparando os IPs...')
    with open(userPath) as csvFile:
        csvReader = csv.reader(csvFile, delimiter=',')
        lineCount = 0
        bestMatch = 0
        for row in csvReader:
            prefix = row[0]
            mask = maskCounter(row[1])
            if binaryCompare(userIp, prefix, mask) == mask:
                print(f'Aconteceu um MATCH com o prefixo {row[0]} / {mask}')
                if mask > bestMatch:
                    bestMatch = mask
            lineCount += 1
    return bestMatch


print('IP fornecido pelo usuário -> ', userIp)
print('CSV fornecido pelo usuário -> ', userPath, '\n')
print('IP destino em binário -> ', toBinary(userIp), '\n')
print('-- Dados do arquivo CSV --')
readCsv()
print('--------------------------\n')
print(
    f'\nO melhor Match será com o Prefixo de máscara -> /{operation(userIp)}')
