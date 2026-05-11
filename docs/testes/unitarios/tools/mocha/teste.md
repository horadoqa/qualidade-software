# 🧪 Criar um código simples

## 📌 soma.js

```javascript 
function soma(a, b) {
  return a + b;
}

module.exports = soma;
```

---

## 📌 teste (test/soma.test.js)

Crie uma pasta `test` e dentro:

```javascript 
const soma = require('../soma');
const assert = require('assert');

describe('Função soma', function () {
  it('deve somar 2 + 3 e retornar 5', function () {
    assert.strictEqual(soma(2, 3), 5);
  });
});
```

---
