A instalação do **Allure (gerador de relatórios de testes)** depende um pouco do sistema operacional, mas na prática você precisa de duas coisas:

1. **Allure Commandline (ferramenta principal)**
2. **Integração com sua linguagem de testes (Pytest, JUnit, etc.)**

Vou te mostrar o caminho mais comum e direto 👇

---

# ✅ 1. Instalar o Allure Commandline

## 🪟 Windows (mais comum)

### Opção recomendada: via Scoop

Se você tiver o Scoop instalado:

```bash
scoop install allure
```

Se não tiver o Scoop:

1. Instale o Scoop: [https://scoop.sh](https://scoop.sh)
2. Depois rode o comando acima

---

## 🍎 macOS

Com Homebrew:

```bash
brew install allure
```

---

## 🐧 Linux (Ubuntu/Debian)

Você pode instalar via repositório ou manual:

### Via pacote (mais simples se disponível):

```bash
sudo apt install allure
```

### Ou manual (mais confiável):

```bash
wget https://github.com/allure-framework/allure2/releases/latest/download/allure-2.x.x.tgz
tar -zxvf allure-2.x.x.tgz
sudo mv allure-2.x.x /opt/allure
sudo ln -s /opt/allure/bin/allure /usr/bin/allure
```

---

## ✔️ Testar instalação

Depois de instalar:

```bash
allure --version
```

Se aparecer a versão, está tudo certo.

---

# ✅ 2. Instalar integração com testes

## 🐍 Python (Pytest)

Instale o plugin:

```bash
pip install allure-pytest
```

---

## ☕ Java (JUnit / TestNG)

Adicione no Maven:

```xml
<dependency>
    <groupId>io.qameta.allure</groupId>
    <artifactId>allure-junit5</artifactId>
    <version>2.24.0</version>
</dependency>
```

---

# ✅ 3. Gerar relatório

Depois de rodar seus testes:

```bash
allure serve allure-results
```

ou:

```bash
allure generate allure-results -o allure-report
allure open allure-report
```

---

# ⚠️ Resumo simples

Você precisa:

✔ Instalar Allure Commandline
✔ Instalar plugin da sua linguagem
✔ Rodar testes e gerar relatório

---

Se quiser, posso te guiar com um exemplo completo em **Pytest + Allure (passo a passo com código de teste)** 
