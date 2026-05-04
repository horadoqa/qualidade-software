# ⚙️ Usando docker-compose (ideal para integração)

Se seu app também roda em container:

```yaml
services:
  app:
    build: .
    ports:
      - "3000:3000"

  cypress:
    image: cypress/included:13.6.0
    depends_on:
      - app
    working_dir: /e2e
    volumes:
      - ./:/e2e
    environment:
      - CYPRESS_baseUrl=http://app:3000
```

Rodar:

```bash
docker-compose up --exit-code-from cypress
```

---