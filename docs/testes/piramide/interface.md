# Testes de interface

**Testes de interface** (ou *UI tests / testes de interface de usuário*) são testes que verificam se a **interface de um sistema está funcionando corretamente do ponto de vista do usuário**.

Eles focam na camada visual e de interação — ou seja, aquilo que o usuário realmente vê e usa.

---

## 🖥️ O que é testado em testes de interface?

Eles validam coisas como:

* Botões funcionando corretamente (clicar, enviar, abrir)
* Campos de formulário aceitando e validando dados
* Navegação entre telas
* Exibição correta de mensagens e elementos visuais
* Comportamento da interface após ações do usuário

👉 Exemplo simples:
Verificar se, ao clicar no botão “Login”, o usuário é redirecionado corretamente para a página inicial.

---

## 🧪 Exemplo prático

Em um site de e-commerce:

* O usuário adiciona um produto ao carrinho
* O carrinho atualiza corretamente na tela
* O valor total é exibido corretamente
* O botão “Finalizar compra” funciona

Tudo isso pode ser validado com testes de interface.

---

## 🎯 Importância dos testes de interface

### ✔️ Garantem a experiência do usuário

Mesmo que o backend funcione, a interface pode quebrar — e o usuário só vê a interface.

---

### ✔️ Detectam problemas visuais e de usabilidade

Exemplo:

* Botões que não respondem
* Campos que não validam corretamente
* Layout quebrado após alterações

---

### ✔️ Evitam erros em produção

Muitas falhas críticas aparecem apenas na interação real com a interface.

---

### ✔️ Validam fluxos completos de uso

Eles simulam o comportamento real do usuário navegando no sistema.

---

## ⚠️ Desvantagens (importante saber)

* São **mais lentos**
* Mais **frágeis** (mudanças no layout podem quebrar testes)
* Mais **caros de manter**

Por isso, geralmente existem em menor quantidade dentro da pirâmide de testes.

---

## ⚖️ Comparação rápida

* **Unitários:** lógica interna
* **Integração:** comunicação entre sistemas
* **Interface (UI):** experiência do usuário na tela

---

## 🧠 Resumo

Testes de interface garantem que **o sistema funciona corretamente para o usuário final**, validando cliques, telas, formulários e fluxos completos de navegação.

---
