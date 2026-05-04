# Como Instalar e executar o Mocha** em um projeto JavaScript (Node.js).

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

## 📁 2. Criar um projeto (se precisar)

```bash id="proj1"
mkdir meu-projeto
cd meu-projeto
npm init -y
```

---

## ⚙️ 3. Instalar o Mocha

Instale como dependência de desenvolvimento:

```bash id="inst1"
npm install --save-dev mocha
```

---

## 🧪 4. Criar um código simples

### 📌 soma.js

```javascript id="code1"
function soma(a, b) {
  return a + b;
}

module.exports = soma;
```

---

### 📌 teste (test/soma.test.js)

Crie uma pasta `test` e dentro:

```javascript id="code2"
const soma = require('../soma');
const assert = require('assert');

describe('Função soma', function () {
  it('deve somar 2 + 3 e retornar 5', function () {
    assert.strictEqual(soma(2, 3), 5);
  });
});
```

---

## ▶️ 5. Executar o Mocha

## Opção 1: direto com npx

```bash id="run1"
npx mocha
```

---

## Opção 2: via script no package.json

Adicione:

```json id="pkg1"
"scripts": {
  "test": "mocha"
}
```

Agora rode:

```bash id="run2"
npm test
```

---

## ✅ Resultado esperado

Se estiver tudo certo:

```text id="out1"
  Função soma
    ✓ deve somar 2 + 3 e retornar 5

  1 passing
```

---

## 💡 Dicas úteis

### Rodar testes com mais detalhes:

```bash id="tip1"
npx mocha --reporter spec
```

### Rodar apenas arquivos de teste:

```bash id="tip2"
npx mocha test/*.test.js
```

---

## 🧠 Resumo

> Para usar Mocha você instala com `npm install mocha`, cria seus testes e executa com `npx mocha` ou `npm test`.

---

