# Dockerfile 

Um **Dockerfile** é um arquivo de texto que contém instruções para criar uma imagem Docker.

Em outras palavras, ele é a “receita” que o Docker usa para montar um contêiner.

---

## 🧠 Como funciona

Dentro de um Dockerfile você escreve passo a passo tudo que sua aplicação precisa:

* qual imagem base usar
* quais dependências instalar
* quais arquivos copiar
* qual comando executar ao iniciar

---

### 📦 Exemplo simples

```dockerfile
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "app.js"]
```

Esse exemplo diz:

1. Use uma imagem base com Node.js
2. Crie uma pasta de trabalho
3. Copie os arquivos do projeto
4. Instale dependências
5. Rode o app

---

### ⚙️ Principais instruções

* **FROM** → imagem base
* **COPY / ADD** → copia arquivos
* **RUN** → executa comandos (instalações, etc.)
* **CMD** → comando padrão ao iniciar o contêiner
* **WORKDIR** → define diretório de trabalho

---

### 🔄 Fluxo com Dockerfile

1. Você cria o Dockerfile
2. Executa `docker build` → gera uma imagem
3. Executa `docker run` → cria e roda o contêiner

---

### 💡 Resumindo

* Dockerfile = instruções
* Imagem = resultado dessas instruções
* Contêiner = a aplicação rodando

---
