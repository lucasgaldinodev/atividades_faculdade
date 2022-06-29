import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

# Para poder usar o JOIN primeiro vamos criar outra tabela
# mycursor.execute("CREATE TABLE emails(id INT AUTO_INCREMENT PRIMARY KEY, \
#                                    dono VARCHAR(50), conteudo VARCHAR(50))")

# Populando a nova tabela
sql = "INSERT INTO emails (dono, conteudo) VALUES (%s, %s)"
val = [
    ('Arthur', 'teste 1'),
    ('Paulo', 'teste 2'),
    ('Ângelo', 'teste 3'),
    ('Eduardo', 'teste 4'),
    ('Yuri', 'teste 5'),
    ('Leonardo', 'teste 6')
]

# Função para inserções múltiplas
mycursor.executemany(sql, val)

mydb.commit()

print(mycursor.rowcount, "dados armazenados.")
