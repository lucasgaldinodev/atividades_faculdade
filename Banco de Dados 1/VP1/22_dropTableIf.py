import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Comando para deletar uma tabela inteira
sql = "DROP TABLE IF EXISTS contatos"

mycursor.execute(sql)
