# 🚀 CI/CD automático (MkDocs + GitHub Pages)

## 📁 1. Estrutura do projeto

Seu projeto continua assim:

```bash
horadoqa/
├── docs/
├── mkdocs.yml
└── .github/workflows/
```

---

## ⚙️ 2. Criar o workflow do GitHub Actions

Crie este arquivo:

```bash
.github/workflows/deploy.yml
```

---

## 🧠 3. Workflow completo

Cole isso dentro:

```yaml
name: Deploy MkDocs to GitHub Pages

on:
  push:
    branches:
      - main

permissions:
  contents: write

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repo
        uses: actions/checkout@v4

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.11"

      - name: Install dependencies
        run: |
          pip install mkdocs mkdocs-material

      - name: Build site
        run: mkdocs build

      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v4
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./site
```

---

## ⚙️ 4. Ajustar mkdocs.yml

Adicione:

```yaml
site_name: Meu Projeto

site_url: https://SEU-USUARIO.github.io/meu-projeto/

theme:
  name: material
```

---

## 🌐 5. Ativar GitHub Pages

No repositório:

* Settings → Pages
* Source: **Deploy from branch**
* Branch: `gh-pages`
* Folder: `/ (root)`

---

## 🚀 6. Subir tudo

```bash
git add .
git commit -m "setup CI/CD"
git push origin main
```

---

## ⚡ Resultado

Agora acontece isso automaticamente:

1. Você faz push no `main`
2. GitHub Actions roda
3. MkDocs gera o site
4. Publica no `gh-pages`
5. GitHub Pages atualiza o site

---

# 🧩 Fluxo visual

```text
push no main
   ↓
GitHub Actions
   ↓
mkdocs build
   ↓
gh-pages branch
   ↓
site atualizado 🌐
```

---

# 🔥 Upgrade opcional (recomendado)

Se quiser algo mais moderno, troque:

```bash
pip install mkdocs-material
```

E no `mkdocs.yml`:

```yaml
theme:
  name: material
```

---

# 💡 Próximo nível (se quiser evoluir)

* 🔒 deploy com preview por PR (cada branch vira preview)
* 🧪 testes automáticos da documentação
* 📦 versionamento de docs (v1, v2, v3)
* 🌍 domínio próprio tipo `docs.seuprojeto.com`
* ⚡ pipeline mais avançado estilo empresas SaaS
