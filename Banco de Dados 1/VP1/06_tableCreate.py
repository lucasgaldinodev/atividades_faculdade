import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Criando uma tabela sem chave primária
mycursor.execute("CREATE TABLE contatos(nome VARCHAR(50), tel INT)")

# Criando uma tabela, já com chave primária e de auto incremento
mycursor.execute("CREATE TABLE emails(id INT AUTO_INCREMENT PRIMARY KEY, \
                                          dono VARCHAR(50))")
