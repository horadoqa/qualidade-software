# 🥒 Manual Completo de Instalação do Cucumber

## 📌 O que é o Cucumber?

O **Cucumber** é uma ferramenta de automação de testes baseada em BDD (*Behavior Driven Development*). Ele permite escrever cenários de teste em linguagem natural (Gherkin), facilitando a comunicação entre times técnicos e de negócio.

O Cucumber pode ser usado com várias linguagens, mas neste guia vamos focar na configuração com **JavaScript (Node.js)**, que é uma das formas mais comuns.

---

# ⚙️ Pré-requisitos

Antes de instalar o Cucumber, você precisa ter:

## 🔹 1. Node.js

* Versão recomendada: **Node 16 ou superior**

Verifique:

```bash id="y4k2p9"
node -v
```

👉 Download: [https://nodejs.org/](https://nodejs.org/)

---

## 🔹 2. npm ou yarn

```bash id="x8d3m1"
npm -v
```

---

## 🔹 3. Git (Opcional)

```bash id="c2v9n7"
git --version
```

---

# 💻 Instalação por Sistema Operacional

---

## 🪟 Windows

### Passo 1: Instalar Node.js

1. Acesse: [https://nodejs.org/](https://nodejs.org/)
2. Baixe a versão LTS
3. Execute o instalador (.msi)

---

### Passo 2: Verificar instalação

```bash id="f6h1k3"
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash id="m9p4z2"
mkdir meu-projeto-cucumber
cd meu-projeto-cucumber
npm init -y
```

---

### Passo 4: Instalar Cucumber

```bash id="q3w7e8"
npm install @cucumber/cucumber --save-dev
```

---

### Passo 5: Verificar instalação

```bash id="n5t8y1"
npx cucumber-js --version
```

---

## 🍎 macOS

### Passo 1: Instalar Node.js

#### Opção A: Site oficial

👉 [https://nodejs.org/](https://nodejs.org/)

#### Opção B: Homebrew

```bash id="v2c6x9"
brew install node
```

---

### Passo 2: Verificar instalação

```bash id="k1s3r7"
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash id="t4n8b6"
mkdir meu-projeto-cucumber
cd meu-projeto-cucumber
npm init -y
```

---

### Passo 4: Instalar Cucumber

```bash id="p7q2l5"
npm install @cucumber/cucumber --save-dev
```

---

### Passo 5: Verificar instalação

```bash id="z6x3c1"
npx cucumber-js --version
```

---

## 🐧 Linux (Ubuntu/Debian)

### Passo 1: Instalar Node.js

```bash id="g8f2d4"
sudo apt update
sudo apt install -y nodejs npm
```

---

### Passo 2: Verificar instalação

```bash id="h3k7m9"
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash id="j5v1p8"
mkdir meu-projeto-cucumber
cd meu-projeto-cucumber
npm init -y
```

---

### Passo 4: Instalar Cucumber

```bash id="l9w6r2"
npm install @cucumber/cucumber --save-dev
```

---

### Passo 5: Verificar instalação

```bash id="b4n2x7"
npx cucumber-js --version
```

---

# 📁 Estrutura Básica do Projeto

Após configuração inicial, você pode organizar assim:

```id="c7k9t2"
meu-projeto-cucumber/
  features/
    exemplo.feature
  step-definitions/
    steps.js
  package.json
```

---

# 🧾 Arquivos Importantes

### 🔹 Arquivos `.feature`

Onde você escreve cenários em Gherkin:

Exemplo:

```
Feature: Login

  Scenario: Login válido
    Given que estou na tela de login
    When informo usuário e senha válidos
    Then devo acessar o sistema
```

---

# 🚀 Executando Testes

```bash id="s8d1f6"
npx cucumber-js
```

---

# ⚠️ Problemas Comuns

### 🔸 Comando não encontrado

```bash id="r4m7p3"
npx cucumber-js
```

---

### 🔸 Versão do Node incompatível

* Atualize para Node 16+

---

### 🔸 Dependências quebradas

```bash id="x1z9q5"
npm install
```

---

# 🧪 Verificando instalação

```bash id="e6c3v8"
npx cucumber-js --help
```

---

# 📦 Desinstalação

```bash id="d2w5s9"
npm uninstall @cucumber/cucumber
```

---

# 🔄 Integrações Comuns

O Cucumber geralmente é usado junto com:

* Selenium
* Playwright
* Cypress

---

# 📚 Recursos Oficiais

* [https://cucumber.io/](https://cucumber.io/)
* [https://github.com/cucumber/cucumber-js](https://github.com/cucumber/cucumber-js)

---

# 🧾 Conclusão

Agora você tem o Cucumber instalado e pronto para uso em:

* Windows 🪟
* macOS 🍎
* Linux 🐧

Você já pode escrever testes em linguagem natural e aproximar ainda mais o time técnico do negócio 🚀

---

