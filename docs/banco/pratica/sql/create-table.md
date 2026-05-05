# 🧱 Criando a tabela

```sql
CREATE TABLE pessoa (
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

# 🧠 Explicando rapidamente

* `id SERIAL PRIMARY KEY` → identificador único automático
* `nome` → texto obrigatório
* `data_nascimento` → tipo específico para datas
* `sexo`, `estado_civil` → texto (pode melhorar depois)
* `naturalidade` → cidade de nascimento
* `nacionalidade` → país

---

# 💡 Versão mais organizada (melhor prática)

Se quiser algo mais controlado, você pode limitar valores:

```sql
CREATE TABLE pessoa (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo VARCHAR(10) CHECK (sexo IN ('Masculino', 'Feminino', 'Outro')),
    estado_civil VARCHAR(20) CHECK (estado_civil IN ('Solteiro', 'Casado', 'Divorciado', 'Viúvo')),
    naturalidade VARCHAR(100),
    nacionalidade VARCHAR(100)
);
```

---

# 🧪 Inserindo um exemplo

```sql
INSERT INTO pessoa (nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade)
VALUES ('João Silva', '1990-05-10', 'Masculino', 'Solteiro', 'Rio de Janeiro', 'Brasileira');
```

---

# 🔍 Consultando

```sql
SELECT * FROM pessoa;
```

---

# ⚡ Dica (nível profissional)

Se quiser evoluir depois:

* Criar tabela separada para `estado_civil`
* Usar `ENUM` em vez de `VARCHAR`
* Normalizar `naturalidade` (cidade) e `nacionalidade` (país)

---

