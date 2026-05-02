# Docker Compose

O **Docker Compose** é uma ferramenta que permite definir e rodar múltiplos contêineres Docker ao mesmo tempo, de forma simples.

Ele faz parte do ecossistema do Docker e resolve um problema comum: aplicações reais geralmente precisam de vários serviços (ex: API + banco de dados + cache).

---

### 🧠 Ideia principal

Em vez de rodar vários comandos `docker run`, você descreve tudo em um único arquivo chamado `docker-compose.yml`.

---

### 📦 Exemplo simples

```yaml
version: "3"
services:
  app:
    build: .
    ports:
      - "3000:3000"
  db:
    image: mysql
    environment:
      MYSQL_ROOT_PASSWORD: senha
```

Esse arquivo define:

* um serviço **app** (sua aplicação)
* um serviço **db** (banco de dados)

---

### ▶️ Como usar

Com esse arquivo, você roda tudo com um comando:

```bash
docker-compose up
```

Ou nas versões mais novas:

```bash
docker compose up
```

---

### ⚙️ O que ele facilita

* Subir vários contêineres juntos
* Configurar rede entre eles automaticamente
* Definir variáveis de ambiente
* Gerenciar dependências entre serviços

---

### 💡 Exemplo real

Um sistema completo pode ter:

* backend (Node, Java, etc.)
* frontend
* banco de dados (MySQL, PostgreSQL)
* Redis

Com Docker Compose, tudo sobe junto e já conectado.

---

### 🔄 Resumindo

* Docker → roda contêineres
* Dockerfile → define uma imagem
* Docker Compose → organiza vários contêineres

---


