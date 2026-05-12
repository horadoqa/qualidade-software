# Apagando Collection

Para apagar uma **collection** no MongoDB, você usa o comando `drop()`.

---

# 🗑️ Apagar collection

## 1. Selecionar o banco

```javascript
use minha_loja
```

---

## 2. Apagar a collection

```javascript
db.usuarios.drop()
```

👉 Isso remove a collection `usuarios` inteira.

---

# ⚠️ Importante

Quando você usa `drop()`:

* apaga a collection
* apaga TODOS os documentos dentro dela
* não tem “desfazer”

---

# 📊 Exemplo

Antes:

```
usuarios
  ├── Carlos
  ├── Ana
  └── João
```

Depois:

```
❌ collection não existe mais
```

---

# 🔄 Fluxo visual

````markdown
```mermaid
flowchart TD

A[Selecionar Database]
--> B[db.collection.drop()]
--> C[Collection removida]
```
````

---

# 🧠 Resumo rápido

* `db.nome.drop()` → apaga collection
* remove tudo dentro dela
* operação definitiva

---


