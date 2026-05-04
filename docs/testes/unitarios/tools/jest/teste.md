# 🧾 Criar um teste

Crie um arquivo, por exemplo:

```
soma.js
```

```javascript
function soma(a, b) {
  return a + b;
}

module.exports = soma;
```

Agora o teste:

```
soma.test.js
```

```javascript
const soma = require('./soma');

test('soma 2 + 3 deve ser 5', () => {
  expect(soma(2, 3)).toBe(5);
});
```

---

