# 🧪 Manual Completo de Instalação do Cypress

## 📌 O que é o Cypress?

O **Cypress** é uma ferramenta moderna de testes end-to-end (E2E) para aplicações web. Ele permite validar interfaces e fluxos completos de forma rápida e confiável, com execução direta no navegador.

---

# ⚙️ Pré-requisitos

Antes de instalar o Cypress, você precisa ter:

## 🔹 1. Node.js

O Cypress roda sobre o ambiente do Node.js.

* Versão recomendada: **Node 16 ou superior**
* Verifique se já está instalado:

```bash
node -v
```

Se não estiver instalado, baixe em:
👉 [https://nodejs.org/](https://nodejs.org/)

---

## 🔹 2. Gerenciador de Pacotes (npm ou yarn)

O npm já vem com o Node.js. Para verificar:

```bash
npm -v
```

Opcional:

* Yarn (alternativo ao npm)

---

## 🔹 3. Git (Opcional, mas recomendado)

Para versionamento do projeto:

```bash
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
4. Siga o assistente padrão

### Passo 2: Verificar instalação

```bash
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash
mkdir meu-projeto
cd meu-projeto
npm init -y
```

---

### Passo 4: Instalar Cypress

```bash
npm install cypress --save-dev
```

---

### Passo 5: Abrir Cypress

```bash
npx cypress open
```

Isso irá:

* Baixar dependências necessárias
* Criar estrutura inicial do projeto

---

## 🍎 macOS

### Passo 1: Instalar Node.js

#### Opção A: Site oficial

👉 [https://nodejs.org/](https://nodejs.org/)

#### Opção B: Usando Homebrew

```bash
brew install node
```

---

### Passo 2: Verificar instalação

```bash
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash
mkdir meu-projeto
cd meu-projeto
npm init -y
```

---

### Passo 4: Instalar Cypress

```bash
npm install cypress --save-dev
```

---

### Passo 5: Executar Cypress

```bash
npx cypress open
```

---

## 🐧 Linux (Ubuntu/Debian)

### Passo 1: Instalar Node.js

#### Usando NodeSource

```bash
sudo apt update
sudo apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
```

---

### Passo 2: Instalar dependências do sistema

O Cypress precisa de bibliotecas gráficas:

```bash
sudo apt install -y \
  libgtk2.0-0 \
  libgtk-3-0 \
  libgbm-dev \
  libnotify-dev \
  libnss3 \
  libxss1 \
  libasound2 \
  libxtst6 \
  xauth \
  xvfb
```

---

### Passo 3: Verificar instalação

```bash
node -v
npm -v
```

---

### Passo 4: Criar projeto

```bash
mkdir meu-projeto
cd meu-projeto
npm init -y
```

---

### Passo 5: Instalar Cypress

```bash
npm install cypress --save-dev
```

---

### Passo 6: Executar Cypress

```bash
npx cypress open
```

---

# 🚀 Execução em Modo Headless (Opcional)

```bash
npx cypress run
```

---

# 📁 Estrutura Gerada

Após abrir o Cypress pela primeira vez, será criada uma estrutura como:

```
cypress/
  e2e/
  fixtures/
  support/
cypress.config.js
```

---

# ⚠️ Problemas Comuns

### 🔸 Cypress não abre (Linux)

* Verifique dependências gráficas
* Use `xvfb` em servidores

---

### 🔸 Erro de permissão (Mac/Linux)

```bash
sudo chown -R $(whoami) ~/.cache/Cypress
```

---

### 🔸 Proxy/Firewall corporativo

* Pode bloquear o download do Cypress
* Configure proxy no npm:

```bash
npm config set proxy http://usuario:senha@proxy:porta
```

---

# 🧪 Verificando instalação

```bash
npx cypress verify
```

---

# 📦 Desinstalação

```bash
npm uninstall cypress
```

---

# 📚 Recursos Oficiais

* [https://docs.cypress.io/](https://docs.cypress.io/)
* [https://github.com/cypress-io/cypress](https://github.com/cypress-io/cypress)

---

# 🧾 Conclusão

Agora você tem o Cypress instalado e pronto para uso em:

* Windows 🪟
* macOS 🍎
* Linux 🐧

A partir daqui, você já pode começar a escrever testes automatizados para sua aplicação web 🚀

---
