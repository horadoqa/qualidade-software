# Integrar o **SonarQube** com **GitHub Actions** 

Rodar análise de qualidade automaticamente toda vez que você fizer push ou abrir um pull request.

Isso é CI/CD de verdade: código entra no repositório → pipeline roda → Sonar analisa → relatório sai automaticamente.

---

# 🚀 Integração SonarQube + GitHub Actions (Python)

## 🧱 1. Pré-requisitos

Você precisa ter:

* Um projeto Python no GitHub 🐍
* Um servidor SonarQube rodando (local ou cloud)
* Um **token do SonarQube** 🔐

---

# 📁 2. Estrutura básica do projeto

```
meu-projeto/
│
├── app/
├── tests/
├── requirements.txt
├── sonar-project.properties
└── .github/workflows/sonar.yml
```

---

# ⚙️ 3. Configurar o Sonar no projeto

## 📄 `sonar-project.properties`

```properties
sonar.projectKey=meu_projeto_python
sonar.projectName=Meu Projeto Python
sonar.projectVersion=1.0

sonar.sources=.
sonar.language=python

sonar.host.url=http://SEU_SONAR:9000
sonar.login=${SONAR_TOKEN}
```

---

# 🔐 4. Adicionar segredo no GitHub

No GitHub:

👉 Settings → Secrets and variables → Actions → New secret

Crie:

```
SONAR_TOKEN=seu_token_aqui
```

---

# 🤖 5. Criar GitHub Actions

## 📄 `.github/workflows/sonar.yml`

```yaml id="sonar2"
name: SonarQube Analysis

on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

jobs:
  sonar:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout código
        uses: actions/checkout@v4

      - name: Setup Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.10"

      - name: Instalar dependências
        run: |
          pip install -r requirements.txt

      - name: Rodar testes (opcional)
        run: |
          pip install pytest pytest-cov
          pytest --cov=. --cov-report=xml

      - name: SonarQube Scan
        uses: SonarSource/sonarqube-scan-action@v2
        env:
          SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
          SONAR_HOST_URL: http://SEU_SONAR:9000
```

---

# 📊 6. O que acontece agora?

Sempre que você fizer:

```bash id="sonar3"
git push origin main
```

O pipeline:

✔ baixa o código
✔ instala dependências
✔ roda testes (opcional)
✔ executa análise do SonarQube
✔ envia resultados automaticamente

---

# 📈 7. Resultado no SonarQube

Você verá no painel:

* Bugs 🐛
* Vulnerabilidades 🔐
* Code smells 🧹
* Coverage de testes 📊
* Quality Gate (APROVADO/REPROVADO)

---

# 🚨 8. (Opcional) Quality Gate

Você pode configurar regras tipo:

* ❌ falhar se cobertura < 80%
* ❌ falhar se houver vulnerabilidades críticas
* ❌ falhar se houver duplicação alta

---

# 💡 Resumo simples

Com GitHub Actions + SonarQube você consegue:

👉 análise automática a cada push
👉 feedback imediato de qualidade
👉 prevenção de bugs em produção
👉 controle de qualidade contínuo (CI/CD real)

---
