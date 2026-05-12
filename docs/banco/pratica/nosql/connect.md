# 🧭 Como conectar MongoDB no MongoDB Compass

## 1. Abrir o MongoDB Compass

Abra o aplicativo:

MongoDB Compass

Clique em:

```text
New Connection
```

---

## 2. Escolher tipo de conexão

Na tela inicial você verá:

```text
Connection String (URI)
```

---

## 3. Usar conexão do Docker

Se você está usando Docker com MongoDB:

```text
mongodb://horadoqa:1q2w3e4r@localhost:27017
```

Ou com autenticação no admin:

```text
mongodb://horadoqa:1q2w3e4r@localhost:27017/admin
```

---

## 4. Conectar

Clique em:

```text
Connect
```

Se estiver tudo certo, você verá os bancos e collections.

---

# 🔄 Fluxo visual

````markdown id="c9q7mw"
```mermaid
flowchart LR

A[Docker MongoDB]
--> B[Porta 27017]

B --> C[MongoDB Compass]

C --> D[Databases]
D --> E[Collections]
E --> F[Documents JSON]
```
````

---

# 📊 O que você pode fazer no Compass

No MongoDB Compass você consegue:

* visualizar databases
* criar collections
* inserir documentos JSON
* editar dados diretamente
* executar queries visualmente
* analisar estrutura dos dados

---

# 🧠 Conceito importante

MongoDB é NoSQL, então a estrutura muda:

| SQL    | MongoDB    |
| ------ | ---------- |
| Tabela | Collection |
| Linha  | Document   |
| Coluna | Campo      |

---

# 📄 Exemplo de documento

```json
{
  "nome": "Carlos",
  "idade": 30,
  "email": "carlos@email.com"
}
```

---

# ➕ Inserir dados no Compass

Dentro de uma collection:

1. Clique em **Add Data**
2. Escolha **Insert Document**
3. Cole o JSON
4. Clique em **Insert**

---

# ⚠️ Observação

* O MongoDB Compass substitui ferramentas SQL GUI como DBeaver no mundo NoSQL
* Ele é o cliente oficial do MongoDB

---

# 🔗 Links úteis

* [MongoDB Compass Download](https://www.mongodb.com/products/tools/compass?utm_source=chatgpt.com)
* [MongoDB Docs](https://www.mongodb.com/docs/?utm_source=chatgpt.com)
