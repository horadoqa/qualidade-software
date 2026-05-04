# Arquitetura do Docker

A **arquitetura do Docker** é a forma como seus componentes se organizam para permitir que aplicações rodem dentro de containers de forma isolada, leve e portável.

Ela segue um modelo cliente-servidor com várias camadas bem definidas.

---

# 🧱 Arquitetura do Docker

## 🧩 Visão geral

O Docker é composto principalmente por:

* 🖥️ Docker Client (cliente)
* ⚙️ Docker Daemon (servidor)
* 📦 Images (imagens)
* 🚀 Containers
* 🌐 Docker Registry

---

# ⚙️ 1. Docker Client

É a interface que você usa para interagir com o Docker.

Exemplo:

```bash id="cli1"
docker run nginx
```

👉 O client envia comandos para o Docker Daemon.

---

# 🧠 2. Docker Daemon (dockerd)

É o “coração” do Docker.

Ele é responsável por:

* criar containers
* gerenciar imagens
* controlar redes
* gerenciar volumes

👉 Ele roda em segundo plano no sistema.

---

# 📦 3. Images (Imagens)

São os “modelos” usados para criar containers.

Exemplo:

* NGINX image
* Ubuntu image
* Node.js image

👉 São imutáveis e servem como base.

---

# 🚀 4. Containers

São instâncias em execução de uma imagem.

👉 Ou seja:

* imagem = molde
* container = aplicação rodando

Eles são isolados entre si.

---

# 🌐 5. Docker Registry

É onde as imagens ficam armazenadas.

Exemplo mais comum:

* Docker Hub

Fluxo:

```text
Docker Hub → baixa imagem → cria container
```

---

# 🔄 Como tudo funciona junto

Fluxo completo:

```text
Você (Docker Client)
        ↓
envia comando
        ↓
Docker Daemon
        ↓
baixa imagem do Registry (se necessário)
        ↓
cria container
        ↓
aplicação roda
```

---

# 🧱 Arquitetura em camadas

O Docker também funciona em **camadas internas (layers)**:

## 📦 Image Layers

Cada instrução do Dockerfile cria uma camada:

* FROM
* RUN
* COPY
* CMD

👉 Isso permite reaproveitamento e cache.

---

# 🔒 Isolamento dos containers

Cada container tem:

* seu próprio sistema de arquivos
* processos separados
* rede virtual
* recursos limitados

Mas todos compartilham o **kernel do sistema operacional host**.

---

# 🖥️ Arquitetura simplificada

```text
        +----------------------+
        |   Docker Client      |
        +----------+-----------+
                   |
                   v
        +----------------------+
        |   Docker Daemon      |
        |   (dockerd)          |
        +----------+-----------+
                   |
     +-------------+-------------+
     |             |             |
     v             v             v
 Images        Containers     Networks
     |
     v
 Docker Registry
```

---

# ⚡ Por que essa arquitetura é importante?

## 🧪 1. Eficiência

Containers são leves porque não precisam de SO completo

## 🔁 2. Reprodutibilidade

Mesma imagem roda em qualquer ambiente

## 🧱 3. Escalabilidade

Fácil criar múltiplos containers

## ☁️ 4. Portabilidade

Funciona em:

* seu PC
* servidor
* cloud

---

# 📌 Resumo

A arquitetura do Docker é baseada em:

✔ Cliente (comandos)
✔ Daemon (motor)
✔ Imagens (modelos)
✔ Containers (execução)
✔ Registry (armazenamento)

Tudo trabalhando junto para criar um ambiente leve, isolado e portátil.

---
