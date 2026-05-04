# Como instalar e executar o pytest** em Python.

---

## 📦 1. Pré-requisitos

Você precisa ter:

* **Python instalado**
* **pip** (gerenciador de pacotes do Python)

Verifique no terminal:

```bash id="chk1"
python --version
pip --version
```

---

## ⚙️ 2. Instalar o pytest

No terminal, execute:

```bash id="inst1"
pip install pytest
```

Se estiver usando Python 3 em alguns sistemas:

```bash id="inst2"
pip3 install pytest
```

---

## 📁 3. Criar um projeto simples

Exemplo de estrutura:

```
meu-projeto/
 ├── soma.py
 └── test_soma.py
```

---

## 🧾 4. Criar o código

### 📌 soma.py

```python id="code1"
def soma(a, b):
    return a + b
```

---

### 📌 test_soma.py

```python id="code2"
from soma import soma

def test_soma():
    assert soma(2, 3) == 5
```

---

## ▶️ 5. Executar os testes

Dentro da pasta do projeto, rode:

```bash id="run1"
pytest
```

Ou:

```bash id="run2"
python -m pytest
```

---

## ✅ Resultado esperado

Se tudo estiver certo, você verá algo assim:

```
================= test session starts =================
collected 1 item

test_soma.py .                                      [100%]

================= 1 passed in 0.02s ==================
```

---

## 💡 Dicas úteis

### Rodar testes com mais detalhes:

```bash id="tip1"
pytest -v
```

### Rodar só um arquivo:

```bash id="tip2"
pytest test_soma.py
```

### Rodar só um teste específico:

```bash id="tip3"
pytest test_soma.py::test_soma
```

---

## 🧠 Resumo

> Para usar pytest você só precisa instalar com `pip install pytest` e rodar `pytest` na pasta do projeto.

---
