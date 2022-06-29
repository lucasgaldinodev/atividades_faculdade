import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="cod3r",
    database="DaenerysQueimouFoiPouco"
)

mycursor = mydb.cursor()

sql = "INSERT INTO contatos (nome, tel) VALUES (%s, %s)"
val = [
    ('Arthur', 456),
    ('Paulo', 789),
    ('Ângelo', 000),
    ('Eduardo', 987),
    ('Yuri', 654),
    ('Leonardo', 321)
]

# Função para inserções múltiplas
mycursor.executemany(sql, val)

mydb.commit()

print(mycursor.rowcount, "dados armazenados.")
