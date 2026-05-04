# 🧾 Criar um código para testar

## 📌 soma.js

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

