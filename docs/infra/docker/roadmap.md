# 🧭 ROADMAP: Docker Desktop → NGINX em Container

## 🟢 Fase 1 — Instalação e preparação

### 1.1 Instalar Docker Desktop

* Baixe em: [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)
* Instale normalmente (Windows/macOS)
* Reinicie o sistema se necessário

### 1.2 Verificar instalação

No terminal:

```bash
docker --version
```

E teste o funcionamento:

```bash
docker run hello-world
```

✔ Se aparecer mensagem de sucesso, está pronto.

---

### 1.3 Entender conceitos básicos

Antes de avançar, entenda:

* **Imagem** → “modelo” de um sistema (ex: Ubuntu, NGINX)
* **Container** → execução ativa de uma imagem
* **Docker Hub** → repositório de imagens
* **Porta** → acesso externo ao container

---

## 🟡 Fase 2 — Comandos essenciais

Aprenda os comandos fundamentais:

### 🔍 Ver containers ativos

```bash
docker ps
```

### 📦 Ver todos os containers

```bash
docker ps -a
```

### 📥 Baixar imagem

```bash
docker pull nginx
```

### ▶️ Rodar container

```bash
docker run nginx
```

---

## 🟠 Fase 3 — Primeiro container NGINX

Aqui você já vai subir seu primeiro servidor web.

### 🌐 O que é o NGINX?

O NGINX é um servidor web leve e muito usado para:

* hospedar sites
* atuar como proxy reverso
* balanceamento de carga

---

### 3.1 Rodar NGINX básico

```bash
docker run nginx
```

➡ Ele roda, mas você ainda não consegue acessar pelo navegador.

---

### 3.2 Rodar com acesso via navegador

```bash
docker run -d -p 8080:80 nginx
```

### 📌 O que isso significa:

* `-d` → modo background
* `-p 8080:80` → porta do seu PC (8080) → porta do container (80)

---

### 3.3 Testar no navegador

Abra:

```
http://localhost:8080
```

✔ Você verá a página padrão do NGINX

---

## 🔵 Fase 4 — Gerenciando containers

### 🧾 Nomear container

```bash
docker run -d -p 8080:80 --name meu-nginx nginx
```

---

### ⛔ Parar container

```bash
docker stop meu-nginx
```

---

### ▶️ Iniciar novamente

```bash
docker start meu-nginx
```

---

### 🗑️ Remover container

```bash
docker rm meu-nginx
```

---

## 🟣 Fase 5 — Customizando o NGINX

### 5.1 Criar pasta de projeto

```bash
mkdir meu-nginx
cd meu-nginx
```

---

### 5.2 Criar página HTML

Crie um arquivo `index.html`:

```html
<h1>Meu NGINX no Docker 🚀</h1>
```

---

### 5.3 Rodar NGINX com volume

```bash
docker run -d -p 8080:80 \
-v $(pwd):/usr/share/nginx/html \
nginx
```

✔ Agora o NGINX serve sua página personalizada.

---

## 🔴 Fase 6 — Conceitos avançados (próximo passo)

Depois disso, você pode evoluir para:

### 📦 Dockerfile

Criar suas próprias imagens

### ⚙️ Docker Compose

Subir múltiplos containers juntos

### 🌐 Reverse Proxy

Usar NGINX para distribuir tráfego

### ☁️ Deploy

Enviar containers para:

* AWS
* Azure
* VPS
* Kubernetes

---

## 🎯 RESUMO DO ROADMAP

1. Instalar Docker Desktop
2. Entender imagens e containers
3. Rodar comandos básicos
4. Subir NGINX simples
5. Mapear portas (localhost)
6. Gerenciar containers
7. Customizar NGINX com arquivos locais
8. Evoluir para Dockerfile e Compose

---

## 🚀 Resultado final

Ao concluir esse roadmap, você será capaz de:

* Rodar servidores localmente em containers
* Subir aplicações web rapidamente
* Criar ambientes replicáveis
* Começar projetos com arquitetura moderna

---
