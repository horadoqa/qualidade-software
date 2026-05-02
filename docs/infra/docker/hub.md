# Docker Hub

O **Docker Hub** é um serviço online usado para armazenar e compartilhar imagens de contêineres.

De forma direta: o Docker Hub funciona como um “GitHub de imagens Docker”.

### 🧠 O que são imagens?

Antes de tudo:

* Uma **imagem Docker** é o “molde” de um contêiner
* Ela contém tudo que a aplicação precisa para rodar

### ☁️ O que o Docker Hub faz

* Armazena imagens na nuvem
* Permite baixar imagens prontas
* Permite enviar (publicar) suas próprias imagens
* Facilita compartilhar projetos com outras pessoas

### 📦 Exemplo prático

Você quer rodar um banco de dados:

* Em vez de instalar tudo manualmente
* Você pode baixar uma imagem pronta do Docker Hub, como:

  * `mysql`
  * `nginx`
  * `node`

E rodar com um comando simples no Docker

### 🔄 Fluxo comum

1. Você cria uma aplicação
2. Gera uma imagem Docker
3. Envia para o Docker Hub
4. Outras pessoas (ou servidores) baixam e executam

### 🌍 Público vs Privado

* **Repositórios públicos**: qualquer pessoa pode usar
* **Privados**: só você ou sua equipe acessa

### 💡 Resumindo

* Docker = ferramenta para rodar contêineres
* Docker Hub = “armazenamento online” dessas imagens


