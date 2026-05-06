# Docker

O **Docker** é uma plataforma que permite criar, empacotar e executar aplicações dentro de **containers**.

### 🧱 O que é um container?

Um container é como uma “caixinha” leve que contém:

* o código da aplicação
* todas as dependências (bibliotecas, runtimes, etc.)
* configurações necessárias

Isso garante que a aplicação funcione **igual em qualquer ambiente** (seja no seu computador, servidor ou nuvem).

---

## ⚙️ Como o Docker funciona?

O Docker usa virtualização leve (diferente de máquinas virtuais tradicionais). Em vez de criar um sistema operacional completo, ele compartilha o kernel do sistema hospedeiro.

### Componentes principais:

### 1. **Imagem (Image)**

* É o “modelo” do container
* Contém tudo que a aplicação precisa
* Ex: uma imagem com Node.js + seu código

👉 Pense como uma receita

---

### 2. **Container**

* É a imagem em execução
* Você pode iniciar, parar, apagar

👉 Pense como o prato pronto usando a receita

---

### 3. **Dockerfile**

* Um arquivo com instruções para criar a imagem
* Exemplo simples:

```dockerfile
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]
```

---

### 4. **Docker Engine**

* É o motor que roda os containers
* Responsável por criar, executar e gerenciar tudo

---

## 🔄 Fluxo básico

1. Você escreve um **Dockerfile**
2. Cria uma **imagem**

   ```
   docker build -t minha-app .
   ```
3. Roda um **container**

   ```
   docker run -p 3000:3000 minha-app
   ```

---

## 🚀 Por que usar Docker?

* ✔️ Funciona igual em qualquer máquina
* ✔️ Evita “na minha máquina funciona”
* ✔️ Facilita deploy
* ✔️ Isola aplicações
* ✔️ Mais leve que máquinas virtuais

---

## 🆚 Docker vs Máquina Virtual

| Docker (Container)     | Máquina Virtual    |
| ---------------------- | ------------------ |
| Leve e rápido          | Mais pesada        |
| Compartilha o SO       | Tem SO próprio     |
| Inicializa em segundos | Pode levar minutos |

---
