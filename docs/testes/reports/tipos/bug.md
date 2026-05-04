Aqui vai um **modelo profissional de report de bug (defect report)**, bem usado em QA:

---

# 🐛 Bug Report – Exemplo

## 🧾 Informações gerais

* **ID do bug:** BUG-001
* **Título:** Erro ao atualizar perfil do usuário
* **Projeto:** Aplicação Web
* **Ambiente:** Homologação
* **Data:** 04/05/2026
* **Reporter:** QA Tester

---

## 🎯 Descrição

Ao tentar atualizar o perfil do usuário, o sistema retorna erro e não salva as alterações feitas.

---

## 🔁 Passos para reproduzir

1. Fazer login na aplicação
2. Acessar “Meu Perfil”
3. Alterar qualquer informação (ex: nome ou foto)
4. Clicar em “Salvar”

---

## ❌ Resultado atual

* O sistema retorna erro **500 (Internal Server Error)**
* Alterações não são salvas

---

## ✔️ Resultado esperado

* Dados do perfil devem ser atualizados com sucesso
* Mensagem de confirmação deve ser exibida

---

## 🧪 Evidências

* Erro HTTP 500 no console
* Print da tela anexado (se houver ferramenta de gestão de testes)

---

## 📊 Severidade

* 🔴 Alta (impacta funcionalidade principal do sistema)

---

## ⚠️ Impacto

* Usuário não consegue atualizar informações pessoais
* Afeta diretamente a usabilidade da aplicação

---

## 🧠 Observações

* Possível problema no backend (API de update de perfil)
* Pode estar relacionado a validação ou banco de dados

---

## 📌 Status

* Aberto

---

## Como classificar severidade (baixa, média, alta, crítica) de forma profissional

A classificação de **severidade de bugs** é uma forma de medir o **impacto técnico e funcional de um defeito no sistema**. Ela não depende só do “quão irritante” o bug é, mas principalmente de **quanto ele afeta o sistema e o usuário**.

Aqui vai um modelo profissional usado em QA 👇

---

# 🐛 Classificação de Severidade de Bugs

## 🔵 Baixa (Low)

### 📌 O que é:

Problemas pequenos, sem impacto no funcionamento principal do sistema.

### 💡 Características:

* Erro visual (UI)
* Texto incorreto ou desalinhado
* Pequenas inconsistências
* Não impede o uso

### 🧪 Exemplo:

* Botão levemente desalinhado
* Cor de um ícone diferente do design

### 🎯 Impacto:

* Usuário consegue usar o sistema normalmente

---

## 🟡 Média (Medium)

### 📌 O que é:

Problemas que afetam parte da funcionalidade, mas ainda existe alternativa ou workaround.

### 💡 Características:

* Funcionalidade secundária com falha
* Erros que causam confusão, mas não bloqueiam o sistema
* Impacto limitado no fluxo

### 🧪 Exemplo:

* Filtro de busca não funciona corretamente
* Mensagem de erro pouco clara
* Ordenação incorreta de dados

### 🎯 Impacto:

* Usuário consegue continuar usando, mas com dificuldades

---

## 🟠 Alta (High)

### 📌 O que é:

Problemas que afetam funcionalidades importantes do sistema.

### 💡 Características:

* Quebra de fluxos principais
* Erros que impedem parte do uso
* Impacto direto na experiência do usuário

### 🧪 Exemplo:

* Falha no cadastro de usuário
* Erro ao atualizar perfil
* Login funciona intermitentemente

### 🎯 Impacto:

* Funcionalidade crítica comprometida, mas sistema ainda utilizável em partes

---

## 🔴 Crítica (Critical)

### 📌 O que é:

Falhas graves que impedem completamente o uso do sistema ou causam perda de dados.

### 💡 Características:

* Sistema fora do ar
* Perda de dados
* Falhas em fluxos essenciais (login, pagamento, etc.)
* Vulnerabilidade de segurança

### 🧪 Exemplo:

* Sistema não abre (erro 500 geral)
* Dados de usuários sendo apagados
* Falha no pagamento em sistema de e-commerce

### 🎯 Impacto:

* Sistema inutilizável ou risco alto para o negócio

---

# ⚖️ Resumo rápido

| Severidade | Impacto                                 |
| ---------- | --------------------------------------- |
| 🔵 Baixa   | Estético / sem impacto funcional        |
| 🟡 Média   | Impacta parcialmente, mas há workaround |
| 🟠 Alta    | Afeta funções importantes               |
| 🔴 Crítica | Sistema quebrado ou risco grave         |

---

# 💡 Importante (nível profissional)

Severidade ≠ Prioridade

* **Severidade:** impacto técnico/funcional
* **Prioridade:** urgência de correção para o negócio

👉 Um bug pode ser crítico, mas ter baixa prioridade (ex: em módulo pouco usado).

---
