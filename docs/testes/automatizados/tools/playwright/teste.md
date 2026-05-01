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

## 🎭 Playwright

```ts
import { test, expect } from '@playwright/test';

test('Cadastro e Login - Serverest', async ({ page }) => {

  // Cadastro
  await page.goto('https://front.serverest.dev/cadastrarusuarios');

  await page.fill('input[name="nome"]', 'Hora do QA');
  await page.fill('input[name="email"]', 'horadoqa@teste.com.br');
  await page.fill('input[name="password"]', '1q2w3e4r');
  await page.check('input[name="administrador"]');

  await page.click('button[type="submit"]');

  // Login
  await page.goto('https://front.serverest.dev/login');

  await page.fill('input[name="email"]', 'horadoqa@teste.com.br');
  await page.fill('input[name="password"]', '1q2w3e4r');

  await page.click('button[type="submit"]');

  await expect(page).toHaveURL(/home/);
});
```