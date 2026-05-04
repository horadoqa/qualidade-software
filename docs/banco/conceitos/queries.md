# O que são Queries ?

**Queries** (ou “consultas”) são **comandos usados para interagir com um banco de dados** — ou seja, para **buscar, inserir, atualizar ou apagar dados**.

👉 Em termos simples:
**query é a forma de “perguntar” ou “mandar instruções” para o banco de dados.**

---

## 🧠 O que é uma query?

Uma query é uma instrução escrita em uma linguagem de banco de dados (geralmente SQL) para executar alguma ação.

Exemplo:

```sql
SELECT * FROM usuarios;
```

👉 Isso significa: “me mostre todos os usuários”.

---

# ⚙️ Para que servem as queries?

As queries servem para:

## 🔍 1. Buscar dados (Read)

```sql
SELECT nome FROM usuarios;
```

---

## ➕ 2. Inserir dados (Create)

```sql
INSERT INTO usuarios (nome, idade) VALUES ('João', 25);
```

---

## ✏️ 3. Atualizar dados (Update)

```sql
UPDATE usuarios SET idade = 26 WHERE nome = 'João';
```

---

## ❌ 4. Remover dados (Delete)

```sql
DELETE FROM usuarios WHERE nome = 'João';
```

---

# 🧱 Query no mundo real

As queries são usadas em bancos como:

* PostgreSQL
* MySQL
* SQLite

---

# 🧠 Explicação simples

Pense assim:

* 🧾 Banco de dados = biblioteca
* 📖 Query = pedido para o bibliotecário

Ex:

> “Me traga todos os livros de programação”

---

# 📊 Tipos de query (CRUD)

As queries seguem o padrão **CRUD**:

| Ação      | Tipo   |
| --------- | ------ |
| Criar     | INSERT |
| Ler       | SELECT |
| Atualizar | UPDATE |
| Deletar   | DELETE |

---

# 📌 Resumo

Queries são:

✔ comandos para bancos de dados
✔ usadas para manipular dados
✔ escritas principalmente em SQL
✔ base da comunicação com bancos

---
