import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Função select padrão do sql
mycursor.execute("SELECT * FROM contatos")

# Fetchall serve para buscar todas as linhas da última execução
myresult = mycursor.fetchall()

for x in myresult:
    print(x)
