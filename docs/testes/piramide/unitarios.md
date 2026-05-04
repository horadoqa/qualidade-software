# Testes unitários

**Testes unitários** são testes de software que verificam se a **menor parte de um sistema (uma “unidade”) funciona corretamente de forma isolada**.

Essa unidade geralmente é uma:

* função
* método
* classe
* ou componente pequeno de lógica

A ideia é testar **uma coisa por vez, sem depender do resto do sistema** (banco de dados, APIs externas, interface etc., geralmente são “simulados” com mocks).

---

## 🧪 Exemplo simples

Imagine uma função que soma dois números:

```python
def somar(a, b):
    return a + b
```

Um teste unitário verificaria algo como:

* `somar(2, 3)` deve retornar `5`
* `somar(-1, 1)` deve retornar `0`

Sem precisar de banco de dados, interface ou internet.

---

## 🎯 Importância dos testes unitários

### ✔️ Detectam erros cedo

Eles ajudam a encontrar bugs logo no início do desenvolvimento, antes de o sistema crescer.

---

### ✔️ Facilitam mudanças no código

Se você alterar uma função, os testes mostram rapidamente se algo quebrou.

---

### ✔️ Melhoram a qualidade do código

Código testável geralmente é mais organizado, modular e fácil de entender.

---

### ✔️ Reduzem custos de manutenção

Corrigir erros cedo é muito mais barato do que corrigir em produção.

---

### ✔️ Servem como documentação viva

Os testes mostram como o código deve se comportar na prática.

---

## ⚖️ Comparação rápida na pirâmide de testes

* **Unitários:** testam partes pequenas isoladas (mais rápidos e numerosos)
* **Integração:** testam comunicação entre partes
* **Interface (UI):** testam o sistema pelo ponto de vista do usuário

---

## 🧠 Resumo

Testes unitários são a base da qualidade do software porque garantem que **cada parte do código funciona corretamente sozinha**, permitindo detectar erros cedo e manter o sistema mais confiável e fácil de evoluir.

---
