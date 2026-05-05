# 📖 Ler todos os dados da tabela

```sql
SELECT * FROM pessoa;
```

👉 Isso retorna **todas as colunas e todas as linhas** da tabela `pessoa`.

---

# 🔎 Ler colunas específicas

Se quiser só alguns dados:

```sql
SELECT nome, data_nascimento FROM pessoa;
```

---

# 🎯 Filtrar dados (condições)

### Exemplo: pessoas brasileiras

```sql
SELECT * FROM pessoa
WHERE nacionalidade = 'Brasileira';
```

---

### Exemplo: pessoas maiores de idade

```sql
SELECT * FROM pessoa
WHERE data_nascimento <= '2008-01-01';
```

---

# 📊 Ordenar resultados

```sql
SELECT * FROM pessoa
ORDER BY nome ASC;
```

* `ASC` → crescente (A-Z)
* `DESC` → decrescente (Z-A)

---

# 🔢 Limitar resultados

```sql
SELECT * FROM pessoa
LIMIT 5;
```

👉 Mostra só 5 registros

---

# 🧠 Consulta mais “profissional”

```sql
SELECT nome, sexo, nacionalidade
FROM pessoa
WHERE estado_civil = 'Solteiro'
ORDER BY nome;
```

---

# 💡 Dica importante

* `SELECT *` → tudo (bom para testes)
* `SELECT colunas` → melhor para produção (mais rápido e limpo)

---
