# 🗑️ Apagar um registro

### Exemplo básico:

```sql
DELETE FROM pessoa
WHERE nome = 'João Ricardo Santana Fahham';
```

---

# ⚠️ Muito importante

Sem o `WHERE`, você apaga **toda a tabela**:

```sql
DELETE FROM pessoa;  -- ⚠️ apaga tudo
```

---

# 🧠 Forma mais segura (recomendada)

Se sua tabela tiver `id`, use ele:

```sql
DELETE FROM pessoa
WHERE id = 1;
```

---

# 🔍 Antes de apagar (boa prática)

Sempre confira antes:

```sql
SELECT * FROM pessoa
WHERE nome = 'João Ricardo Santana Fahham';
```

---

# 💡 Dica profissional

Em sistemas reais, muitas vezes não se apaga de verdade — usa-se:

* `status = 'inativo'`
* ou `deleted_at` (soft delete)

Exemplo:

```sql
UPDATE pessoa
SET ativo = false
WHERE id = 1;
```

---
