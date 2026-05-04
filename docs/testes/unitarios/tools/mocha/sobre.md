# Mocha

O **Mocha** é um **framework de testes para JavaScript**, usado principalmente em aplicações **Node.js** e também no front-end.

Ele serve para você **escrever e executar testes automatizados**, assim como o Jest, mas com uma abordagem mais “modular” (ou seja, você escolhe as ferramentas que quer usar junto).

---

## 🧪 O que é o Mocha?

> Mocha é um framework de testes que executa seus testes JavaScript e mostra os resultados no terminal.

Ele não vem “com tudo embutido”, então normalmente é usado junto com outras bibliotecas.

---

## ⚙️ Como ele funciona?

O Mocha:

1. Executa os testes
2. Organiza os resultados
3. Mostra se passaram ou falharam

Mas ele **não inclui asserções (checks)** nem mocks por padrão.

---

## 🧩 Ele geralmente é usado com:

* **Chai** → para asserts (expect, should)
* **Sinon** → para mocks e spies

---

## 💡 Exemplo simples

### Código:

```javascript id="m1"
function soma(a, b) {
  return a + b;
}

module.exports = soma;
```

---

### Teste com Mocha + Chai:

```javascript id="m2"
const soma = require('./soma');
const { expect } = require('chai');

describe('Função soma', () => {
  it('deve somar 2 + 3 e retornar 5', () => {
    expect(soma(2, 3)).to.equal(5);
  });
});
```

---

## ▶️ Como rodar os testes

Instale o Mocha:

```bash id="m3"
npm install --save-dev mocha
```

Depois rode:

```bash id="m4"
npx mocha
```

Ou configure no `package.json`:

```json id="m5"
"scripts": {
  "test": "mocha"
}
```

E execute:

```bash id="m6"
npm test
```

---

## 🆚 Mocha vs Jest

| Mocha                                | Jest                    |
| ------------------------------------ | ----------------------- |
| Mais flexível                        | Mais “pronto para usar” |
| Precisa de libs extras               | Tudo embutido           |
| Muito usado em projetos Node antigos | Muito popular hoje      |

---

## 🧠 Resumo

> Mocha é um framework de testes JavaScript que executa testes, mas geralmente depende de outras bibliotecas para completar o ambiente de testes.

---

