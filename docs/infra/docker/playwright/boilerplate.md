# 🧪 📦 Estrutura do projeto

```
playwright-docker/
├── app/                 # sua aplicação (ex: Express)
│   ├── server.js
│   └── package.json
├── tests/
│   └── example.spec.ts
├── playwright.config.ts
├── package.json
├── Dockerfile
├── docker-compose.yml
└── .github/workflows/ci.yml
```

---

# 🚀 1. App simples (Node/Express)

### `app/server.js`

```js id="k8x2m1"
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello Playwright 🚀');
});

app.listen(3000, () => {
  console.log('App rodando na porta 3000');
});
```

### `app/package.json`

```json id="l0p9q2"
{
  "name": "app",
  "version": "1.0.0",
  "main": "server.js",
  "dependencies": {
    "express": "^4.18.2"
  }
}
```

---

# 🧪 2. Teste com Playwright

### `tests/example.spec.ts`

```ts id="v3z7d9"
import { test, expect } from '@playwright/test';

test('homepage should have text', async ({ page }) => {
  await page.goto('/');
  await expect(page.locator('body')).toContainText('Hello Playwright');
});
```

---

# ⚙️ 3. Config do Playwright

### `playwright.config.ts`

```ts id="p8f4t1"
import { defineConfig } from '@playwright/test';

export default defineConfig({
  use: {
    baseURL: process.env.BASE_URL || 'http://localhost:3000',
    headless: true,
  },
});
```

---

# 📦 4. package.json (raiz)

```json id="n2x6c4"
{
  "name": "playwright-docker",
  "version": "1.0.0",
  "scripts": {
    "test": "playwright test"
  },
  "devDependencies": {
    "@playwright/test": "^1.43.0"
  }
}
```

---

# 🐳 5. Dockerfile (tests)

```Dockerfile id="g6m1y3"
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

CMD ["npx", "playwright", "test"]
```

---

# 🔗 6. docker-compose (app + testes)

```yaml id="z9q2w8"
version: '3.8'

services:
  app:
    image: node:18
    working_dir: /app
    volumes:
      - ./app:/app
    command: sh -c "npm install && node server.js"
    ports:
      - "3000:3000"

  tests:
    build: .
    depends_on:
      - app
    environment:
      - BASE_URL=http://app:3000
```

---

# ▶️ Rodar tudo

```bash id="r7u3k2"
docker-compose up --build --exit-code-from tests
```

---

# 🤖 7. CI com GitHub Actions

### `.github/workflows/ci.yml`

```yaml id="m4t8x5"
name: Playwright Tests

on:
  push:
  pull_request:

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Run tests with Docker
        run: docker-compose up --build --exit-code-from tests
```

---

# 🔥 O que esse setup já resolve

* Ambiente 100% reproduzível
* Browsers já instalados (imagem oficial do Playwright da Microsoft)
* App + testes integrados
* Pronto pra CI
* Zero "works on my machine"

---

# 💡 Próximos upgrades (vale muito a pena)

Se quiser evoluir isso:

* Adicionar banco (PostgreSQL no compose)
* Rodar testes em paralelo (`workers`)
* Gerar relatório HTML (`npx playwright show-report`)
* Screenshots e vídeos automáticos
* Pipeline com cache de Docker layers (mais rápido)

---


