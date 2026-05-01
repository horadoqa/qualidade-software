# 🧱 O que é Page Object Model?

O **Page Object Model (POM)** é um padrão de design muito usado em automação de testes de interface (UI) para **organizar e manter melhor o código dos testes**.

Em vez de escrever interações com a página diretamente dentro dos testes, você cria uma **classe (ou objeto) para cada página da aplicação**, onde ficam centralizados os seletores e ações daquela página.

É uma abordagem onde:

* Cada página da aplicação vira um “objeto”
* Os elementos da página (botões, inputs, links) ficam encapsulados
* As ações (clicar, preencher, navegar) ficam dentro dessa camada

---

# 🧪 Exemplo simples (sem POM)

```js
cy.get('input[name="email"]').type('teste@teste.com')
cy.get('input[name="password"]').type('123456')
cy.get('button[type="submit"]').click()
```

👉 Problema: esse código fica repetido em vários testes.

---

# 🧱 Exemplo com Page Object Model

## 📄 login.page.js

```js
class LoginPage {

  visitar() {
    cy.visit('https://front.serverest.dev/login')
  }

  preencherEmail(email) {
    cy.get('input[name="email"]').type(email)
  }

  preencherSenha(senha) {
    cy.get('input[name="password"]').type(senha)
  }

  clicarEntrar() {
    cy.get('button[type="submit"]').click()
  }

}

export default new LoginPage()
```

---

## 🧪 teste usando POM

```js
import LoginPage from '../pages/login.page'

describe('Login', () => {

  it('deve logar com sucesso', () => {

    LoginPage.visitar()
    LoginPage.preencherEmail('teste@teste.com')
    LoginPage.preencherSenha('123456')
    LoginPage.clicarEntrar()

    cy.url().should('include', '/home')
  })

})
```

---

# 🎯 Vantagens do Page Object Model

✔ Reutilização de código
✔ Menos duplicação nos testes
✔ Mais fácil de manter
✔ Facilita mudanças na interface
✔ Código mais limpo e organizado

---

# ⚠️ Quando usar

POM é recomendado quando:

* O projeto tem vários testes de UI
* A aplicação muda com frequência
* Existe necessidade de escalabilidade
* O time quer padronização

---

# 🧠 Resumo simples

> Page Object Model é uma forma de organizar testes automatizados separando **o que o teste faz** do **como a página funciona**.

---
