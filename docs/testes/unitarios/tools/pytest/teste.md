# 📁 Criar um projeto simples

Exemplo de estrutura:

```
meu-projeto/
 ├── soma.py
 └── test_soma.py
```

---

## 🧾 Criar o código

### 📌 soma.py

```python 
def soma(a, b):
    return a + b
```

---

### 📌 test_soma.py

```python 
from soma import soma

def test_soma():
    assert soma(2, 3) == 5
```

---
