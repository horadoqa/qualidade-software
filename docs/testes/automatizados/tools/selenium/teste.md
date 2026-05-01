# 📌 Exemplos de Testes Automatizados

Este repositório contém exemplos de automação de testes utilizando diferentes ferramentas, executando o fluxo de **cadastro e login** na aplicação:

🔗 [https://front.serverest.dev/](https://front.serverest.dev/)

## 🧪 Cenário testado

### Cadastro

* Nome: Hora do QA
* Email: [horadoqa@teste.com.br](mailto:horadoqa@teste.com.br)
* Senha: 1q2w3e4r
* Admin: True

### Login

* Email: [horadoqa@teste.com.br](mailto:horadoqa@teste.com.br)
* Senha: 1q2w3e4r

---

## 🧭 Selenium (Python)

```python
from selenium import webdriver
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()

# Cadastro
driver.get("https://front.serverest.dev/cadastrarusuarios")

driver.find_element(By.NAME, "nome").send_keys("Hora do QA")
driver.find_element(By.NAME, "email").send_keys("horadoqa@teste.com.br")
driver.find_element(By.NAME, "password").send_keys("1q2w3e4r")
driver.find_element(By.NAME, "administrador").click()

driver.find_element(By.XPATH, "//button[@type='submit']").click()

# Login
driver.get("https://front.serverest.dev/login")

driver.find_element(By.NAME, "email").send_keys("horadoqa@teste.com.br")
driver.find_element(By.NAME, "password").send_keys("1q2w3e4r")

driver.find_element(By.XPATH, "//button[@type='submit']").click()

time.sleep(3)

driver.quit()
```