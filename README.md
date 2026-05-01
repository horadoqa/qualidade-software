# 📚 Qualidade de Software (QA)

Este repositório reúne conhecimentos, práticas e ferramentas relacionadas à **Qualidade de Software (Quality Assurance - QA)**, com foco em testes manuais e automatizados.

---

## 🧪 Pirâmide de Testes

A Pirâmide de Testes é um modelo que orienta a distribuição ideal dos tipos de testes em um projeto, visando eficiência e qualidade.

### 📊 Estrutura:

* **🧩 Testes Unitários** (base da pirâmide)
* **🔗 Testes de Integração** (camada intermediária)
* **🌐 Testes End-to-End (E2E)** (topo da pirâmide)

### 🎯 Objetivo

Garantir maior cobertura com testes rápidos e baratos na base, reduzindo dependência de testes lentos e mais complexos no topo.

---

## 🤖 Testes Automatizados

Testes automatizados garantem qualidade contínua, reduzem regressões e aceleram o ciclo de entrega.

### 🧪 Ferramentas utilizadas

* 🎭 **Playwright** – Framework moderno para testes E2E com suporte a múltiplos navegadores, alta performance e recursos avançados de automação.
* 🧪 **Cypress** – Ferramenta focada em testes E2E com execução direta no navegador e excelente experiência de debug.
* 🤖 **Robot Framework** – Framework baseado em palavras-chave, ideal para testes de aceitação e BDD.
* 🧭 **Selenium** – Uma das ferramentas mais consolidadas para automação de navegadores, com grande flexibilidade.
* 🥒 **Cucumber** – Framework BDD que utiliza linguagem Gherkin para escrita de testes em linguagem natural.

---

## 🔗 Testes de Integração

Testes que validam a comunicação entre diferentes módulos, APIs e serviços do sistema.

### 🎯 Objetivo

Garantir que os componentes funcionem corretamente quando integrados.

### ✔ Cobrem:

* Integração entre APIs
* Comunicação com bancos de dados
* Integração com serviços externos

### 🧪 Ferramentas utilizadas

* 🔌 **cURL** – Ferramenta de linha de comando para requisições HTTP.
* 📬 **Postman** – Plataforma para testes, documentação e automação de APIs.
* 🧪 **Insomnia** – Cliente REST moderno para testes e depuração de APIs.
* ☕ **Rest Assured** – Biblioteca Java para automação de testes de APIs REST.

---

## 🧪 Testes Unitários

Testes que validam a menor unidade de código (funções, métodos ou classes), de forma isolada.

### 🎯 Características

* Rápidos
* Isolados
* Repetíveis
* Fáceis de manter
* Fundamentais para qualidade do código

### 🧪 Ferramentas utilizadas

* 🟨 **Jest** – Framework de testes para JavaScript com foco em simplicidade e performance.
* 🧪 **Mocha** – Framework flexível para testes em JavaScript.
* 🟣 **Jasmine** – Framework BDD para testes em JavaScript, sem necessidade de dependências externas.
* 🐍 **Pytest** – Framework poderoso e simples para testes em Python.

---

## 🖱️ Testes Manuais

Testes executados por pessoas, sem automação, com o objetivo de validar comportamento e experiência do sistema.

### 📌 Tipos de testes

* ⚙️ **Funcional** – Valida se as funcionalidades atendem aos requisitos.
* 🔍 **Exploratório** – Exploração livre do sistema para identificar falhas não documentadas.
* 🎨 **Usabilidade** – Avalia experiência do usuário e facilidade de uso.
* 🔁 **Regressão** – Garante que novas alterações não quebrem funcionalidades existentes.

---

## ⚡ Testes de Performance

Testes que avaliam o comportamento do sistema sob **carga, estresse e alto volume de usuários**, com o objetivo de verificar desempenho, estabilidade e escalabilidade da aplicação.

### 📌 Tipos:

* ⚖️ **Teste de Carga (Load Testing)** – Avalia o desempenho do sistema sob uma carga esperada de usuários simultâneos, verificando tempos de resposta e estabilidade.

* 🔥 **Teste de Estresse (Stress Testing)** – Leva o sistema além dos limites normais de operação para identificar o ponto de quebra e como ele se comporta sob condições extremas.

* 📈 **Teste de Pico (Spike Testing)** – Analisa o comportamento do sistema diante de aumentos repentinos e significativos de tráfego.

* 🧱 **Teste de Volume (Volume Testing)** – Verifica como o sistema lida com grandes volumes de dados no banco ou processamento intensivo.

