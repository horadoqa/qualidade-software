# 📘 Guia de Queries no Banco de Dados com DBeaver

Este guia apresenta exemplos básicos de manipulação de dados utilizando SQL em um banco PostgreSQL.

---

## 🔎 Verificando a versão do banco

```sql
SELECT version();
```

---

## 🏗️ Criação de Tabela

### Modelo com ID auto-incremento

```sql
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo VARCHAR(10),
    estado_civil VARCHAR(20),
    naturalidade VARCHAR(100),
    nacionalidade VARCHAR(100)
);
```

---

### Modelo com UUID

Antes de usar UUID, habilite a extensão:

```sql
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

Criação da tabela:

```sql
CREATE TABLE usuarios (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo VARCHAR(10),
    estado_civil VARCHAR(20),
    naturalidade VARCHAR(100),
    nacionalidade VARCHAR(100)
);
```

---

## ➕ Inserção de Dados

### Inserindo um usuário:

```sql
INSERT INTO usuarios (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
VALUES ('Maria Souza', '1985-03-22', 'Feminino', 'Casado', 'São Paulo', 'Brasileira');
```

### Inserindo vários usuários:

```sql
INSERT INTO usuarios (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
VALUES 
('Maria Souza', '1985-03-22', 'Feminino', 'Casado', 'São Paulo', 'Brasileira'),
('Ricardo Fahham', '1971-07-01', 'Masculino', 'Casado', 'Rio de Janeiro', 'Brasileira'),
('João Ricardo', '2000-04-24', 'Masculino', 'Solteiro', 'Rio de Janeiro', 'Brasileira');
```

Sua ideia está correta, mas dá pra melhorar deixando mais clara, prática e útil para quem vai realmente executar isso. Aqui vai uma versão mais profissional da documentação:

---

### 🧩 Inserção de Usuários via Scripts e Linguagens

Além de executar comandos SQL diretamente no banco (por exemplo, via DBeaver), também é possível automatizar a inserção de dados utilizando diferentes linguagens de programação e ferramentas.

Isso é muito útil para:

* Popular o banco com dados de teste
* Criar rotinas automatizadas
* Integrar sistemas
* Executar cargas em lote (batch)

---

## 💻 Tecnologias que podem ser utilizadas

### 🐍 Python

Muito utilizado para scripts rápidos e automações.

Bibliotecas comuns:

* `psycopg2` (PostgreSQL)
* `sqlalchemy` (ORM)

Exemplo:

```python id="5ptgwr"
import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="meubanco",
    user="usuario",
    password="senha"
)

cursor = conn.cursor()

cursor.execute("""
INSERT INTO usuarios (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
VALUES (%s, %s, %s, %s, %s, %s)
""", ("Maria Souza", "1985-03-22", "Feminino", "Casado", "São Paulo", "Brasileira"))

conn.commit()
cursor.close()
conn.close()
```

---

### 🤖 Robot Framework

Usado para automação de testes, mas também pode executar queries no banco.

* Ideal para testes automatizados
* Integração com bibliotecas de banco

---

### 🌐 Cypress

Focado em testes end-to-end (frontend), mas pode ser usado para preparar dados via API ou banco.

* Não é a principal ferramenta para inserção direta no banco
* Melhor usar via backend/API

---

### 🐹 Go (Golang)

Muito eficiente para aplicações performáticas.

* Biblioteca padrão `database/sql`
* Drivers como `lib/pq` para PostgreSQL

---

### ⚡ JavaScript / Node.js

Muito comum em aplicações web.

Bibliotecas:

* `pg` (PostgreSQL)
* `sequelize` (ORM)

Exemplo:

```javascript id="zbd2hs"
const { Client } = require('pg');

const client = new Client({
  host: 'localhost',
  user: 'usuario',
  password: 'senha',
  database: 'meubanco',
});

async function inserirUsuario() {
  await client.connect();

  await client.query(
    `INSERT INTO usuarios (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
     VALUES ($1, $2, $3, $4, $5, $6)`,
    ["Maria Souza", "1985-03-22", "Feminino", "Casado", "São Paulo", "Brasileira"]
  );

  await client.end();
}

inserirUsuario();
```

---

## ⚠️ Observações importantes

* Sempre use **queries parametrizadas** (evita SQL Injection)
* Gerencie conexões corretamente (abrir/fechar)
* Evite inserir dados diretamente em produção sem validação
* Prefira usar APIs quando estiver em sistemas reais

---

## 📄 Consulta de Dados

### Listar todos os registros

```sql
SELECT * FROM usuarios;
```

### Selecionar colunas específicas

```sql
SELECT nome, data_nascimento FROM usuarios;
```

---

## 🎯 Filtros

### Usuários maiores de idade (exemplo correto)

```sql
SELECT *
FROM usuarios
WHERE data_nascimento <= CURRENT_DATE - INTERVAL '18 years';
```

> ⚠️ Evite datas fixas (ex: 2008-01-01), pois ficam desatualizadas.

---

### Buscar por estado civil

```sql
SELECT nome, sexo, nacionalidade
FROM usuarios
WHERE estado_civil = 'Solteiro'
ORDER BY nome ASC;
```

---

### Buscar usuário por nome

```sql
SELECT *
FROM usuarios
WHERE nome = 'Ana Oliveira';
```

### Contar usuários por nome

```sql
SELECT COUNT(*)
FROM usuarios
WHERE nome = 'Ana Oliveira';
```

---

## 🔄 Ordenação

```sql
SELECT *
FROM usuarios
ORDER BY nome ASC;
```

---

## ✏️ Atualização de Dados

### Atualizar pelo nome

```sql
UPDATE usuarios
SET nome = 'João Ricardo Santana Fahham'
WHERE nome = 'João Ricardo';
```

> ⚠️ Cuidado: atualizar por nome pode afetar múltiplos registros.

---

### Atualizar pelo UUID (recomendado)

```sql
UPDATE usuarios
SET nome = 'João Ricardo Santana Fahham'
WHERE id = 'SEU-UUID-AQUI';
```

---

## ✅ Boas práticas

* Sempre use `WHERE` em `UPDATE` e `DELETE`
* Prefira identificadores únicos (`id` ou `UUID`)
* Evite `SELECT *` em produção
* Use nomes padronizados (snake_case)
* Normalize dados quando necessário

---

## 🚀 Próximos passos sugeridos

Para evoluir seu uso de SQL:

* Aprender `JOIN` (relacionamentos)
* Usar índices (`CREATE INDEX`)
* Trabalhar com `GROUP BY`
* Criar views e procedures

---

