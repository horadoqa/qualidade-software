# Playwright

O time da Microsoft mantém imagens Docker oficiais já com browsers configurados.

Vou te mostrar os principais cenários.

---

## 🧱 1. Usando a imagem oficial do Playwright

A forma mais direta:

```bash
docker run -it --rm \
  -v $PWD:/app \
  -w /app \
  mcr.microsoft.com/playwright:v1.43.0-jammy \
  npx playwright test
```

Essa imagem já vem com:

* Chromium, Firefox e WebKit
* Dependências do sistema
* Node.js

---
