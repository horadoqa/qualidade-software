# 📦 Criando seu próprio Dockerfile

Se quiser mais controle:

```Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Instala Robot Framework + libs
RUN pip install robotframework robotframework-seleniumlibrary

# Dependências do browser (Chrome exemplo)
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

COPY . .

CMD ["robot", "tests/"]
```

Build e run:

```bash
docker build -t robot-tests .
docker run --rm robot-tests
```

---
