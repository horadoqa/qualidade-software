## 👤Cadastro de usuário

Para adicionar um usuário com o cURL precisamos:

### ➕ Criar usuário

```bash
curl -X POST https://serverest.dev/usuarios \
-H "Content-Type: application/json" \
-d '{
  "nome": "Hora do QA",
  "email": "horadoqa@example.com",
  "password": "1q2w3e4r",
  "administrador": "true"
}'
```

Esse comando usa o cURL para **enviar uma requisição HTTP do tipo POST** para a API do Serverest, criando um novo usuário.

---

## 🔍 Descrição detalhada do comando

```bash
curl -X POST https://serverest.dev/usuarios
```

* `curl` → ferramenta que faz a requisição HTTP
* `-X POST` → define o método HTTP como **POST** (usado para criar dados)
* URL → endpoint da API para **criar usuários**

---

```bash
-H "Content-Type: application/json"
```

* `-H` → adiciona um **header (cabeçalho)** na requisição
* `Content-Type: application/json` → indica que os dados enviados estão no formato **JSON**

---

```bash
-d '{
  "nome": "Hora do QA",
  "email": "horadoqa@example.com",
  "password": "1q2w3e4r",
  "administrador": "true"
}'
```

* `-d` → envia o **corpo da requisição (data)**
* O conteúdo é um **JSON com os dados do usuário**

  * `nome` → nome do usuário
  * `email` → e-mail de login
  * `password` → senha do usuário
  * `administrador` → define se o usuário é administrador (`true` ou `false`)

---

## 📌 O que esse comando faz no sistema?

Ele **cria um novo usuário na API Serverest**, enviando os dados informados.
Se tudo estiver correto, a API responde confirmando a criação do usuário.

---

## Resposta esperada:

{
    "message": "Cadastro realizado com sucesso",
    "_id": "KxqSTCX6s1JkkbNy"
}

## 🚀 Resumo simples

Esse comando usa cURL para:
👉 Enviar dados em JSON
👉 Criar um usuário na API
👉 Utilizar método HTTP POST com cabeçalhos apropriados

---
