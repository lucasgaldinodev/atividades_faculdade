import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Função SELECT com as colunas especificadas
mycursor.execute("SELECT nome, tel FROM contatos")

myresult = mycursor.fetchall()

for x in myresult:
    print(x)
