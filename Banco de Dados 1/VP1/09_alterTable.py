import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Usando o comando alter table para adicionar uma
# chave primária para a tabela winterfell
mycursor.execute(
    "ALTER TABLE contatos ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY")
