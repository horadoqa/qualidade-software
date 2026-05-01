# 🎭 Manual Completo de Instalação do Playwright

## 📌 O que é o Playwright?

O **Playwright** é uma ferramenta moderna de automação de testes end-to-end (E2E) desenvolvida pela Microsoft. Ele permite testar aplicações web em múltiplos navegadores (Chromium, Firefox e WebKit) com alta confiabilidade.

---

# ⚙️ Pré-requisitos

Antes de instalar o Playwright, você precisa ter:

## 🔹 1. Node.js

O Playwright roda sobre Node.js.

* Versão recomendada: **Node 16 ou superior**

Verifique:

```bash id="p9k3v1"
node -v
```

👉 Download: [https://nodejs.org/](https://nodejs.org/)

---

## 🔹 2. npm ou yarn

O npm já vem com o Node.js.

```bash id="z4d8k2"
npm -v
```

---

## 🔹 3. Git (Opcional)

```bash id="n7s2l5"
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

```bash id="x3c9p1"
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash id="a6j4w8"
mkdir meu-projeto-playwright
cd meu-projeto-playwright
npm init -y
```

---

### Passo 4: Instalar Playwright

```bash id="k2m8r0"
npm init playwright@latest
```

Esse comando:

* Instala o Playwright
* Configura o projeto automaticamente
* Baixa navegadores suportados

---

### Passo 5: Instalar navegadores (caso necessário)

```bash id="s8f2l9"
npx playwright install
```

---

### Passo 6: Executar testes

```bash id="d7v1x3"
npx playwright test
```

---

## 🍎 macOS

### Passo 1: Instalar Node.js

#### Opção A: Site oficial

👉 [https://nodejs.org/](https://nodejs.org/)

#### Opção B: Homebrew

```bash id="m5t2b7"
brew install node
```

---

### Passo 2: Verificar instalação

```bash id="r8q3z6"
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash id="p1n7k4"
mkdir meu-projeto-playwright
cd meu-projeto-playwright
npm init -y
```

---

### Passo 4: Instalar Playwright

```bash id="y3w6h8"
npm init playwright@latest
```

---

### Passo 5: Instalar navegadores

```bash id="u9c5d2"
npx playwright install
```

---

### Passo 6: Executar testes

```bash id="q4b8n1"
npx playwright test
```

---

## 🐧 Linux (Ubuntu/Debian)

### Passo 1: Instalar Node.js

```bash id="l2v9s6"
sudo apt update
sudo apt install -y nodejs npm
```

---

### Passo 2: Verificar instalação

```bash id="g5f3p8"
node -v
npm -v
```

---

### Passo 3: Criar projeto

```bash id="t8r1k2"
mkdir meu-projeto-playwright
cd meu-projeto-playwright
npm init -y
```

---

### Passo 4: Instalar Playwright

```bash id="e6d4y9"
npm init playwright@latest
```

---

### Passo 5: Instalar dependências do sistema

```bash id="h7m3x1"
sudo npx playwright install-deps
```

---

### Passo 6: Instalar navegadores

```bash id="c2p9v4"
npx playwright install
```

---

### Passo 7: Executar testes

```bash id="w1k8z5"
npx playwright test
```

---

# 🌐 Navegadores Suportados

O Playwright suporta:

* Chromium (Chrome, Edge)
* Firefox
* WebKit (Safari)

---

# 🚀 Execução em Modo Headless

Por padrão, o Playwright executa testes em modo headless.

Para rodar com interface:

```bash id="b9x6q2"
npx playwright test --headed
```

---

# 📁 Estrutura Gerada

Após a instalação:

```id="f3p8z7"
tests/
playwright.config.js
package.json
```

---

# 📊 Relatórios

Executar com relatório HTML:

```bash id="s4n2y6"
npx playwright show-report
```

---

# ⚠️ Problemas Comuns

### 🔸 Dependências no Linux

* Execute:

```bash id="u5t1j9"
sudo npx playwright install-deps
```

---

### 🔸 Navegadores não instalados

```bash id="k8w3v2"
npx playwright install
```

---

### 🔸 Permissões (Mac/Linux)

```bash id="d2r7m5"
sudo chown -R $(whoami) ~/.cache/ms-playwright
```

---

# 🧪 Verificando instalação

```bash id="p7y4n8"
npx playwright --version
```

---

# 📦 Desinstalação

```bash id="z6x1c3"
npm uninstall @playwright/test
```

---

# 📚 Recursos Oficiais

* [https://playwright.dev/](https://playwright.dev/)
* [https://github.com/microsoft/playwright](https://github.com/microsoft/playwright)

---

# 🧾 Conclusão

Agora você tem o Playwright instalado e pronto para uso em:

* Windows 🪟
* macOS 🍎
* Linux 🐧

Você já pode começar a automatizar testes modernos e confiáveis em múltiplos navegadores 🚀

---
