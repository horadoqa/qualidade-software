# 🧠 O que é modelagem de banco de dados?

É definir:

* quais dados serão armazenados
* como esses dados serão organizados
* como eles se relacionam entre si
* quais regras o banco deve seguir

---

# 🧱 Exemplo simples

Imagine um sistema de escola.

Sem modelagem:

* dados ficam bagunçados

Com modelagem:

* tabela de alunos
* tabela de professores
* tabela de turmas
* relacionamento entre elas

---

# ⚙️ Por que modelar?

## 📊 1. Organização

Evita dados duplicados ou confusos

## ⚡ 2. Performance

Consultas mais rápidas

## 🔒 3. Integridade

Garante que os dados façam sentido

## 🔁 4. Escalabilidade

Facilita crescer o sistema depois

---

# 🧩 Tipos de modelagem

## 🟢 1. Modelagem conceitual

* visão geral do sistema
* não tem detalhes técnicos
* foco no “o quê”

Ex:

* Aluno
* Curso
* Professor

---

## 🟡 2. Modelagem lógica

* define estrutura mais detalhada
* ainda independente do banco

Ex:

* Aluno(id, nome, idade)
* Curso(id, nome)

---

## 🔴 3. Modelagem física

* implementação real no banco
* tipos de dados e SQL

Ex:

```sql id="m1"
CREATE TABLE alunos (
  id INT,
  nome VARCHAR(100),
  idade INT
);
```

---

# 🔗 Conceito importante: relacionamento

A modelagem define como as tabelas se conectam:

## 📌 Tipos:

* 1 para 1
* 1 para muitos
* muitos para muitos

Ex:

* um aluno → várias notas
* uma turma → vários alunos

---

# 🧠 Ferramenta clássica

A modelagem geralmente é feita com:

## 🗂️ DER (Diagrama Entidade-Relacionamento)

Ele mostra:

* entidades (tabelas)
* atributos (campos)
* relações entre elas

---

# 📦 Exemplo prático

Sistema de e-commerce:

* Cliente
* Pedido
* Produto

Relacionamento:

* cliente faz pedidos
* pedido contém produtos

---

# 🧠 Analogia simples

Pense assim:

* 🏗️ Modelagem = planta de uma casa
* 🧱 Banco de dados = casa construída

Sem planta → casa bagunçada
Com planta → estrutura organizada

---

# 📌 Resumo

Modelagem de banco de dados é:

✔ o planejamento da estrutura dos dados
✔ definição de tabelas e relações
✔ base para criar bancos eficientes
✔ essencial antes de escrever SQL

---
