# Instalação do MongoDB Compass

Para instalar o MongoDB Compass, o processo é bem simples e varia um pouco conforme o sistema operacional.

---

# 🪟 Windows

## 1. Baixar o instalador

Acesse o site oficial:

[MongoDB Compass Download](https://www.mongodb.com/products/tools/compass?utm_source=chatgpt.com)

Baixe a versão **Windows (MSI)**.

---

## 2. Instalar

Depois de baixar:

1. Dê duplo clique no arquivo `.msi`
2. Clique em **Next**
3. Aceite os termos
4. Clique em **Install**
5. Finalize em **Finish**

---

## 3. Abrir o Compass

Procure no menu:

```text
MongoDB Compass
```

---

# 🍎 macOS

## Opção 1 (mais fácil)

Baixe o arquivo `.dmg` no site oficial e:

1. Abra o arquivo
2. Arraste o Compass para **Applications**
3. Abra normalmente

---

## Opção 2 (Homebrew)

```bash
brew install --cask mongodb-compass
```

---

# 🐧 Linux (Ubuntu/Debian)

## Opção .deb

Baixe o pacote no site e instale:

```bash
sudo dpkg -i mongodb-compass*.deb
sudo apt-get install -f
```

---

## Opção Snap

```bash
sudo snap install mongodb-compass
```

---

# 🔌 Primeiro uso

Depois de instalar:

1. Abra o Compass
2. Clique em **New Connection**
3. Use sua conexão MongoDB (exemplo Docker):

```text
mongodb://localhost:27017
```

ou com usuário:

```text
mongodb://horadoqa:1q2w3e4r@localhost:27017/admin
```

---

# 🔄 Fluxo visual

```mermaid
flowchart TD

A[Download Compass]
--> B[Instalação]
--> C[Abrir Programa]
--> D[Nova Conexão]
--> E[MongoDB Docker]
```

---

# ⚠️ Requisitos

* Windows 10+
* macOS 10.14+
* Linux com suporte GTK

---

# 🚀 O que você ganha com ele

* Interface gráfica do MongoDB
* Visualização de JSON
* Criação de collections
* Execução de queries
* Análise de dados

---

# 🔗 Link oficial

[MongoDB Compass](https://www.mongodb.com/products/tools/compass?utm_source=chatgpt.com)

---
