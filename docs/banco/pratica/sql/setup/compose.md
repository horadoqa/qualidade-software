# 🐳 PostgreSQL

Crie um arquivo chamado `docker-compose.yml`:

```yaml
services:
  postgres:
    image: postgres:15
    container_name: meu-postgres
    restart: always
    environment:
      POSTGRES_USER: usuario
      POSTGRES_PASSWORD: senha123
      POSTGRES_DB: meubanco
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

  pgadmin:
    image: dpage/pgadmin4
    container_name: meu-pgadmin
    restart: always
    environment:
      PGADMIN_DEFAULT_EMAIL: horadoqa@gmail.com
      PGADMIN_DEFAULT_PASSWORD: 1q2w3e4r
    ports:
      - "8080:80"
    depends_on:
      - postgres

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

# 🌐 Acessar o pgAdmin

Abra no navegador:

```
http://localhost:8080
```

Login:

* Email: `horadoqa@gmail.com`
* Senha: `1q2w3e4r`

---

# 🔌 Conectar o banco no pgAdmin

Dentro do pgAdmin:

1. Clique em **"Add New Server"**

2. Aba **General**

   * Name: `Postgres Docker`

3. Aba **Connection**

   * Host: `postgres`  ⚠️ (não é localhost!)
   * Port: `5432`
   * Username: `usuario`
   * Password: `senha123`

---

# 🧠 Por que usar `postgres` como host?

Porque os containers se comunicam pelo nome do serviço dentro da rede do Docker.

---

# 🧪 Testar conexão

Abra o Query Tool e rode:

```sql
SELECT current_database();
```

---

# 💾 Persistência de dados

O volume `postgres_data` garante que:

* Mesmo se o container parar ou for removido
* Seus dados continuam salvos

---

# ⚡ Dicas úteis

Parar:

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