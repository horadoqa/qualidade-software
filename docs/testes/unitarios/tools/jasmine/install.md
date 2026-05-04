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

## 🧾 5. Criar um código para testar

### 📌 soma.js

```javascript id="code1"
function soma(a, b) {
  return a + b;
}

module.exports = soma;
```

---

## 🧪 6. Criar o teste

Crie um arquivo dentro da pasta `spec/`:

### 📌 spec/somaSpec.js

```javascript id="code2"
const soma = require('../soma');

describe("Função soma", function() {
  it("deve somar 2 + 3 e retornar 5", function() {
    expect(soma(2, 3)).toBe(5);
  });
});
```

---

## ▶️ 7. Executar os testes

```bash id="run1"
npx jasmine
```

Ou via script no `package.json`:

```json id="pkg1"
"scripts": {
  "test": "jasmine"
}
```

Agora rode:

```bash id="run2"
npm test
```

---

## ✅ Resultado esperado

```text id="out1"
Started
.

1 spec, 0 failures
```

---

## 💡 Dicas úteis

### Rodar testes com mais detalhes:

```bash id="tip1"
npx jasmine --verbose
```

### Rodar apenas testes específicos:

Edite o `jasmine.json` na pasta `spec/support`.

---

## 🧠 Resumo

> Para usar Jasmine você instala com `npm install jasmine`, inicializa com `npx jasmine init` e executa com `npx jasmine`.

---
