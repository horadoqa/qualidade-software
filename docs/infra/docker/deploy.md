# Deploy

No Docker, **deploy** é o processo de **publicar e colocar uma aplicação em execução em um ambiente externo (servidor, nuvem ou produção) usando containers**.

👉 Em termos simples:
**deploy é quando você sai do “rodando localmente” e coloca sua aplicação para o mundo usar.**

---

# 🚀 O que é deploy no Docker?

Fazer deploy com Docker significa:

* pegar uma imagem Docker pronta
* subir containers em um servidor
* expor a aplicação para acesso externo
* manter o sistema rodando de forma estável

---

# 🧠 Explicação simples

Pense assim:

* 💻 Desenvolvimento → roda no seu computador
* 🚀 Deploy → roda em um servidor acessível pela internet

---

# ⚙️ Como o deploy funciona com Docker?

Fluxo básico:

1. Você cria uma imagem (via Dockerfile)
2. Envia essa imagem para um servidor ou registro (ex: Docker Hub)
3. No servidor, você roda um container baseado nela
4. A aplicação fica disponível online

---

# 📦 Exemplo prático com NGINX

Imagine que você tem um site com NGINX:

### 1. Criar imagem

```bash id="d1k9ab"
docker build -t meu-site .
```

---

### 2. Rodar em produção (deploy simples)

```bash id="x8m2we"
docker run -d -p 80:80 meu-site
```

Agora seu site está acessível na internet (ou no servidor).

---

# ☁️ Tipos de deploy com Docker

## 🖥️ 1. Deploy local

* roda na sua máquina
* usado para testes

---

## 🌐 2. Deploy em servidor (VPS)

* você acessa um servidor remoto
* roda containers lá

---

## ☁️ 3. Deploy em cloud

Ex:

* AWS
* Azure
* Google Cloud

---

## 📦 4. Deploy com Docker Hub

Fluxo:

1. enviar imagem:

```bash id="hub1"
docker push usuario/minha-imagem
```

2. puxar no servidor:

```bash id="hub2"
docker pull usuario/minha-imagem
```

3. rodar container

---

# 🔁 Deploy tradicional vs Docker

| Tradicional                      | Docker                |
| -------------------------------- | --------------------- |
| instala dependências manualmente | tudo já vem na imagem |
| difícil de reproduzir            | fácil de replicar     |
| ambiente varia                   | ambiente padronizado  |

---

# 🧱 Exemplo de deploy real

Em produção você normalmente faz:

```bash id="prod1"
docker run -d \
  -p 80:80 \
  --restart always \
  meu-app
```

### 📌 O que isso adiciona:

* `-d` → roda em background
* `-p` → expõe a aplicação
* `--restart always` → reinicia se cair

---

# 📌 Por que deploy com Docker é importante?

### ⚡ 1. Rapidez

Subir aplicações em segundos

### 🧱 2. Consistência

Mesmo ambiente em qualquer servidor

### 🔁 3. Facilidade de atualização

Só troca a imagem

### ☁️ 4. Escalabilidade

Rodar múltiplos containers facilmente

---

# 📍 Resumo

Deploy no Docker é:

✔ colocar uma aplicação em produção
✔ rodando dentro de containers
✔ em servidores ou cloud
✔ de forma rápida, padronizada e escalável

---
