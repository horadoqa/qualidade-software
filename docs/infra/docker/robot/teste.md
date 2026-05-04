# 🧪 Exemplo de teste simples

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}  https://serverest.dev/

*** Test Cases ***
Abrir homepage
    Open Browser    ${BASE_URL}    chrome
    Page Should Contain    ServeRest
    Close Browser
```