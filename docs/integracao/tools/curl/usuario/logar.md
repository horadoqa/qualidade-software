# 🔐  Login do usuário

Uma vez que tenhamos feito o cadastro do usuário, poderemos realizar o `LOGIN`.

## 🔑 Realizando o Login do Usuário

```bash
curl -X POST https://serverest.dev/login \
-H "Content-Type: application/json" \
-d '{
  "email": "horadoqa@example.com",
  "password": "1q2w3e4r"
}'
```

### 📌 Resposta esperada:

```json
{
  "message": "Login realizado com sucesso",
  "authorization": "Bearer token-aqui"
}
```

Esse comando usa o cURL para **enviar uma requisição HTTP do tipo POST** para a API do Serverest, com o objetivo de **realizar login e obter autenticação**.

---

## 🔍 Descrição do comando

```bash
curl -X POST https://serverest.dev/login
```

* `curl` → ferramenta que executa requisições HTTP
* `-X POST` → define o método como **POST**
* URL `/login` → endpoint responsável por **autenticar usuários**

---

```bash
-H "Content-Type: application/json"
```

* Adiciona um **header (cabeçalho)** na requisição
* Informa que o corpo da requisição está no formato **JSON**

---

```bash
-d '{
  "email": "horadoqa@example.com",
  "password": "1q2w3e4r"
}'
```

* `-d` → envia os **dados da requisição**
* O JSON contém as credenciais:

  * `email` → e-mail do usuário cadastrado
  * `password` → senha do usuário

---

## 📌 O que esse comando faz?

Ele **tenta autenticar o usuário na API Serverest**.
Se o login for bem-sucedido, a API retorna uma resposta contendo normalmente:

* Mensagem de sucesso
* Um **token de autenticação (Bearer Token)**

---

## 🚀 Resumo simples

Esse comando:
👉 Envia email e senha
👉 Faz login na API
👉 Retorna um token para acessar rotas protegidas

---

> [!NOTE]
> Guarde o token para usar nas rotas protegidas, como o cadastro de produtos.
