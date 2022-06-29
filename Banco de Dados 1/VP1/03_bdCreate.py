import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r"
)

# O objeto de cursor é uma abstração especificada no DB-API 2.0 do Python.
# Isso nos dá a capacidade de ter vários ambientes de trabalho
# separados por meio da mesma conexão com o banco de dados
mycursor = mydb.cursor()

# Comando para criar o banco de dados
mycursor.execute("CREATE DATABASE DaenerysQueimouFoiPouco")
