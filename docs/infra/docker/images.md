# 📦 O que é uma imagem Docker?

Uma imagem Docker é composta por:

* sistema base (ex: Linux leve)
* código da aplicação
* bibliotecas e dependências
* configurações
* comandos de inicialização

---

# 🧠 Explicação simples

Pense assim:

* 📄 **Imagem** = receita de bolo
* 🍰 **Container** = bolo pronto feito a partir da receita

A imagem é o “molde”, e o container é a execução.

---

# ⚙️ Características de uma imagem

### 🔒 1. Imutável

Depois de criada, não muda.

### 📦 2. Reutilizável

Pode criar vários containers iguais a partir dela.

### ⚡ 3. Leve

Só contém o necessário para rodar a aplicação.

### 🧱 4. Empilhada em camadas

Cada instrução do Dockerfile cria uma “camada”.

---

# 🧱 Exemplo prático

Quando você usa:

```bash 
docker run nginx
```

O Docker:

1. Baixa a imagem do NGINX
2. Cria um container baseado nela
3. Executa o servidor web

---

# 📥 De onde vêm as imagens?

Elas podem vir de:

### 🌐 Docker Hub

Repositório público de imagens Docker

Ex:

* nginx
* postgres
* node
* python

---

# 🧪 Criando sua própria imagem

Você cria imagens usando um **Dockerfile**:

```dockerfile 
FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
```

Depois:

```bash 
docker build -t meu-nginx .
```

---

# 🔁 Relação entre imagem e container

| Imagem   | Container |
| -------- | --------- |
| Modelo   | Execução  |
| Estática | Dinâmica  |
| Não roda | Roda      |
| Base     | Instância |

---

# 🚀 Por que imagens são importantes?

### 🧪 1. Reprodutibilidade

Mesmo ambiente em qualquer máquina

### ⚡ 2. Facilidade de deploy

Subir aplicações rapidamente

### 🧱 3. Padronização

Evita diferenças entre ambientes

### ☁️ 4. Escalabilidade

Criar vários containers iguais facilmente

---

# 📌 Resumo

Uma imagem Docker é:

✔ Um modelo pronto para containers
✔ Imutável e reutilizável
✔ Base de qualquer aplicação Docker
✔ Criada via Dockerfile ou baixada do Docker Hub

---

