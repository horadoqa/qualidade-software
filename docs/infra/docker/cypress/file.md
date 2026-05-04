# 📦 Criando um Dockerfile (mais controle)

Se quiser customizar:

```Dockerfile
FROM cypress/included:13.6.0

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

COPY . .

CMD ["npx", "cypress", "run"]
```

Build e run:

```bash
docker build -t meu-cypress .
docker run meu-cypress
```

---
