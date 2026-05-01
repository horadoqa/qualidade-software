# CI/CD

CI/CD é uma prática de desenvolvimento que automatiza a integração, testes e entrega de software. O termo vem de duas ideias principais:

* **CI (Integração Contínua)**: desenvolvedores enviam código com frequência para um repositório compartilhado, e a cada mudança o sistema automaticamente compila e testa tudo.
* **CD (Entrega ou Deploy Contínuo)**: depois que o código passa nos testes, ele pode ser automaticamente preparado para produção ou até publicado.

Ferramentas comuns incluem Jenkins, GitHub Actions, GitLab CI e CircleCI.

---

## Como isso ajuda nos testes automatizados (API e E2E)

### 1. Execução automática a cada mudança

Sempre que alguém faz um commit:

* Testes de API (ex: validar endpoints, status codes, contratos)
* Testes E2E (simulando o fluxo real do usuário)

São executados automaticamente. Isso evita que bugs avancem sem serem detectados.

Ferramentas comuns:

* API: Postman, RestAssured
* E2E: Cypress, Playwright

---

### 2. Feedback rápido

Se um teste quebra:

* O pipeline falha imediatamente
* O time é avisado

Isso reduz muito o tempo entre “criar bug” e “descobrir bug”.

---

### 3. Padronização do ambiente

No CI/CD você roda os testes sempre no mesmo ambiente:

* Mesmas dependências
* Mesma configuração

Isso evita o clássico problema: *“na minha máquina funciona”*

---

### 4. Gate de qualidade

Você pode configurar regras como:

* Não fazer deploy se testes falharem
* Exigir cobertura mínima
* Rodar testes E2E antes de produção

---

### 5. Testes em múltiplos ambientes

Você pode rodar:

* Testes de API em ambiente de staging
* Testes E2E contra uma versão próxima da produção

---

### 6. Paralelismo e velocidade

Ferramentas como Cypress e Playwright permitem rodar testes em paralelo no CI, reduzindo bastante o tempo total.

---

## Exemplo simples de fluxo

1. Dev faz commit
2. CI roda:

   * build
   * testes de API
   * testes E2E
3. Se tudo passar:

   * deploy automático (ou aprovação manual)
4. Se falhar:

   * pipeline para

---

## Resumindo

CI/CD ajuda porque:

* Automatiza execução de testes
* Detecta erros cedo
* Garante consistência
* Bloqueia código com problema
* Acelera entrega com segurança

---


Estrutura:

.gitrub/workflows/


```yaml

```
