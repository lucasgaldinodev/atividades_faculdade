import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# SELECT pega apenas os 3 primeiros resultados da busca
mycursor.execute("SELECT * FROM contatos LIMIT 3")

myresult = mycursor.fetchall()

for x in myresult:
    print(x)
