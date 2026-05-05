# 🐘 Instalando PostgreSQL com Docker

### 1. Baixar a imagem

```bash
docker pull postgres
```

### 2. Rodar o container

```bash
docker run --name meu-postgres \
  -e POSTGRES_PASSWORD=senha123 \
  -e POSTGRES_USER=usuario \
  -e POSTGRES_DB=meubanco \
  -p 5432:5432 \
  -d postgres
```

👉 Isso cria um banco com:

* usuário: `usuario`
* senha: `senha123`
* banco: `meubanco`
* porta: `5432`

---

# 🔌 Como conectar

## Opção 1: via terminal (psql)

Se tiver o cliente instalado:

```bash
psql -h localhost -U usuario -d meubanco
```

---

## Opção 2: via Docker (sem instalar nada)

```bash
docker exec -it meu-postgres psql -U usuario -d meubanco
```

---

## Opção 3: usando interface gráfica

Você pode usar:

* DBeaver
* pgAdmin

Configuração:

* Host: `localhost`
* Porta: `5432`
* Usuário: `usuario`
* Senha: `senha123`
* Database: `meubanco`

---

# 🧪 Teste rápido

Depois de conectar:

```sql
SELECT version();
```

---

# ⚡ Alternativa com MySQL (se preferir)

```bash
docker run --name meu-mysql \
  -e MYSQL_ROOT_PASSWORD=senha123 \
  -e MYSQL_DATABASE=meubanco \
  -p 3306:3306 \
  -d mysql
```

Conectar:

```bash
mysql -h localhost -u root -p
```

---

# 💡 Dicas importantes

* Use `docker ps` para ver se o container está rodando
* Use `docker logs meu-postgres` para debug
* Para persistir dados, use volumes (`-v`)

---
