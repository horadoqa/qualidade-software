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

```bash id="v3n7k2"
python --version
```

ou:

```bash id="z9q2x6"
python3 --version
```

👉 Download: [https://www.python.org/](https://www.python.org/)

---

## 🔹 2. pip (Gerenciador de pacotes)

```bash id="p4k8y1"
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

```bash id="t8f1c3"
python -m venv venv
```

Ativação:

* Windows:

```bash id="g6m2r9"
venv\Scripts\activate
```

* macOS/Linux:

```bash id="h3v9k5"
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

```bash id="y7x4k8"
python --version
pip --version
```

---

### Passo 3: Criar projeto

```bash id="n2k9f1"
mkdir meu-projeto-selenium
cd meu-projeto-selenium
```

---

### Passo 4: (Opcional) Criar ambiente virtual

```bash id="r5t8m3"
python -m venv venv
venv\Scripts\activate
```

---

### Passo 5: Instalar Selenium

```bash id="b8c3z6"
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

```bash id="k4v1p7"
python -c "import selenium; print(selenium.__version__)"
```

---

## 🍎 macOS

### Passo 1: Instalar Python

#### Opção A: Site oficial

👉 [https://www.python.org/](https://www.python.org/)

#### Opção B: Homebrew

```bash id="m1c7z9"
brew install python
```

---

### Passo 2: Verificar instalação

```bash id="p6y2k8"
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash id="q9v5n2"
mkdir meu-projeto-selenium
cd meu-projeto-selenium
```

---

### Passo 4: Criar ambiente virtual

```bash id="s3k8t1"
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Selenium

```bash id="d7n4x6"
pip install selenium
```

---

### Passo 6: Instalar WebDriver

#### Chrome (via Homebrew):

```bash id="h2p9k4"
brew install chromedriver
```

---

### Passo 7: Verificar instalação

```bash id="z8m1r5"
python3 -c "import selenium; print(selenium.__version__)"
```

---

## 🐧 Linux (Ubuntu/Debian)

### Passo 1: Instalar Python e pip

```bash id="w5k2p8"
sudo apt update
sudo apt install -y python3 python3-pip python3-venv
```

---

### Passo 2: Verificar instalação

```bash id="x6v3t9"
python3 --version
pip3 --version
```

---

### Passo 3: Criar projeto

```bash id="c1n7m4"
mkdir meu-projeto-selenium
cd meu-projeto-selenium
```

---

### Passo 4: Criar ambiente virtual

```bash id="j8q2k5"
python3 -m venv venv
source venv/bin/activate
```

---

### Passo 5: Instalar Selenium

```bash id="f4r9x2"
pip install selenium
```

---

### Passo 6: Instalar navegador e driver

#### Chrome:

```bash id="k7p3z1"
sudo apt install -y chromium-browser chromium-chromedriver
```

---

### Passo 7: Verificar instalação

```bash id="t2v6m8"
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

```bash id="n9v2k6"
chmod +x chromedriver
```

---

# 🧪 Verificando instalação

```bash id="g3m8p1"
python -m pip show selenium
```

---

# 📦 Desinstalação

```bash id="y2k7t4"
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
