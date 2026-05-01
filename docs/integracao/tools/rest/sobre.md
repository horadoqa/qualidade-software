# Rest Assured 

Rest Assured é uma biblioteca usada principalmente em Java para **automatizar testes de APIs REST**.

Ela facilita escrever testes que enviam requisições HTTP e validam as respostas de forma simples e legível.

---

### 🔧 O que ela faz na prática?

Com o Rest Assured você consegue:

* Enviar requisições HTTP (GET, POST, PUT, DELETE)
* Validar status code (ex: 200, 404, 500)
* Conferir dados do JSON retornado
* Testar headers e autenticação
* Automatizar testes de APIs dentro de projetos Java

---

### 📌 Exemplo simples

Um teste básico poderia ser assim:

```java
given()
    .baseUri("https://api.exemplo.com")
.when()
    .get("/usuarios")
.then()
    .statusCode(200);
```

Esse teste verifica se o endpoint `/usuarios` está respondendo corretamente.

---

### 🧠 Por que ele é usado?

* Integra facilmente com JUnit e TestNG
* Sintaxe simples e fluida (parece linguagem natural)
* Muito usado em testes automatizados de backend
* Ideal para validação de APIs em pipelines de CI/CD

---

### ⚖️ Comparação rápida

* Postman / Insomnia → ferramentas manuais (interface visual)
* Rest Assured → testes automatizados via código

---

### 🚀 Resumo

Rest Assured é uma ferramenta para **testar APIs automaticamente com código Java**, muito usada em testes profissionais de backend.

---

