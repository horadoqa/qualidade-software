# 📚 Documentação de *Qualidade de Software com MkDocs

Este projeto utiliza o **MkDocs** para centralizar a documentação de ferramentas e práticas de **Qualidade de Software**, facilitando a organização, leitura e manutenção do conhecimento técnico do time.

---

## 🚀 O que é MkDocs?

O MkDocs é um gerador de sites de documentação estáticos baseado em arquivos Markdown.

### 📌 Principais características:

* Escrita simples usando Markdown
* Geração de site estático rápido e leve
* Fácil hospedagem (GitHub Pages, Netlify, etc.)
* Estrutura organizada por navegação (sidebar)
* Suporte a temas modernos (ex: Material for MkDocs)

---

## 📁 Sobre este projeto

Este repositório reúne conteúdos relacionados a ***Qualidade de Software**, incluindo:

## Testes Manuais

* Funcional
* Exploratório
* Usabilidade
* Regressão

## Testes Automatizados

### 🧪 Ferramentas abordadas

* 🎭 Playwright - Framework moderno de automação end-to-end com suporte a múltiplos navegadores.
* 🧪 Cypress - Ferramenta focada em testes E2E com execução direta no navegador.
* 🤖 Robot Framework - Framework baseado em palavras-chave, ideal para testes de aceitação.
* 🧭 Selenium - Ferramenta tradicional e flexível para automação de navegadores.
* 🥒 Cucumber - Framework BDD que utiliza linguagem natural (Gherkin) para descrever testes.
* Boas práticas de automação
* Exemplos de testes
* Plano de testes
* Estratégias de arquitetura (ex: Page Object Model)

## Testes de Performance

* k6

---

## 📖 Estrutura da documentação (MkDocs)

Exemplo de organização do projeto:

```
docs/
 ├── index.md
 ├── automatizados
 ├── manual
 ├── projeto
 └── performance
```

---

## ⚙️ Como rodar o MkDocs localmente

### 1. Instalar dependências

```bash
pip install mkdocs
```

### 2. Iniciar o servidor local

```bash
mkdocs serve
```

### 3. Acessar no navegador

```
http://127.0.0.1:8000
```

---

## 🚀 Build para produção

Gerar versão estática do site:

```bash
mkdocs build
```

---

## 🌐 Publicação

O projeto está publicado no:

* GitHub Pages

---

## 🎯 Objetivo do projeto

* Centralizar conhecimento de QA
* Padronizar práticas de automação
* Facilitar onboarding de novos testers
* Criar base de referência para ferramentas de testes
* Melhorar colaboração entre times

---

## 🧠 Benefícios

✔ Documentação viva
✔ Fácil manutenção
✔ Versionamento junto com o código
✔ Acesso rápido ao conhecimento
✔ Padronização de práticas de QA

---

## 📌 Observação

Este projeto pode ser expandido com:

* Guias de CI/CD (GitHub Actions, Jenkins)
* Integração com Allure Reports
* Boas práticas de arquitetura de testes
* Templates de automação prontos para uso

---

Aqui está uma versão melhorada e mais profissional da sua seção:

---

## 🤝 Contribuição

Contribuições são bem-vindas! Elas ajudam a melhorar este projeto e a mantê-lo mais completo e atualizado.

---

### 🚀 Como contribuir

Você pode contribuir de diferentes formas:

* 🐛 Reportar bugs
* 💡 Sugerir melhorias
* 🧪 Adicionar novos testes ou exemplos
* 📚 Melhorar a documentação
* 🔧 Corrigir erros ou inconsistências

---

### 🧭 Passos para contribuir

1. Faça um **fork** do repositório
2. Crie uma branch para sua alteração:

   ```bash
   git checkout -b minha-melhoria
   ```
3. Realize suas alterações
4. Faça o commit:

   ```bash
   git commit -m "melhoria: descrição da alteração"
   ```
5. Envie para o repositório remoto:

   ```bash
   git push origin minha-melhoria
   ```
6. Abra um **Pull Request**

---

### 📌 Boas práticas

* Mantenha commits claros e objetivos
* Siga o padrão do projeto
* Teste suas alterações antes de enviar

---


