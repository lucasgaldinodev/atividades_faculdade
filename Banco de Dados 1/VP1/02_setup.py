# Criando conexão
import mysql.connector

# Aqui você vai setar o host, usuário e senha do
# banco de dados criado na instalação do MySQL

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r"
)

# O print vai retornar o objeto e o espaço de memória ocupado
print(mydb)
