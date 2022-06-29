import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Inserindo valores em uma tabela
# Aqui é o comando em sql padrão
sql = "INSERT INTO contatos (nome, tel) VALUES (%s, %s)"
# Aqui estão os dados que vão ser inseridos
val = ("Lucas", "123")
# Execução do comando propriamente dita
mycursor.execute(sql, val)
# Sem o commit, nenhuma alteração é feita na tela
mydb.commit()
# Confirmação de quantas linhas foram alteradas na tabela
print("1 dado inserido, ID:", mycursor.lastrowid)
