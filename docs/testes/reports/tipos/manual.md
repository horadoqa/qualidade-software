# 📋 Relatório de Testes Manuais – Aplicação Web

## 🧾 1. Informações gerais

* **Aplicação:** WebApp (Sistema de Cadastro de Usuários)
* **Tipo de teste:** Teste funcional manual
* **Ambiente:** Homologação
* **Data:** 04/05/2026
* **Responsável:** QA Analyst
* **Versão do sistema:** v1.3.0

---

## 🎯 2. Objetivo do teste

Validar manualmente as principais funcionalidades da aplicação web, garantindo que:

* Fluxos críticos funcionam corretamente
* Regras de negócio são respeitadas
* Interface responde conforme esperado
* Não existem erros impeditivos de uso

---

## 🧪 3. Escopo testado

Funcionalidades testadas:

* Cadastro de usuário
* Login e logout
* Recuperação de senha
* Atualização de perfil
* Listagem de usuários

Fora de escopo:

* Testes de performance
* Testes automatizados
* Integrações externas

---

## 📊 4. Resumo da execução

| Total de testes | Passaram | Falharam | Bloqueados | Não executados |
| --------------- | -------- | -------- | ---------- | -------------- |
| 25              | 21       | 3        | 1          | 0              |

---

## ✔️ 5. Casos de teste executados

### 🟢 Casos aprovados (exemplo)

| ID    | Caso de Teste                   | Resultado |
| ----- | ------------------------------- | --------- |
| TC-01 | Cadastro com dados válidos      | ✔ Passou  |
| TC-02 | Login com credenciais válidas   | ✔ Passou  |
| TC-03 | Logout do sistema               | ✔ Passou  |
| TC-04 | Recuperação de senha via e-mail | ✔ Passou  |

---

### ❌ Casos com falha

| ID    | Caso de Teste                  | Resultado | Observação                           |
| ----- | ------------------------------ | --------- | ------------------------------------ |
| TC-05 | Cadastro com e-mail duplicado  | ❌ Falhou  | Sistema não exibiu mensagem de erro  |
| TC-06 | Atualização de perfil sem foto | ❌ Falhou  | Erro 500 retornado                   |
| TC-07 | Alteração de senha             | ❌ Falhou  | Não validou senha atual corretamente |

---

### ⚠️ Caso bloqueado

| ID    | Caso de Teste       | Resultado   | Motivo                             |
| ----- | ------------------- | ----------- | ---------------------------------- |
| TC-08 | Exclusão de usuário | ⚠ Bloqueado | Permissão insuficiente no ambiente |

---

## 🐛 6. Defeitos encontrados

| ID Bug  | Severidade | Descrição                              | Status |
| ------- | ---------- | -------------------------------------- | ------ |
| BUG-101 | Alta       | Erro 500 ao atualizar perfil           | Aberto |
| BUG-102 | Média      | Falta de validação em e-mail duplicado | Aberto |
| BUG-103 | Alta       | Validação de senha incorreta no login  | Aberto |

---

## 🧠 7. Observações gerais

* Interface está funcional e intuitiva
* Fluxos principais funcionam corretamente
* Problemas encontrados estão concentrados em validações backend
* Nenhum bloqueio crítico para uso básico do sistema

---

## 📌 8. Conclusão

* ✔ 84% dos testes aprovados
* ❌ 12% com falha
* ⚠ 4% bloqueados

O sistema está **parcialmente estável**, porém não recomendado para produção até correção dos bugs críticos (BUG-101 e BUG-103).

---

## 🚀 9. Recomendações

* Corrigir falhas críticas de backend (status 500 e validações)
* Melhorar mensagens de erro para o usuário
* Reexecutar testes após correções
* Incluir testes automatizados para regressão futura

---

👉 versão em Excel:
👉 modelo de checklist de teste manual

