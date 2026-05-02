# 📘 Documentação de Comandos Docker

## 🚀 1. Gerenciamento de Contêineres

### ▶️ Rodar um contêiner

```bash
docker run nginx
```

### ▶️ Rodar em background

```bash
docker run -d nginx
```

### ▶️ Nomear um contêiner

```bash
docker run -d --name meu-container nginx
```

### ▶️ Mapear portas

```bash
docker run -d -p 8080:80 nginx
```

### ▶️ Listar contêineres rodando

```bash
docker ps
```

### ▶️ Listar todos (inclusive parados)

```bash
docker ps -a
```

### ▶️ Parar um contêiner

```bash
docker stop meu-container
```

### ▶️ Iniciar novamente

```bash
docker start meu-container
```

### ▶️ Remover contêiner

```bash
docker rm meu-container
```

---

## 📦 2. Gerenciamento de Imagens

### 🔍 Listar imagens

```bash
docker images
```

### ⬇️ Baixar imagem

```bash
docker pull nginx
```

### 🏗️ Criar imagem (Dockerfile)

```bash
docker build -t minha-imagem .
```

### ❌ Remover imagem

```bash
docker rmi nginx
```

---

## 📄 3. Logs e Monitoramento

### 📜 Ver logs

```bash
docker logs meu-container
```

### 📡 Logs em tempo real

```bash
docker logs -f meu-container
```

### 📊 Ver uso de recursos

```bash
docker stats
```

---

## 🧪 4. Execução e Debug

### 💻 Acessar contêiner

```bash
docker exec -it meu-container bash
```

### ▶️ Executar comando

```bash
docker exec meu-container ls
```

---

## 🧹 5. Limpeza do Sistema

### 🧼 Remover contêineres parados

```bash
docker container prune
```

### 🧼 Remover imagens não usadas

```bash
docker image prune
```

### 🧼 Limpeza geral

```bash
docker system prune
```

---

## 🌐 6. Redes

### 📡 Listar redes

```bash
docker network ls
```

### ➕ Criar rede

```bash
docker network create minha-rede
```

---

## 💾 7. Volumes

### 📂 Listar volumes

```bash
docker volume ls
```

### ➕ Criar volume

```bash
docker volume create meu-volume
```

---

## 🧩 8. Docker Compose (moderno)

### ▶️ Subir serviços

```bash
docker compose up
```

### ▶️ Background

```bash
docker compose up -d
```

### ⛔ Parar tudo

```bash
docker compose down
```

### 📜 Ver logs

```bash
docker compose logs
```

---

## ⚡ Dicas rápidas

* Use `-d` → roda em segundo plano
* Use `--name` → facilita gerenciar
* Use `-p` → expõe portas
* Use `-it` → modo interativo

---

## 💡 Resumo geral

* **docker run** → cria e roda contêiner
* **docker build** → cria imagem
* **docker ps** → lista contêineres
* **docker compose** → gerencia múltiplos serviços

---
