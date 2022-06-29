import mysql.connector

# Você pode se conectar ao banco de dados diretamente
# quando está iniciando a conexão com o MySQL
# Caso o banco não exista, vai retornar um erro
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)
