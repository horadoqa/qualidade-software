# 🔌 Como conectar o DBeaver ao seu banco

## 1. Abrir o DBeaver

* Clique em **“Nova Conexão”**

## 2. Escolher o banco

* Selecione **PostgreSQL**

---

## 3. Preencher os dados

Use exatamente isso (baseado no seu Docker Compose):

* **Host:** `localhost` ✅ `ou host.docker.internal (em alguns casos com Docker)``
* **Porta:** `5432`
* **Database:** `horadoqa-postgresql`
* **Usuário:** `horadoqa`
* **Senha:** `1q2w3e4r`

---

### 4. Testar conexão

* Clique em **“Test Connection”**
* Se pedir driver, deixe ele baixar automaticamente

---

# ⚠️ Erros comuns (e como resolver)

### ❌ “Connection refused”

* Verifique se o container está rodando:

```bash
docker ps
```

---

### ❌ Porta diferente

Se você mudou no docker-compose:

```yaml
ports:
  - "5433:5432"
```

Então use:

* Porta: `5433`

---

### ❌ Firewall / conflito

* Outra aplicação pode estar usando a porta 5432

---

# 🧪 Teste rápido no DBeaver

Depois de conectar, rode:

```sql
SELECT version();

PostgreSQL 15.17 (Debian 15.17-1.pgdg13+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 14.2.0-19) 14.2.0, 64-bit
```

---

