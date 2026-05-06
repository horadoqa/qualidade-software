# 🐳 Criando um Banco de Dacos com Docker usando o Docker compose

Este formato é o mais organizado. Todas as instruções ficam em um só arquivo, ao invés de serem executados comandos separados.

Crie um arquivo chamado `docker-compose.yml`:

```yaml
services:
  postgres:
    image: postgres:15
    container_name: postgres-db
    restart: always
    environment:
      POSTGRES_USER: horadoqa
      POSTGRES_PASSWORD: 1q2w3e4r
      POSTGRES_DB: horadoqa-postgresql
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

---

# ▶️ Como subir tudo

No terminal, na pasta do arquivo:

```bash
docker-compose up -d
```

ou (versão nova do Docker):

```bash
docker compose up -d
```

---


## Como parar:

```bash
docker compose down
```

Ver logs:

```bash
docker compose logs -f
```

Resetar tudo (CUIDADO ⚠️):

```bash
docker compose down -v
```

---
