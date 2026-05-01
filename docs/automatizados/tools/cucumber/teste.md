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

## 🥒 Cucumber (Gherkin + exemplo JS)

## Feature (Gherkin)

```gherkin
Feature: Cadastro e Login no Serverest

  Scenario: Usuário se cadastra e realiza login
    Given que acesso a tela de cadastro
    When preencho os dados de cadastro
    And submeto o formulário
    Then devo conseguir acessar o login

    When realizo login com credenciais válidas
    Then devo ser autenticado com sucesso
```

## Step Definitions (JavaScript - exemplo)

```js
const { Given, When, Then } = require('@cucumber/cucumber');
const { expect } = require('chai');

Given('que acesso a tela de cadastro', async function () {
  await this.page.goto('https://front.serverest.dev/cadastrarusuarios');
});

When('preencho os dados de cadastro', async function () {
  await this.page.fill('input[name="nome"]', 'Hora do QA');
  await this.page.fill('input[name="email"]', 'horadoqa@teste.com.br');
  await this.page.fill('input[name="password"]', '1q2w3e4r');
  await this.page.check('input[name="administrador"]');
});

When('submeto o formulário', async function () {
  await this.page.click('button[type="submit"]');
});

Then('devo conseguir acessar o login', async function () {
  await this.page.goto('https://front.serverest.dev/login');
});

When('realizo login com credenciais válidas', async function () {
  await this.page.fill('input[name="email"]', 'horadoqa@teste.com.br');
  await this.page.fill('input[name="password"]', '1q2w3e4r');
  await this.page.click('button[type="submit"]');
});

Then('devo ser autenticado com sucesso', async function () {
  const url = await this.page.url();
  expect(url).to.include('/home');
});
```