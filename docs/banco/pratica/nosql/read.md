# Lendo dados no banco com MongoDB

Para **ler dados no MongoDB**, você usa principalmente a função `find()`.

Vou te mostrar em **Mongo Shell, Python e API (Flask)**.

---

# 🧠 1. Ler dados no MongoDB (mongosh)

## Listar tudo

```javascript
db.usuarios.find()
```

---

## Formatado (mais legível)

```javascript
db.usuarios.find().pretty()
```

---

## Filtrar por campo

```javascript
db.usuarios.find({ nome: "horadoqa" })
```

---

## Buscar apenas um

```javascript
db.usuarios.findOne({ nome: "horadoqa" })
```

---

# 🐍 2. Ler dados com Python (PyMongo)

Usando PyMongo

## Código:

```python
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017")

db = client["horadoqa"]
collection = db["usuarios"]

# Buscar todos
usuarios = collection.find()

for u in usuarios:
    print(u)
```

---

## Buscar filtrado

```python
usuario = collection.find_one({"nome": "horadoqa"})
print(usuario)
```

---

## Converter ObjectId para string (opcional)

```python
from bson import ObjectId
```

---

# 🌐 3. Ler dados via API (Flask)

## Endpoint GET

```python
from flask import Flask, jsonify
from pymongo import MongoClient

app = Flask(__name__)
client = MongoClient("mongodb://localhost:27017")

db = client["horadoqa"]
collection = db["usuarios"]

@app.route("/usuarios", methods=["GET"])
def listar_usuarios():
    usuarios = list(collection.find({}, {"_id": 0}))
    return jsonify(usuarios)

if __name__ == "__main__":
    app.run(debug=True)
```

---

## Testar com cURL

```bash
curl http://127.0.0.1:5000/usuarios
```

---

## Postman

### Método:

```
GET
```

### URL:

```
http://127.0.0.1:5000/usuarios
```

---

# 📊 Estrutura visual

```mermaid
flowchart TD

A[MongoDB]
--> B[Collection usuarios]
--> C[find()]
--> D[Documentos JSON]
```

---

# 🔍 Tipos de leitura

| Função         | O que faz        |
| -------------- | ---------------- |
| find()         | vários registros |
| findOne()      | 1 registro       |
| find({filtro}) | busca filtrada   |
| projection     | escolhe campos   |

---

## Exemplo de projection

```javascript
db.usuarios.find({}, { nome: 1, _id: 0 })
```

---

# 🚀 Resumo simples

* `find()` → pega tudo
* `findOne()` → pega um só
* filtros → `{ campo: valor }`
* retorna JSON sempre

---
