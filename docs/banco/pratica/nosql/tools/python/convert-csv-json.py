import csv
import json

dados = []

with open("usuarios.csv", mode="r", encoding="utf-8") as arquivo_csv:
    leitor = csv.DictReader(arquivo_csv)
    
    for linha in leitor:
        dados.append(linha)

with open("usuarios.json", mode="w", encoding="utf-8") as arquivo_json:
    json.dump(dados, arquivo_json, indent=4, ensure_ascii=False)

print("Conversão concluída!")