# Update

Para atualizar esse registro no PostgreSQL você usa o comando `UPDATE`.

---

# ✏️ Atualizando o nome

```sql
UPDATE pessoa
SET nome = 'João Ricardo Santana Fahham'
WHERE nome = 'João Ricardo';
```

---

# ⚠️ Atenção importante

Esse `WHERE nome = 'João Ricardo'` só funciona bem se:

* o nome for único na tabela

Se existir mais de um “João Ricardo”, você pode atualizar registros errados.

---

# 🧠 Forma mais segura (recomendada)

Se sua tabela tiver `id`, use ele:

```sql
UPDATE pessoa
SET nome = 'João Ricardo Santana Fahham'
WHERE id = 1;
```

---

# 🔍 Como encontrar o ID primeiro

```sql
SELECT * FROM pessoa
WHERE nome = 'João Ricardo';
```

---

# 📌 Dica profissional

Sempre prefira:

* `id` (chave primária)
* evitar atualizar por campos que podem repetir (como nome)

---

# 🚀 Exemplo completo seguro

```sql
-- 1. localizar
SELECT id, nome FROM pessoa WHERE nome = 'João Ricardo';

-- 2. atualizar
UPDATE pessoa
SET nome = 'João Ricardo Santana Fahham'
WHERE id = 10;
```

---
