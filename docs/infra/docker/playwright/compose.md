# ⚙️ Usando docker-compose (app + testes)

Se você tem uma aplicação rodando junto:

```yaml
version: '3.8'

services:
  app:
    build: .
    ports:
      - "3000:3000"

  tests:
    image: mcr.microsoft.com/playwright:v1.43.0-jammy
    depends_on:
      - app
    working_dir: /app
    volumes:
      - .:/app
    environment:
      - BASE_URL=http://app:3000
    command: npx playwright test
```

Rodar:

```bash
docker-compose up --exit-code-from tests
```
