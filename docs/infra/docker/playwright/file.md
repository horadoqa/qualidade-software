# 📦 Criando um Dockerfile (melhor para projetos reais)

Exemplo:

```Dockerfile
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

CMD ["npx", "playwright", "test"]
```

Build e execução:

```bash
docker build -t playwright-tests .
docker run --rm playwright-tests
```

---