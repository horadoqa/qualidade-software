# ➕ Inserindo dados

### Exemplo básico:

```sql id="r9w4ha"
INSERT INTO pessoa (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
VALUES ('Maria Souza', '1985-03-22', 'Feminino', 'Casado', 'São Paulo', 'Brasileira');
```

---

# 🧪 Inserindo vários registros de uma vez

```sql id="6yv3d2"
INSERT INTO pessoa (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
VALUES 
('João Silva', '1990-05-10', 'Masculino', 'Solteiro', 'Rio de Janeiro', 'Brasileira'),
('Ana Costa', '1995-08-15', 'Feminino', 'Solteiro', 'Belo Horizonte', 'Brasileira'),
('Carlos Lima', '1980-01-30', 'Masculino', 'Divorciado', 'Curitiba', 'Brasileira');
```

---

# 🔍 Ver os dados inseridos

```sql id="d91l9x"
SELECT * FROM pessoa;
```

---

# ⚠️ Erros comuns

* **Formato da data** → sempre `'YYYY-MM-DD'`
* **Valores inválidos** → se você usou `CHECK`, precisa respeitar (ex: `'Casado'`, `'Solteiro'`)
* **Aspas** → texto sempre entre `' '`

---

# 💡 Dica útil

Se quiser inserir sem escrever todas as colunas:

```sql id="d4ywhr"
INSERT INTO pessoa 
VALUES (DEFAULT, 'Lucas Rocha', '2000-12-01', 'Masculino', 'Solteiro', 'Salvador', 'Brasileira');
```

👉 `DEFAULT` deixa o banco gerar o `id` automaticamente.

---
