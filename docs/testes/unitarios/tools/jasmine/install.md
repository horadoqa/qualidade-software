# Instalar e rodar o Jasmine** em um projeto JavaScript (Node.js).

---

## 📦 1. Pré-requisitos

Você precisa ter:

* **Node.js instalado**
* **npm disponível**

Verifique:

```bash 
node -v
npm -v
```

---

## ⚙️ 2. Criar um projeto (se precisar)

```bash 
mkdir meu-projeto
cd meu-projeto
npm init -y
```

---

## 🧪 3. Instalar o Jasmine

```bash 
npm install --save-dev jasmine
```

---

## ⚙️ 4. Inicializar o Jasmine

Esse comando cria a estrutura padrão de testes:

```bash 
npx jasmine init
```

Ele vai criar pastas como:

```text 
spec/
spec/support/
spec/support/jasmine.json
```

---
