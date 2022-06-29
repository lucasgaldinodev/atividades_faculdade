import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM contatos")

# Com o fetchone você busca apenas a primeira linha da execução
myresult = mycursor.fetchone()

print(myresult)
