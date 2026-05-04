# Jest

O **Jest** é um **framework de testes em JavaScript**, criado pelo Facebook, muito usado principalmente em projetos com **React**, mas que funciona com qualquer aplicação JavaScript (Node.js, front-end, etc.).

### Em resumo:

O Jest serve para **testar seu código automaticamente**, garantindo que ele funciona como esperado.

---

### 🧪 O que dá pra fazer com o Jest:

* Criar **testes unitários** (testar funções isoladas)
* Fazer **testes de integração**
* Criar **mocks** (simular dependências)
* Verificar se funções foram chamadas
* Medir cobertura de código (quanto do código está sendo testado)

---

### 💡 Exemplo simples:

```javascript
function soma(a, b) {
  return a + b;
}

test('soma 1 + 2 deve ser 3', () => {
  expect(soma(1, 2)).toBe(3);
});
```

---

### ⚙️ Por que usar Jest?

* Fácil de configurar (quase zero configuração)
* Rápido
* Já vem com tudo integrado (runner, assertions, mocks)
* Muito usado no mercado

---

### 🧠 Em uma frase:

> Jest é uma ferramenta que automatiza testes para garantir que seu código JavaScript funcione corretamente.

---
