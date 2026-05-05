# 🔐 Criando tabela com UUID

O uso de **UUID** é importante porque ele resolve vários problemas comuns de identificadores tradicionais (como números sequenciais) em bancos de dados, especialmente no PostgreSQL e em sistemas distribuídos.

---

## 🧠 O que o UUID resolve?

UUID é um identificador **globalmente único**, algo como:

```
550e8400-e29b-41d4-a716-446655440000
```

Ele foi criado para garantir que **nenhum registro colida com outro**, mesmo em máquinas diferentes.

---

## 🚀 Principais vantagens

### 1. 🌍 Unicidade global

Você pode gerar IDs:

* no servidor
* no cliente
* em múltiplos bancos

👉 Sem risco de duplicação.

---

### 2. 🔌 Ideal para sistemas distribuídos

Se você tem:

* microserviços
* múltiplos servidores
* sincronização offline

UUID evita conflitos sem precisar de um “contador central”.

---

### 3. 🔒 Mais seguro que ID sequencial

Comparação:

| Tipo   | Exemplo     | Problema     |
| ------ | ----------- | ------------ |
| SERIAL | 1, 2, 3     | previsível   |
| UUID   | 550e8400... | imprevisível |

👉 Com UUID, ninguém consegue “adivinhar” registros (mais seguro em APIs).

---

### 4. 📦 Funciona antes de salvar no banco

Você pode gerar o ID:

* no frontend
* no backend
* ou offline

Sem depender do banco.

---

### 5. 🔄 Facilita integração entre sistemas

Se dois sistemas diferentes criam dados, UUID evita colisão sem coordenação.

---

## ⚠️ Desvantagens

### ❌ Mais pesado

* ocupa mais espaço (16 bytes vs inteiro)
* índices podem ser mais lentos

### ❌ Menos legível

* difícil de ler ou debugar

---

## 🆚 UUID vs ID tradicional

| Critério       | SERIAL        | UUID              |
| -------------- | ------------- | ----------------- |
| Performance    | 🟢 melhor     | 🟡 um pouco menor |
| Segurança      | 🔴 previsível | 🟢 seguro         |
| Escalabilidade | 🔴 limitada   | 🟢 excelente      |
| Legibilidade   | 🟢 fácil      | 🔴 difícil        |

---

## 💡 Quando usar UUID?

Use UUID quando:

* sistema distribuído
* API pública
* microserviços
* apps móveis/offline
* segurança é importante

---

## ❗ Quando NÃO usar?

Evite UUID quando:

* sistema pequeno
* performance extrema em queries simples
* banco local sem escala

---

## 🧠 Resumo simples

👉 UUID serve para garantir que **cada registro seja único no mundo inteiro, sem depender do banco ou de sequência numérica**.

---

```sql
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE pessoa (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo VARCHAR(10),
    estado_civil VARCHAR(20),
    naturalidade VARCHAR(100),
    nacionalidade VARCHAR(100)
);
```

👉 Aqui o `id` vira algo assim:

```
550e8400-e29b-41d4-a716-446655440000
```

---

# ⚡ 2. Hash manual (SHA-256)

Você também pode gerar um hash com funções como:

```sql
SELECT encode(digest('João Ricardo', 'sha256'), 'hex');
```

Isso gera algo como:

```
9b74c9897bac770ffc029102a200c5de...
```

👉 Isso usa a extensão `pgcrypto`.

---

# 🧱 Criando tabela com hash como código

```sql
CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE pessoa (
    id SERIAL PRIMARY KEY,
    codigo TEXT UNIQUE DEFAULT encode(digest(gen_random_uuid()::text, 'sha256'), 'hex'),
    nome VARCHAR(150) NOT NULL
);
```

---

# 🧠 Diferença importante

| Tipo             | Uso                         |
| ---------------- | --------------------------- |
| `SERIAL`         | simples, numérico           |
| `UUID`           | padrão moderno, distribuído |
| `HASH (SHA-256)` | segurança / anonimização    |

---

# 💡 Qual usar na prática?

👉 Recomendado hoje:

* ✔ `UUID` (mais simples e eficiente)
* ✔ `SERIAL + código separado`

👉 Hash puro:

* usado em segurança, tokens, URLs, validações

---

# 🚀 Exemplo no Python (UUID)

```python
import uuid

codigo = str(uuid.uuid4())
print(codigo)
```

---
