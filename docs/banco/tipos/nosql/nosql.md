# Banco de dados NoSQL

Um **banco de dados NoSQL** (ou “Not Only SQL”) é um tipo de sistema de armazenamento de dados que **não usa o modelo tradicional de tabelas com linhas e colunas**, como os bancos SQL. Em vez disso, ele é mais **flexível e variado na forma de guardar informações**.

### 🧠 Ideia principal

Enquanto bancos SQL organizam tudo em tabelas rígidas, os bancos NoSQL permitem armazenar dados de formas diferentes, dependendo do tipo de aplicação.

---

## 📦 Tipos de bancos NoSQL

### 1. 📄 Baseado em documentos

Guarda dados como “documentos”, geralmente em formato JSON.

Exemplo:

```json
{
  "nome": "Ana",
  "idade": 25,
  "email": "ana@email.com"
}
```

📌 Muito usado em aplicações web modernas.

Exemplo: MongoDB

---

### 2. 🔑 Valor-chave (Key-Value)

Funciona como um dicionário:

* chave → valor

Exemplo:

* "usuario_1" → "Ana"
* "sessao_123" → dados da sessão

📌 Muito rápido para consultas simples.

Exemplo: Redis

---

### 3. 📊 Colunar (Column Family)

Organiza dados por colunas em vez de linhas.

📌 Bom para grandes volumes de dados e análises.

Exemplo: Apache Cassandra

---

### 4. 🌐 Baseado em grafos

Usa nós e conexões (relacionamentos).

📌 Ideal para redes sociais, recomendações e mapas.

Exemplo: Neo4j

---

## ⚖️ Diferença principal entre SQL e NoSQL

| SQL (relacional)           | NoSQL                                     |
| -------------------------- | ----------------------------------------- |
| Estrutura fixa (tabelas)   | Estrutura flexível                        |
| Usa SQL                    | Não depende de SQL                        |
| Bom para dados organizados | Bom para grandes volumes e dados variados |
| Escala vertical            | Escala horizontal                         |

---

## 🚀 Quando usar NoSQL?

* Aplicações com muitos dados variados
* Redes sociais
* Jogos online
* Sistemas em tempo real
* Big Data

---


