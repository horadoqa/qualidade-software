# Instalar e rodar o Jest em um projeto JavaScript (Node.js).

---

# 📦 1. Pré-requisitos

Antes de tudo, você precisa ter:

* **Node.js** instalado
* **npm** (já vem com o Node)

Verifique no terminal:

```bash
node -v
npm -v
```

---

# 🚀 2. Criar um projeto (se ainda não tiver)

```bash
mkdir meu-projeto
cd meu-projeto
npm init -y
```

Isso cria o arquivo `package.json`.

---

# 🧪 3. Instalar o Jest

Instale como dependência de desenvolvimento:

```bash
npm install --save-dev jest
```

---

# ⚙️ 4. Configurar o script de teste

Abra o `package.json` e adicione:

```json
"scripts": {
  "test": "jest"
}
```

Ficará algo assim:

```json
{
  "name": "meu-projeto",
  "version": "1.0.0",
  "scripts": {
    "test": "jest"
  }
}
```

---
