import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Comando SELECT utilizando uma máscara para achar nomes que contenham 'ng'
sql = "SELECT * FROM contatos WHERE nome LIKE '%ng%'"

mycursor.execute(sql)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)
