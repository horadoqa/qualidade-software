# Instalar e rodar o Jasmine** em um projeto JavaScript (Node.js).

---

## 📦 1. Pré-requisitos

Você precisa ter:

* **Node.js instalado**
* **npm disponível**

Verifique:

```bash id="chk1"
node -v
npm -v
```

---

## ⚙️ 2. Criar um projeto (se precisar)

```bash id="proj1"
mkdir meu-projeto
cd meu-projeto
npm init -y
```

---

## 🧪 3. Instalar o Jasmine

```bash id="inst1"
npm install --save-dev jasmine
```

---

## ⚙️ 4. Inicializar o Jasmine

Esse comando cria a estrutura padrão de testes:

```bash id="init1"
npx jasmine init
```

Ele vai criar pastas como:

```text id="str1"
spec/
spec/support/
spec/support/jasmine.json
```

---
