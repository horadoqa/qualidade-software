Usar o **SonarQube** em um projeto Python envolve basicamente 3 coisas: rodar o servidor, preparar o projeto e executar a análise com o scanner.

Vou te mostrar o passo a passo direto e prático 👇

---

# 🧠 1. Pré-requisitos

Antes de tudo, você precisa ter:

* Python instalado 🐍
* Java (necessário para o SonarQube) ☕
* Docker (opcional, mas facilita muito)

---

# 🐳 2. Subir o SonarQube (forma mais fácil)

## Opção com Docker (recomendado)

```bash id="sonar1"
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts
```

Depois acesse:

```
http://localhost:9000
```

Login padrão:

* usuário: `admin`
* senha: `admin`

---

# 📦 3. Instalar o scanner do Sonar

Instale o **SonarScanner**:

## Linux/macOS

```bash id="sonar2"
brew install sonar-scanner
```

## Windows

Baixe aqui:
[https://docs.sonarsource.com/sonarqube/latest/analyzing-source-code/scanners/sonarscanner/](https://docs.sonarsource.com/sonarqube/latest/analyzing-source-code/scanners/sonarscanner/)

E adicione no PATH.

---

# 📁 4. Criar configuração no projeto

Na raiz do seu projeto Python, crie um arquivo:

## 📄 `sonar-project.properties`

```properties id="sonar3"
sonar.projectKey=meu_projeto_python
sonar.projectName=Meu Projeto Python
sonar.projectVersion=1.0

sonar.sources=.
sonar.language=python

sonar.host.url=http://localhost:9000
sonar.login=SEU_TOKEN_AQUI
```

---

# 🔐 5. Gerar token no SonarQube

No painel:

* Acesse **My Account → Security**
* Gere um **token**
* Coloque no `sonar.login`

---

# ▶️ 6. Rodar análise

No terminal, dentro do projeto:

```bash id="sonar4"
sonar-scanner
```

---

# 📊 7. Ver resultado

Acesse:

```
http://localhost:9000
```

Você verá:

* bugs 🐛
* vulnerabilidades 🔐
* code smells 🧹
* cobertura de código 📈 (se configurado)

---

# 🧪 8. (Opcional) Integrar com Pytest

Para cobertura de testes:

```bash id="sonar5"
pip install pytest pytest-cov
```

Rodar testes:

```bash id="sonar6"
pytest --cov=. --cov-report=xml
```

E adicionar no `sonar-project.properties`:

```properties id="sonar7"
sonar.python.coverage.reportPaths=coverage.xml
```

---

# 🚀 Resumo do fluxo

1. Subir SonarQube (Docker ou local)
2. Instalar SonarScanner
3. Criar `sonar-project.properties`
4. Gerar token
5. Rodar `sonar-scanner`
6. Ver relatório no browser

---

