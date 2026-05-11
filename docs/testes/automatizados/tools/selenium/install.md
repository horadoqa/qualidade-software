# 🧪 Manual Completo de Instalação do Selenium

## 📌 O que é o Selenium?

O **Selenium** é uma das ferramentas mais populares para automação de testes em aplicações web. Ele permite controlar navegadores como Chrome, Firefox e Edge para simular interações reais de usuários.

Neste guia, vamos focar na instalação do **Selenium com Python**, uma das combinações mais utilizadas.

---

# ⚙️ Pré-requisitos

Antes de instalar o Selenium, você precisa ter:

## 🔹 1. Python

* Versão recomendada: **Python 3.8 ou superior**

Verifique:

```bash 
python --version
```

ou:

```bash 
python3 --version
```

👉 Download: [https://www.python.org/](https://www.python.org/)

---

## 🔹 2. pip (Gerenciador de pacotes)

```bash 
pip --version
```

---

## 🔹 3. Navegador Web

Você precisa de pelo menos um navegador instalado:

* Google Chrome
* Mozilla Firefox
* Microsoft Edge

---

## 🔹 4. WebDriver

O Selenium precisa de um **driver específico** para cada navegador:

* Chrome → ChromeDriver
* Firefox → GeckoDriver
* Edge → EdgeDriver

⚠️ A versão do driver deve ser compatível com a versão do navegador.

---

## 🔹 5. (Opcional) Virtual Environment

```bash 
python -m venv venv
```

Ativação:

* Windows:

```bash 
venv\Scripts\activate
```

* macOS/Linux:

```bash 
source venv/bin/activate
```

---

# 💻 Instalação por Sistema Operacional

---

## 🪟 Windows

### Passo 1: Instalar Python

1. Acesse: [https://www.python.org/](https://www.python.org/)
2. Baixe a versão mais recente
3. Marque **Add Python to PATH**

---

### Passo 2: Verificar instalação

```bash 
python --version
pip --version
```

---

### Passo 3: Criar projeto

```bash 
mkdir meu-projeto-selenium
cd meu-projeto-selenium
```

---

### Passo 4: (Opcional) Criar ambiente virtual

```bash 
python -m venv venv
venv\Scripts\activate
```

---

### Passo 5: Instalar Selenium

```bash 
pip install selenium
```

---

### Passo 6: Baixar WebDriver

#### Chrome:

* [https://sites.google.com/chromium.org/driver/](https://sites.google.com/chromium.org/driver/)

#### Firefox:

* [https://github.com/mozilla/geckodriver/releases](https://github.com/mozilla/geckodriver/releases)

#### Edge:

* [https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/)

---

### Passo 7: Configurar WebDriver

* Coloque o driver no PATH
  ou
* Informe o caminho no código

---

### Passo 8: Verificar instalação

```bash 
python -c "import selenium; print(selenium.__version__)"
```

---

## 🍎 macOS

### Passo 1: Instalar Python

#### Opção A: Site oficial

👉 [https://www.python.org/](https://www.python.org/)

#### Opção B: Homebrew

```bash 
brew install python
```

---

### Passo 2: Verificar instalação

```bash 
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash 
mkdir meu-projeto-selenium
cd meu-projeto-selenium
```

---

### Passo 4: Criar ambiente virtual

```bash 
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Selenium

```bash 
pip install selenium
```

---

### Passo 6: Instalar WebDriver

#### Chrome (via Homebrew):

```bash 
brew install chromedriver
```

---

### Passo 7: Verificar instalação

```bash 
python3 -c "import selenium; print(selenium.__version__)"
```

---

## 🐧 Linux (Ubuntu/Debian)

### Passo 1: Instalar Python e pip

```bash 
sudo apt update
sudo apt install -y python3 python3-pip python3-venv
```

---

### Passo 2: Verificar instalação

```bash 
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash 
mkdir meu-projeto-selenium
cd meu-projeto-selenium
```

---

### Passo 4: Criar ambiente virtual

```bash 
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Selenium

```bash 
pip install selenium
```

---

### Passo 6: Instalar navegador e driver

#### Chrome:

```bash 
sudo apt install -y chromium-browser chromium-chromedriver
```

---

### Passo 7: Verificar instalação

```bash 
python3 -c "import selenium; print(selenium.__version__)"
```

---

# 🌐 Navegadores Suportados

O Selenium funciona com:

* Chrome
* Firefox
* Edge
* Safari

---

# 🚀 Execução Básica

Para testar se está tudo funcionando, você pode rodar um script simples (não obrigatório neste guia).

---

# ⚠️ Problemas Comuns

### 🔸 Versão do WebDriver incompatível

* Sempre alinhe com a versão do navegador

---

### 🔸 Driver não encontrado

* Adicione ao PATH
  ou
* Informe caminho manualmente

---

### 🔸 Permissões (Linux/macOS)

```bash 
chmod +x chromedriver
```

---

# 🧪 Verificando instalação

```bash 
python -m pip show selenium
```

---

# 📦 Desinstalação

```bash 
pip uninstall selenium
```

---

# 🔄 Integrações Comuns

O Selenium pode ser usado com:

* Cucumber (BDD)
* Robot Framework
* PyTest / JUnit

---

# 📚 Recursos Oficiais

* [https://www.selenium.dev/](https://www.selenium.dev/)
* [https://github.com/SeleniumHQ/selenium](https://github.com/SeleniumHQ/selenium)

---

# 🧾 Conclusão

Agora você tem o Selenium instalado e pronto para uso em:

* Windows 🪟
* macOS 🍎
* Linux 🐧

Você já pode automatizar testes de interface web simulando ações reais de usuários 🚀

---

Se quiser, posso depois te mostrar um comparativo direto entre Selenium, Playwright e Cypress — isso ajuda bastante na escolha da ferramenta.
