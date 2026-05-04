# Pytest + Allure

---

# 🧪 1. Instalar dependências

No terminal:

```bash
pip install pytest allure-pytest
```

---

# 📁 2. Estrutura do projeto

Crie uma pasta assim:

```
projeto-teste/
│
├── test_login.py
└── conftest.py (opcional)
```

---

# 🧪 3. Criando um teste simples com Allure

## 📄 `test_login.py`

```python
import pytest
import allure

@allure.feature("Login")
@allure.story("Login válido")
def test_login_valido():
    with allure.step("Informar usuário e senha"):
        usuario = "admin"
        senha = "1234"

    with allure.step("Validar credenciais"):
        assert usuario == "admin"
        assert senha == "1234"


@allure.feature("Login")
@allure.story("Login inválido")
def test_login_invalido():
    with allure.step("Informar usuário e senha errados"):
        usuario = "admin"
        senha = "errado"

    with allure.step("Validar falha"):
        assert senha != "1234"
```

---

# ▶️ 4. Rodar os testes gerando resultados do Allure

```bash
pytest --alluredir=allure-results
```

Isso vai criar uma pasta:

```
allure-results/
```

---

# 📊 5. Gerar e abrir o relatório

## Opção 1 (mais simples)

```bash
allure serve allure-results
```

👉 Ele já abre o relatório no navegador automaticamente.

---

## Opção 2 (gerar arquivo fixo)

```bash
allure generate allure-results -o allure-report
allure open allure-report
```

---

# 📸 O que você vai ver no relatório

O Allure gera uma interface com:

* 📌 Features (ex: Login)
* 📌 Stories (ex: Login válido / inválido)
* ✔️ Testes que passaram
* ❌ Testes que falharam
* 🪜 Passo a passo (`with allure.step`)
* ⏱ Tempo de execução

---

# 💡 Melhorando o teste (nível mais profissional)

Você pode adicionar mais detalhes:

```python
@allure.severity(allure.severity_level.CRITICAL)
@allure.description("Testa login com usuário válido no sistema")
```

---

# 🚀 Resumo do fluxo

1. Escreve testes com Pytest
2. Adiciona marcações do Allure
3. Roda:

   ```bash
   pytest --alluredir=allure-results
   ```
4. Abre relatório:

   ```bash
   allure serve allure-results
   ```

---
