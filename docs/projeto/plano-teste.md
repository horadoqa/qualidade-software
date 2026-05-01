# 📋 Plano de Teste — Cadastro e Login (Serverest)

Este plano de teste descreve o cenário de **cadastro e login de usuário** no sistema [https://front.serverest.dev/](https://front.serverest.dev/), podendo ser utilizado como base para automação em qualquer ferramenta (Playwright, Cypress, Selenium, Robot Framework e Cucumber).

---

## 1. 📌 Objetivo

Validar o fluxo completo de **criação de usuário e autenticação**, garantindo que:

* Um novo usuário possa ser cadastrado com sucesso
* O login funcione corretamente com as credenciais cadastradas
* O sistema direcione o usuário autenticado para a área logada

---

## 2. 🧪 Escopo

### Incluído no escopo:

* Cadastro de usuário
* Login de usuário
* Validação de autenticação bem-sucedida

### Fora do escopo:

* Recuperação de senha
* Exclusão de usuário
* Testes de API
* Validações de performance e segurança

---

## 3. 🌐 Ambiente

* URL: [https://front.serverest.dev/](https://front.serverest.dev/)
* Navegador: Chrome (prioritário), Edge e Firefox (opcional)
* Ambiente: Produção (site público de testes)

---

## 4. 👤 Massa de Dados

### Cadastro:

* **Nome:** Hora do QA
* **Email:** [horadoqa@teste.com.br](mailto:horadoqa@teste.com.br)
* **Senha:** 1q2w3e4r
* **Administrador:** Sim (True)

### Login:

* **Email:** [horadoqa@teste.com.br](mailto:horadoqa@teste.com.br)
* **Senha:** 1q2w3e4r

---

## 5. 🧭 Fluxo do Teste

### 5.1 Cadastro de Usuário

1. Acessar a tela de cadastro
2. Preencher campo Nome
3. Preencher campo Email
4. Preencher campo Senha
5. Marcar opção Administrador como verdadeiro
6. Submeter formulário
7. Validar sucesso do cadastro (mensagem ou redirecionamento)

---

### 5.2 Login de Usuário

1. Acessar tela de login
2. Informar email cadastrado
3. Informar senha cadastrada
4. Submeter formulário
5. Validar login com sucesso

---

## 6. ✅ Critérios de Aceite

O teste será considerado aprovado se:

* O usuário for cadastrado sem erros
* O login for realizado com sucesso
* O sistema redirecionar para área autenticada (/home ou equivalente)
* Não ocorrer erro de autenticação com credenciais válidas

---

## 7. ❌ Critérios de Falha

O teste será considerado reprovado se:

* O cadastro não for concluído
* O usuário já existente impedir execução do fluxo (sem tratamento)
* O login falhar com credenciais válidas
* O sistema não redirecionar corretamente após login
* Erros de interface ou validação bloquearem o fluxo

---

## 8. 🔁 Pré-condições

* Sistema acessível via navegador
* Usuário ainda não cadastrado (ou base resetada)
* Conexão com internet ativa
* Ambiente sem bloqueios de CAPTCHA ou autenticação adicional

---

## 9. 📊 Pós-condições

* Usuário cadastrado no sistema
* Usuário autenticado (sessão ativa)
* Possível logout para reutilização do cenário

---

## 10. 🤖 Automação (Compatibilidade)

Este plano pode ser automatizado com qualquer uma das ferramentas abaixo:

* Playwright
* Cypress
* Selenium
* Robot Framework
* Cucumber

---

## 11. 🧠 Observações

* O sistema pode não permitir múltiplos cadastros com o mesmo e-mail
* Em execução automatizada, recomenda-se uso de massa dinâmica para evitar conflitos
* Ideal aplicar Page Object Model para manutenção dos testes

---

