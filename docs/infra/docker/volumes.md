# 📦 O que são Volumes no Docker?

Um volume é uma **área de armazenamento gerenciada pelo Docker**, que pode ser conectada a um container.

Ele funciona como uma “pasta externa” ao container.

---

# 🧠 Explicação simples

Pense assim:

* 📦 Container = aplicativo temporário
* 💾 Volume = HD externo/pendrive onde ficam os dados

Mesmo que o container seja apagado, o volume continua existindo.

---

# ⚙️ Por que volumes existem?

Containers são efêmeros, ou seja:

* podem ser criados e destruídos rapidamente
* não são feitos para armazenar dados permanentes

Sem volumes:

> Se você apagar o container, perde tudo.

Com volumes:

> Os dados continuam salvos.

---

# 🧱 Exemplo prático

Imagine um banco de dados como o PostgreSQL rodando em container:

* sem volume → dados somem ao reiniciar
* com volume → dados ficam salvos

---

# 🚀 Como usar volumes

## 📌 1. Criar volume

```bash 
docker volume create meu-volume
```

---

## 📌 2. Usar volume em container

```bash 
docker run -d \
  -v meu-volume:/var/lib/data \
  nginx
```

---

# 🔍 Explicando o comando

* `-v` → conecta um volume ao container
* `meu-volume` → volume no Docker
* `/var/lib/data` → pasta dentro do container

---

# 🆚 Tipos de armazenamento no Docker

## 📦 1. Volumes (recomendado)

* gerenciado pelo Docker
* mais seguro e portátil

## 📁 2. Bind mounts

* usa pastas do seu computador
* mais direto, mas menos isolado

Exemplo:

```bash 
-v $(pwd):/app
```

---

# 🧠 Diferença importante

| Tipo       | Onde fica       | Uso ideal                 |
| ---------- | --------------- | ------------------------- |
| Volume     | Docker gerencia | produção e banco de dados |
| Bind mount | Seu PC          | desenvolvimento           |

---

# 📌 Por que volumes são importantes?

### 💾 1. Persistência de dados

Dados não somem quando o container para

### 🔁 2. Recriação de containers

Você pode recriar containers sem perder dados

### 📊 3. Bancos de dados

Essencial para sistemas como:

* PostgreSQL
* MySQL
* MongoDB

### 🧱 4. Separação de responsabilidades

App e dados ficam separados

---

# 📍 Resumo

Volumes no Docker são:

✔ Armazenamento persistente
✔ Fora do container
✔ Mantêm dados seguros mesmo após remoção
✔ Essenciais para aplicações reais

---
