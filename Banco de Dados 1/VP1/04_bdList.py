import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r"
)

mycursor = mydb.cursor()

# Comando para listar os banco de dados criados
mycursor.execute("SHOW DATABASES")

# A variável X itera pelo conteudo do mycursor,
# que contém os nomes dos banco de dados
for x in mycursor:
    print(x)

print('')

# Versão mais legível
mycursor.execute("SHOW DATABASES")
count = 0
for x in mycursor:
    count = count + 1
    print(f'Banco de Dados {count}: {x}')
