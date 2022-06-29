import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Comando DELETE
sql = "DELETE FROM contatos WHERE nome = 'Yuri'"

mycursor.execute(sql)

mydb.commit()

print(mycursor.rowcount, "dado(s) deletado(s).")
