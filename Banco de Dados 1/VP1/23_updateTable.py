import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Comando para atualizar/modificar dados de uma tabela
sql = "UPDATE contatos SET nome = 'Galdino' WHERE nome = 'Lucas'"

mycursor.execute(sql)

mydb.commit()

print(mycursor.rowcount, "dado(s) afetado(s).")
