# Cypress com Docker

Executar testes do **Cypress** com **Docker** é bem comum para padronizar ambiente e facilitar CI/CD. 

Aqui vai um guia direto ao ponto.

---

## 🧱 1. Usando imagens oficiais do Cypress

A Cypress.io mantém imagens prontas no Docker Hub com tudo instalado (Node, browsers, etc.).

Exemplo básico rodando testes:

```bash
docker run -it -v $PWD:/e2e -w /e2e cypress/included:13.6.0
```

Isso:

* Monta seu projeto dentro do container
* Executa automaticamente `cypress run`

---
