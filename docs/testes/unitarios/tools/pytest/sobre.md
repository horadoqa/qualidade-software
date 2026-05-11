# Pytest

O **pytest** é um **framework de testes para Python**. Ele serve para você escrever e executar testes de forma simples, verificando se seu código está funcionando corretamente.

---

## 🧪 O que é o pytest?

Em poucas palavras:

> O pytest é uma ferramenta que automatiza testes em Python, principalmente testes unitários e de integração.

Ele ajuda a garantir que funções, classes e sistemas inteiros funcionem como esperado.

---

## ⚙️ Por que o pytest é tão usado?

Ele é popular porque é:

* ✔️ Simples de escrever (menos código que outras ferramentas)
* ✔️ Poderoso (suporta testes complexos)
* ✔️ Flexível (plugins, fixtures, parametrização)
* ✔️ Muito usado no mercado Python

---

## 💡 Exemplo básico

### Código:

```python 
def soma(a, b):
    return a + b
```

### Teste com pytest:

```python 
def test_soma():
    assert soma(2, 3) == 5
```

---

## ▶️ Como rodar os testes

No terminal, basta executar:

```bash 
pytest
```

Ele automaticamente procura arquivos de teste como:

* `test_*.py`
* `*_test.py`

---

## 📦 Instalação do pytest

Se não estiver instalado:

```bash 
pip install pytest
```

---

## 🧠 Como ele funciona?

O pytest:

1. Procura arquivos de teste
2. Executa funções que começam com `test_`
3. Usa `assert` para verificar resultados
4. Mostra um relatório no terminal

---

## 🆚 pytest vs Jest (curiosidade)

* Jest → JavaScript
* pytest → Python
  Ambos fazem a mesma ideia: **testes automatizados**

---

## 🚀 Resumo

> pytest é a ferramenta mais popular do Python para escrever e rodar testes de forma simples e eficiente.

---