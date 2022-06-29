import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Comando onde o Join acontece, também pode-se fazer o Left e Right Join
sql = "SELECT \
  contatos.nome AS usuario, \
  emails.conteudo AS conteudo \
  FROM contatos \
  INNER JOIN emails ON contatos.nome = emails.dono"

mycursor.execute(sql)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)
