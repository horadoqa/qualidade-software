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

## 🤖 Robot Framework

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://front.serverest.dev/

*** Test Cases ***
Cadastro E Login Serverest

    Open Browser    ${URL}    chrome
    Maximize Browser Window

    # Cadastro
    Go To    ${URL}cadastrarusuarios

    Input Text    name=nome    Hora do QA
    Input Text    name=email   horadoqa@teste.com.br
    Input Text    name=password    1q2w3e4r
    Select Checkbox    name=administrador

    Click Button    xpath=//button[@type='submit']

    # Login
    Go To    ${URL}login

    Input Text    name=email    horadoqa@teste.com.br
    Input Text    name=password    1q2w3e4r

    Click Button    xpath=//button[@type='submit']

    Close Browser
```