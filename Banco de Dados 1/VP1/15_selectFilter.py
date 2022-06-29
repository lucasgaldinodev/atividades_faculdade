import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Comando em SQL
sql = "SELECT * FROM contatos WHERE tel = 456"

mycursor.execute(sql)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)
