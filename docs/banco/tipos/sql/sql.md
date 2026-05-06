# Banco de dados SQL

Um **banco de dados SQL** é um tipo de sistema usado para **armazenar, organizar e consultar dados** de forma estruturada, usando a linguagem **SQL (Structured Query Language)**.

### O que isso significa na prática?

Em vez de guardar informações de qualquer jeito, um banco SQL organiza os dados em **tabelas**, parecidas com planilhas:

* **Linhas** → representam registros (ex: um usuário)
* **Colunas** → representam características (ex: nome, idade, email)

Exemplo de tabela “Usuários”:

| id | nome   | idade | email                                       |
| -- | ------ | ----- | ------------------------------------------- |
| 1  | Ana    | 25    | [ana@email.com](mailto:ana@email.com)       |
| 2  | Carlos | 30    | [carlos@email.com](mailto:carlos@email.com) |

### Para que serve o SQL?

SQL é a linguagem usada para:

* Criar tabelas
* Inserir dados
* Buscar informações
* Atualizar registros
* Apagar dados

Exemplo de comando SQL:

```sql
SELECT * FROM usuarios;
```

Isso significa: “traga todos os usuários da tabela”.

### Exemplos de bancos SQL populares

Alguns dos sistemas mais usados são:

* MySQL
* PostgreSQL
* SQLite

### Ideia principal

Um banco de dados SQL é ideal quando você precisa de:

* organização clara dos dados
* relações entre informações (ex: usuários e pedidos)
* confiabilidade e consistência
