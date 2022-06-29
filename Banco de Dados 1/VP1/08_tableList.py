import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Contador para o print das tabelas
count = 0

# Comando para listar as tabelas criadas
mycursor.execute("SHOW TABLES")

# Funciona de forma similar a checagem de bancos de dados
for x in mycursor:
    count = count + 1
    print(f'Tabela {count}: {x}')
