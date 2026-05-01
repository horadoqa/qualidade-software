# 📌 Exemplos de Testes Automatizados

Este repositório contém exemplos de automação de testes utilizando diferentes ferramentas, executando o fluxo de **cadastro e login** na aplicação:

🔗 [https://front.serverest.dev/](https://front.serverest.dev/)

## 🧪 Cenário testado

### Cadastro

* Nome: Hora do QA
* Email: [horadoqa@teste.com.br](mailto:horadoqa@teste.com.br)
* Senha: 1q2w3e4r
* Admin: True

### Login

* Email: [horadoqa@teste.com.br](mailto:horadoqa@teste.com.br)
* Senha: 1q2w3e4r

---

## 🧪 Cypress

```js
describe('Cadastro e Login - Serverest', () => {

  it('Deve cadastrar e logar usuário', () => {

    // Cadastro
    cy.visit('https://front.serverest.dev/cadastrarusuarios');

    cy.get('input[name="nome"]').type('Hora do QA');
    cy.get('input[name="email"]').type('horadoqa@teste.com.br');
    cy.get('input[name="password"]').type('1q2w3e4r');
    cy.get('input[name="administrador"]').check();

    cy.get('button[type="submit"]').click();

    // Login
    cy.visit('https://front.serverest.dev/login');

    cy.get('input[name="email"]').type('horadoqa@teste.com.br');
    cy.get('input[name="password"]').type('1q2w3e4r');

    cy.get('button[type="submit"]').click();

    cy.url().should('include', '/home');
  });

});
```