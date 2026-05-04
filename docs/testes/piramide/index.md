# Pirâmide de Testes

A **pirâmide de testes** é um modelo que orienta como distribuir diferentes tipos de testes em um sistema de software, priorizando **quantidade, custo e velocidade** dos testes.

Ela é chamada de “pirâmide” porque tem uma base larga (muitos testes rápidos e baratos) e um topo estreito (poucos testes lentos e caros).

## 🧱 Estrutura da pirâmide de testes

### 1. Base: Testes unitários

* Testam partes pequenas do código (funções, métodos, classes).
* São **rápidos, baratos e fáceis de automatizar**.
* Devem ser a maioria dos testes.

👉 Exemplo: testar se uma função de cálculo retorna o valor correto.

---

### 2. Meio: Testes de integração

* Testam a interação entre módulos ou serviços.
* São mais lentos e mais complexos que os unitários.
* Garantem que partes do sistema funcionam juntas.

👉 Exemplo: verificar se o backend consegue salvar dados corretamente no banco.

---

### 3. Topo: Testes end-to-end (E2E)

* Simulam o comportamento real do usuário.
* Testam o sistema completo (interface + backend + banco).
* São **mais lentos, frágeis e caros de manter**.

👉 Exemplo: abrir um site, fazer login e concluir uma compra.

---

## 🎯 Importância da pirâmide de testes

### ✔️ Mais eficiência

Você detecta erros cedo com testes unitários, que são mais rápidos e baratos.

### ✔️ Menor custo de manutenção

Testes E2E são caros e instáveis; a pirâmide evita excesso deles.

### ✔️ Feedback rápido

Testes unitários rodam em segundos, ajudando desenvolvedores a corrigirem erros rapidamente.

### ✔️ Maior confiabilidade

Combina diferentes níveis de testes para aumentar a qualidade geral do sistema.

### ✔️ Escalabilidade do projeto

Facilita o crescimento do sistema sem perder controle da qualidade.

---

## ⚖️ Resumo simples

* **Muitos testes unitários**
* **Alguns testes de integração**
* **Poucos testes E2E**

---
