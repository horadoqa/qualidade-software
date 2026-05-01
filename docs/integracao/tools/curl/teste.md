# 📘 Documentação cURL – Serverest API

## 👤 1. Cadastro de usuário

Para adicionar um usuário com o cURL precisamos 

### ➕ Criar usuário

```bash
curl -X POST https://serverest.dev/usuarios \
-H "Content-Type: application/json" \
-d '{
  "nome": "João Teste",
  "email": "joao.teste@example.com",
  "password": "123456",
  "administrador": "true"
}'
```

---

## 🔐 2. Login

### 🔑 Obter token de autenticação

```bash
curl -X POST https://serverest.dev/login \
-H "Content-Type: application/json" \
-d '{
  "email": "joao.teste@example.com",
  "password": "123456"
}'
```

### 📌 Resposta esperada:

```json
{
  "message": "Login realizado com sucesso",
  "authorization": "Bearer token-aqui"
}
```

Guarde o token para usar nas rotas protegidas.

---

## 📦 3. Produtos

> ⚠️ Todas as rotas de produtos exigem autenticação:

```
-H "Authorization: Bearer SEU_TOKEN"
```

---

## ➕ 3.1 Adicionar produto

```bash
curl -X POST https://serverest.dev/produtos \
-H "Content-Type: application/json" \
-H "Authorization: Bearer SEU_TOKEN" \
-d '{
  "nome": "Notebook Dell",
  "preco": 3500,
  "descricao": "Notebook para testes",
  "quantidade": 10
}'
```

---

## 📄 3.2 Listar todos os produtos

```bash
curl -X GET https://serverest.dev/produtos
```

---

## 🔎 3.3 Buscar produto por ID

```bash
curl -X GET https://serverest.dev/produtos/ID_DO_PRODUTO
```

---

## ✏️ 3.4 Atualizar produto

```bash
curl -X PUT https://serverest.dev/produtos/ID_DO_PRODUTO \
-H "Content-Type: application/json" \
-H "Authorization: Bearer SEU_TOKEN" \
-d '{
  "nome": "Notebook Dell Atualizado",
  "preco": 4000,
  "descricao": "Atualizado via API",
  "quantidade": 8
}'
```

---

## ❌ 3.5 Deletar produto

```bash
curl -X DELETE https://serverest.dev/produtos/ID_DO_PRODUTO \
-H "Authorization: Bearer SEU_TOKEN"
```

---

# 🚀 Resumo do fluxo

1. Criar usuário (`/usuarios`)
2. Fazer login (`/login`)
3. Pegar token
4. Usar token para:

   * Criar produto
   * Consultar produtos
   * Atualizar produto
   * Deletar produto

---