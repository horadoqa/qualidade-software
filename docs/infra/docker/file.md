# O que é um Dockerfile ?

Um **Dockerfile** é um arquivo de texto que contém um conjunto de instruções usadas para **criar uma imagem Docker** automaticamente.

Em outras palavras:
👉 Ele é o “roteiro” que o Docker segue para montar um ambiente pronto para rodar uma aplicação.

---

# 📦 O que é um Dockerfile?

Um **Dockerfile** define passo a passo como uma imagem será construída, incluindo:

* sistema base (ex: Linux leve)
* instalação de dependências
* cópia de arquivos do projeto
* configuração do ambiente
* comando que inicia a aplicação

---

# 🧠 Analogia simples

Pense assim:

* 🧾 Dockerfile = receita de bolo
* 🍰 Imagem Docker = bolo pronto
* 🚀 Container = bolo sendo servido/comido

---

# ⚙️ Como ele funciona na prática?

Quando você executa:

```bash 
docker build .
```

O Docker:

1. Lê o Dockerfile
2. Executa cada instrução em ordem
3. Cria uma imagem final pronta para uso

---

# 🧱 Exemplo simples de Dockerfile

```dockerfile 
FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

---

# 📌 Explicando cada parte

### 🔹 FROM

Define a imagem base
Ex: NGINX já pronto

---

### 🔹 COPY

Copia arquivos do seu computador para dentro da imagem

---

### 🔹 EXPOSE

Informa qual porta a aplicação usa (ex: 80)

---

### 🔹 CMD

Define o comando que inicia a aplicação

---

# 🚀 Por que o Dockerfile é importante?

Ele permite:

### 🧪 1. Reprodutibilidade

Qualquer pessoa pode criar o mesmo ambiente

### ⚡ 2. Automação

Não precisa configurar tudo manualmente

### ☁️ 3. Deploy fácil

Mesma imagem funciona em:

* seu computador
* servidor
* cloud

### 🧱 4. Padronização

Evita problemas como:

> “Funciona na minha máquina”

---

# 🧭 Resumo

Um Dockerfile é:

✔ Um arquivo de instruções
✔ Usado para criar imagens Docker
✔ Base para rodar aplicações em containers
✔ Essencial no desenvolvimento moderno

---

