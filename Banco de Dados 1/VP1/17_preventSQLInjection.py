import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Léo, não entendi bem esse conceito, mas fica exemplificado aqui
# When query values are provided by the user, you should escape the values.
# This is to prevent SQL injections, which is a common web hacking
# technique to destroy or misuse your database.
# The mysql.connector module has methods to escape query values:

sql = "SELECT * FROM contatos WHERE nome = %s"
adr = ("Lucas", )

mycursor.execute(sql, adr)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)
