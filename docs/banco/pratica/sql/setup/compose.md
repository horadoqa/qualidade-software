# Docker compose

O **Docker Compose** é uma ferramenta que faz parte do ecossistema do Docker e serve para **definir e gerenciar aplicações com múltiplos containers** de forma simples.

Em vez de rodar vários comandos separados para iniciar cada container, você descreve tudo em um único arquivo (geralmente chamado `docker-compose.yml`) e o Compose cuida de subir tudo junto.

### 💡 Como funciona na prática

Você cria um arquivo YAML onde define:

* serviços (ex: backend, frontend, banco de dados)
* imagens Docker
* portas
* volumes
* redes

Exemplo simples:

```yaml
version: "3.9"
services:
  web:
    image: nginx
    ports:
      - "8080:80"

  db:
    image: postgres
    environment:
      POSTGRES_PASSWORD: exemplo
```

Com isso, basta rodar:

```bash
docker-compose up
```

E o Compose vai:

* baixar as imagens necessárias
* criar os containers
* conectar tudo automaticamente

---

### 🧠 Por que usar Docker Compose?

Ele resolve vários problemas comuns:

* Evita comandos longos e repetitivos
* Facilita subir ambientes completos (ex: app + banco + cache)
* Mantém tudo versionado (configuração como código)
* Ajuda muito em desenvolvimento e testes

---

### 📦 Exemplo típico

Uma aplicação pode ter:

* API (Node.js, Python, etc.)
* Banco de dados (PostgreSQL)
* Redis
* Nginx

Sem Compose → vários comandos manuais
Com Compose → um único `docker-compose up`

---

### 🚀 Resumindo

O Docker Compose é como um **orquestrador simples de containers**, ideal para desenvolvimento local e ambientes menores. Ele não substitui ferramentas mais robustas como o Kubernetes, mas é muito mais fácil de usar.

---
