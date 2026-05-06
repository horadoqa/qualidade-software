# Utilizando o Robot Framework para cadastrar dados no Banco

## ✅ Instalar corretamente a biblioteca

Use este comando:

```bash
pip install robotframework
pip install robotframework-databaselibrary
```

Se estiver usando Python 3 explicitamente:

```bash
python3 -m pip install robotframework-databaselibrary
```

---

## 2. Verificar se instalou mesmo

```bash
pip show robotframework-databaselibrary

Name: robotframework-databaselibrary
Version: 2.4.1
Summary: Database Library for Robot Framework
Home-page: https://github.com/MarketSquare/Robotframework-Database-Library
Author: 
Author-email: Franz Allan Valencia See <franz.see@gmail.com>
License: Apache License 2.0
Location: /home/rfahham/.local/lib/python3.10/site-packages
Requires: robotframework, robotframework-assertion-engine, sqlparse
Required-by:
```

Se aparecer informações do pacote → OK.

---

## 3. Problema MUITO comum (WSL / múltiplos Python)

Se você usa WSL ou múltiplas versões de Python:

Veja qual Python está rodando:

```bash
which python
which pip
```

E compare com:

```bash
python --version
pip --version
```

👉 Se forem diferentes, a instalação foi feita no Python errado.

---

## 4. Solução definitiva (recomendado)

Use sempre isso:

```bash
python -m pip install robotframework-databaselibrary
```

---

# ⚠️ Se ainda falhar

Pode ser que:

* você esteja usando **venv (ambiente virtual)** e não ativou ele

Ative assim:

### Linux / WSL:

```bash
source venv/bin/activate
```

### Windows:

```bash
venv\Scripts\activate
```

---

# 🧪 Teste final

Depois rode:

```bash
robot --version
```

E depois execute seu teste novamente.

---

# 💡 Resumo simples

✔ Erro não é no código
✔ É instalação/ambiente Python
✔ Resolve com:

```bash
python -m pip install robotframework-databaselibrary
```

---
