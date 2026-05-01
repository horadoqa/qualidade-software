# Testes Unitários

Testes unitários são um tipo de teste de software que verificam pequenas partes do código de forma isolada — normalmente funções, métodos ou classes individuais.

A ideia principal é garantir que cada “unidade” do sistema funcione corretamente sozinha, antes de integrar com o resto.

### 🔧 Exemplo simples

Imagine uma função que soma dois números com python:

```python
def soma(a, b):
    return a + b
```

Um teste unitário para isso poderia ser:

```python
def test_soma():
    assert soma(2, 3) == 5
```

Esse teste verifica se a função retorna o resultado esperado.

---

### 📌 Características dos testes unitários

* Testam partes pequenas do código
* São rápidos de executar
* Não dependem de banco de dados, APIs ou outros sistemas externos
* Ajudam a encontrar erros cedo

---

### 🎯 Por que usar?

* Evitam bugs
* Facilitam manutenção do código
* Permitem refatorar com segurança
* Servem como documentação do comportamento esperado

---