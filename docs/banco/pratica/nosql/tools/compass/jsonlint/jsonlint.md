# JSONLint

JSONLint é uma ferramenta usada para **validar, formatar e encontrar erros em arquivos JSON**.

---

# 🧠 Em palavras simples

Ele serve para verificar se um JSON está:

* correto ✔️
* bem formatado ✔️
* sem erros de sintaxe ❌

---

# 📦 Exemplo de uso

Você cola um JSON como este:

```json
{
  "nome": "Carlos",
  "idade": 30,
  "email": "carlos@email.com"
}
```

E o JSONLint diz:

* ✅ válido
* ou ❌ erro (e mostra onde está)

---

# 🚨 Exemplo de erro

```json
{
  nome: "Carlos"
  idade: 30
}
```

Problemas:

* faltou aspas em `nome`
* faltou vírgula

---

# 🔧 O que ele faz

* valida JSON
* organiza indentação
* mostra erros linha por linha
* ajuda no debug de APIs e bancos como MongoDB

---

# 🌐 Onde usar

Você pode usar diretamente no navegador:

[JSONLint](https://jsonlint.com?utm_source=chatgpt.com)

---

# 📊 Quando usar

Use JSONLint quando:

* estiver trabalhando com APIs
* estiver usando MongoDB
* estiver recebendo erro em JSON
* quiser formatar dados rapidamente

---

# 🧠 Relação com MongoDB

No MongoDB, tudo é JSON (na prática BSON), então:

* documentos inválidos → erro na inserção
* JSONLint ajuda a evitar isso

---

# 🚀 Resumo

* JSONLint = verificador de JSON
* encontra erros rapidamente
* ajuda muito em APIs e MongoDB

---
