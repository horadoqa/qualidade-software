# Testes de Integração

**Testes de integração** são um tipo de teste de software que verifica se **diferentes partes do sistema funcionam corretamente quando trabalham juntas**.

Em vez de testar cada função isoladamente (como nos testes unitários), eles testam a **comunicação entre componentes**.

---

## 🔧 O que exatamente é testado?

Eles validam interações como:

* Código ↔ banco de dados
* Backend ↔ serviços externos (APIs)
* Módulos diferentes dentro do sistema
* Microserviços se comunicando entre si

👉 Exemplo simples:
Um sistema de login não apenas verifica a função de autenticação, mas se ela realmente consegue:

1. Consultar o usuário no banco
2. Validar a senha
3. Retornar um token corretamente

---

## 🧪 Exemplo prático

Imagine um app de e-commerce:

* Módulo de pedidos cria uma compra
* Módulo de estoque reduz a quantidade
* Módulo de pagamento confirma a transação

Um teste de integração verificaria se **todo esse fluxo funciona corretamente junto**, e não só cada parte separada.

---

## 🎯 Importância dos testes de integração

### ✔️ Detectam problemas de comunicação

Muitos bugs só aparecem quando sistemas se conectam (ex: erro de API, banco, formatos de dados).

---

### ✔️ Garantem que o sistema funciona como um todo

Mesmo que cada módulo funcione sozinho, eles podem falhar juntos — esses testes evitam isso.

---

### ✔️ Reduzem riscos em produção

Problemas de integração são comuns em sistemas reais; testá-los antes evita falhas para o usuário.

---

### ✔️ Aumentam confiança no deploy

Se os testes passam, há maior segurança de que o sistema completo está funcionando.

---

## ⚖️ Diferença rápida

* **Unitário:** testa uma peça isolada
* **Integração:** testa peças trabalhando juntas
* **E2E:** testa o sistema inteiro como usuário final

---

## 🧠 Resumo

Testes de integração são essenciais porque garantem que **os módulos do sistema “conversam corretamente” entre si**, evitando falhas que não aparecem em testes isolados.

---
