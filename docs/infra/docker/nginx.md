# 📦 Dockerfile com NGINX (Modelo Base)

## 🧱 Estrutura do projeto

Antes do Dockerfile, organize assim:

```
meu-nginx/
│
├── Dockerfile
├── index.html
└── nginx.conf (opcional)
```

---

# 🐳 Dockerfile básico com NGINX

```dockerfile 
# Imagem base oficial do NGINX
FROM nginx:latest

# Remove o site padrão do NGINX
RUN rm -rf /usr/share/nginx/html/*

# Copia seu site para dentro do container
COPY ./index.html /usr/share/nginx/html/index.html

# Expondo a porta 80 (padrão do NGINX)
EXPOSE 80

# Comando padrão para rodar o NGINX
CMD ["nginx", "-g", "daemon off;"]
```

---

# 📄 Exemplo de index.html

```html 
<!DOCTYPE html>
<html>
<head>
    <title>Meu NGINX com Docker</title>
</head>
<body>
    <h1>🚀 NGINX rodando dentro do Docker!</h1>
</body>
</html>
```

---

# ⚙️ Como buildar a imagem

Dentro da pasta do projeto:

```bash 
docker build -t meu-nginx .
```

---

# ▶️ Como rodar o container

```bash 
docker run -d -p 8080:80 --name nginx-site meu-nginx
```

Agora acesse:

```
http://localhost:8080
```

---

# 🧠 Explicação do Dockerfile

### 📌 FROM nginx:latest

Usa a imagem oficial do NGINX como base.

---

### 📌 RUN rm -rf

Remove o site padrão do NGINX para evitar conflito.

---

### 📌 COPY

Copia seus arquivos HTML para dentro do container.

---

### 📌 EXPOSE 80

Informa que o container usa a porta 80.

---

### 📌 CMD

Inicia o NGINX em modo foreground (necessário no Docker).

---

# 🟡 Versão mais profissional (com config customizada)

Se quiser evoluir, você pode adicionar um `nginx.conf`:

```dockerfile 
FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

---

# 🚀 Próximo passo recomendado

Depois desse Dockerfile, o ideal é evoluir para:

* Docker Compose com NGINX + API
* Load balancing com múltiplos containers
* Reverse proxy
* Deploy em VPS ou cloud

---
