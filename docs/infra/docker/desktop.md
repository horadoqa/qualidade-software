# 📦 Docker Desktop — Documentação Básica

## 🧠 O que é o Docker Desktop?

O **Docker Desktop** é uma aplicação que permite criar, executar e gerenciar **containers Docker** em sistemas operacionais como:

* Windows
* macOS
* Algumas distribuições Linux (em versões recentes)

Ele fornece uma interface gráfica (GUI) e ferramentas de linha de comando para facilitar o uso do Docker.

Em resumo:
👉 Ele é um “ambiente completo” para trabalhar com containers sem precisar configurar tudo manualmente.

---

## ⚙️ Como o Docker Desktop funciona?

O Docker Desktop funciona como uma camada intermediária entre o sistema operacional e o Docker Engine.

### 🧩 Componentes principais:

* **Docker Engine**: responsável por criar e executar containers
* **Docker CLI**: comandos usados no terminal (`docker run`, `docker build`, etc.)
* **Docker Compose**: permite executar múltiplos containers juntos
* **VM leve (WSL2 no Windows / HyperKit no Mac)**:

  * No Windows e macOS, o Docker roda dentro de uma máquina virtual leve
  * No Linux, ele roda diretamente no sistema

---

### 🔄 Fluxo de funcionamento:

1. Você cria uma imagem Docker (ou baixa do Docker Hub)
2. O Docker Desktop usa o Docker Engine para criar um container
3. O container roda isoladamente do sistema operacional
4. Você pode acessar serviços dentro dele (ex: web apps, bancos de dados)

---

## 🚀 Por que o Docker Desktop é importante?

O Docker Desktop é muito importante para desenvolvimento moderno por vários motivos:

### 🧪 1. Ambiente padronizado

Evita o problema de:

> “Funciona na minha máquina, mas não no servidor”

---

### ⚡ 2. Facilidade de uso

Permite usar Docker sem precisar configurar manualmente:

* Kernel Linux
* Virtualização complexa
* Redes de containers

---

### 🧱 3. Isolamento de aplicações

Cada aplicação roda em seu próprio container, evitando conflitos de:

* versões de bibliotecas
* dependências
* configurações do sistema

---

### 👨‍💻 4. Ideal para desenvolvimento

Muito usado para:

* desenvolvimento web
* APIs
* bancos de dados locais (MySQL, PostgreSQL, MongoDB)
* testes automatizados

---

### ☁️ 5. Compatível com produção

O que você testa localmente pode ser enviado para servidores na nuvem com pouca ou nenhuma mudança.

---

## 💻 Como instalar o Docker Desktop

## 🪟 Windows

### Requisitos:

* Windows 10/11 64-bit
* WSL2 habilitado (recomendado)

### Passos:

1. Baixe o instalador:

   * [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)

2. Execute o arquivo `.exe`

3. Marque a opção:

   * “Use WSL 2 instead of Hyper-V” (se disponível)

4. Conclua a instalação

5. Reinicie o computador

6. Abra o Docker Desktop

7. Teste no terminal:

```bash
docker --version
```

---

## 🍎 macOS

### Requisitos:

* macOS 11 ou superior (Apple Silicon ou Intel)

### Passos:

1. Baixe o Docker Desktop no site oficial

2. Abra o arquivo `.dmg`

3. Arraste o Docker para a pasta Applications

4. Abra o Docker Desktop

5. Aceite permissões do sistema

6. Teste:

```bash
docker --version
```

---

## 🐧 Linux (alternativa)

O Docker Desktop também existe para Linux, mas muitas vezes é mais comum usar apenas o Docker Engine.

### Instalação geral (Ubuntu exemplo):

```bash
sudo apt update
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
```

Para Docker Desktop (caso suporte sua distro):

* Baixar pacote `.deb` no site oficial
* Instalar com:

```bash
sudo apt install ./docker-desktop.deb
```

---

## 🧪 Teste rápido após instalação

Execute:

```bash
docker run hello-world
```

Se tudo estiver correto, você verá uma mensagem confirmando que o Docker está funcionando.

---

## 📌 Conclusão

O Docker Desktop é uma ferramenta essencial para desenvolvimento moderno porque:

* simplifica o uso de containers
* padroniza ambientes
* acelera o desenvolvimento
* reduz erros entre máquinas diferentes

---
