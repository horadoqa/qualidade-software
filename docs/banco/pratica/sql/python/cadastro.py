import csv
import psycopg2

# Conexão com o banco
conn = psycopg2.connect(
    host="host.docker.internal",
    database="horadoqa-postgresql",
    user="horadoqa",
    password="1q2w3e4r",
    port=5432
)

cur = conn.cursor()

# Abrir o arquivo CSV
with open("pessoas.csv", "r", encoding="utf-8") as file:
    reader = csv.DictReader(file)

    for row in reader:
        sql = """
        INSERT INTO pessoa2 
        (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
        VALUES (%s, %s, %s, %s, %s, %s)
        """

        dados = (
            row["nome"],
            row["data_nascimento"],
            row["sexo"],
            row["estado_civil"],
            row["naturalidade"],
            row["nacionalidade"]
        )

        cur.execute(sql, dados)

# Salvar no banco
conn.commit()

print("Importação concluída com sucesso!")

# Fechar conexão
cur.close()
conn.close()