* ⏱️ **Teste de Endurance (Soak Testing)** – Avalia a estabilidade do sistema durante longos períodos de uso contínuo, identificando vazamentos de memória ou degradação de performance.

---

### 🎯 Objetivo

Garantir estabilidade, escalabilidade e desempenho da aplicação.

### 🛠️ Ferramentas utilizadas

* 🚀 **k6** – Ferramenta moderna para testes de performance e carga, baseada em JavaScript. Permite criar cenários de teste de forma programática, com alta performance e fácil integração com pipelines de CI/CD.

* 📊 **JMeter** – Ferramenta consolidada para testes de performance e carga, com interface gráfica e suporte a diversos protocolos (HTTP, FTP, JDBC, entre outros). É amplamente utilizada para simulação de usuários e análise de desempenho de sistemas.

* 📬 **Postman** – Plataforma completa para desenvolvimento, teste e documentação de APIs. Permite criar requisições HTTP, automatizar testes, organizar collections e simular ambientes de forma simples e visual.

* 🦗 **Locust** – Ferramenta de testes de performance e carga baseada em Python. Permite simular milhares de usuários simultâneos usando código simples, com foco em escalabilidade e facilidade de customização de cenários.

---

# 🎯 Objetivo do Projeto

* Centralizar conhecimento de QA
* Padronizar práticas de automação
* Facilitar o onboarding de novos testers
* Criar uma base de referência para ferramentas de testes
* Melhorar a colaboração entre times

---

# 🧠 Benefícios

* ✔ Documentação viva e atualizável
* ✔ Versionamento junto ao código
* ✔ Acesso rápido ao conhecimento
* ✔ Padronização das práticas de QA
* ✔ Melhor comunicação entre áreas

---

# 🤝 Contribuição

Contribuições são muito bem-vindas! Elas ajudam a manter este projeto atualizado, útil e evoluindo continuamente.

---

## 🚀 Como contribuir

Você pode contribuir de várias formas:

* 🐛 Reportando bugs
* 💡 Sugerindo melhorias
* 🧪 Adicionando exemplos de testes
* 📚 Melhorando a documentação
* 🔧 Corrigindo erros ou inconsistências

---

## 🧭 Passo a passo

1. Faça um **fork** do repositório
2. Crie uma branch para sua alteração:

```bash
git checkout -b minha-melhoria
```

3. Realize suas alterações
4. Faça o commit:

```bash
git commit -m "feat: descrição da melhoria"
```

5. Envie para o repositório remoto:

```bash
git push origin minha-melhoria
```

6. Abra um **Pull Request**

---

## 📌 Boas práticas

* Mantenha commits claros e objetivos
* Siga o padrão do projeto
* Teste suas alterações antes de enviar
* Evite mudanças fora do escopo da branch

---





# 🎯 Qualidade de Software?

**Qualidade de Software** é o grau em que um sistema atende aos requisitos definidos e às expectativas dos usuários, funcionando de forma **correta, confiável, eficiente e consistente** dentro do contexto em que foi desenvolvido.

Em outras palavras, não é apenas “o sistema não ter bugs”, mas sim entregar uma experiência estável e adequada ao que foi proposto.

Um software de qualidade geralmente apresenta:

* ✔ **Funcionalidade:** faz o que foi especificado
* ✔ **Confiabilidade:** funciona sem falhas frequentes
* ✔ **Usabilidade:** é fácil de usar e entender
* ✔ **Performance:** responde em tempo adequado
* ✔ **Segurança:** protege dados e acessos
* ✔ **Manutenibilidade:** fácil de corrigir e evoluir
* ✔ **Compatibilidade:** funciona em diferentes ambientes

---

# 🧪 Qual o papel do QA nisso?

A área de **QA (Quality Assurance)** atua para garantir a qualidade ao longo do processo, não apenas no final.

Isso inclui:

* Planejamento de testes
* Automação de testes
* Identificação de falhas
* Validação de requisitos
* Prevenção de problemas antes da produção

---

# 🔍 Qualidade não é só teste

Um ponto importante:

> Qualidade de software não é responsabilidade só do QA — é responsabilidade de todo o time.

Inclui:

* Desenvolvedores
* Product Owners
* Designers
* DevOps
* QA

---

# 📌 Exemplo prático

Um sistema pode:

* Funcionar sem erros ❌ mas ser lento e difícil de usar → baixa qualidade
* Ter alguns bugs ❌ mas ser rápido e atender bem o usuário → qualidade aceitável (dependendo do contexto)

---

# 🧠 Resumo

👉 Qualidade de software é garantir que o sistema **resolve o problema do usuário com eficiência, estabilidade e segurança**, dentro do que foi proposto.

---

