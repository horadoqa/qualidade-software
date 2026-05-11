# Jasmine

O **Jasmine** é um **framework de testes para JavaScript** que permite escrever e executar testes de forma simples, principalmente no estilo **Behavior Driven Development (BDD)**.

---

## 🧪 O que é o Jasmine?

> Jasmine é uma ferramenta para testar código JavaScript sem precisar de outras bibliotecas externas.

Ele já vem “completo”, ou seja:

* não precisa de bibliotecas de assert (como Chai)
* não precisa de mocks externos (como Sinon)
* já inclui tudo pronto para testes

---

## ⚙️ Como ele funciona?

O Jasmine usa uma sintaxe baseada em comportamento:

* `describe()` → agrupa testes
* `it()` → define um teste
* `expect()` → faz verificações (assertions)

---

## 💡 Exemplo simples

```javascript 
function soma(a, b) {
  return a + b;
}
```

### Teste com Jasmine:

```javascript 
describe("Função soma", function() {
  it("deve somar 2 + 3 e retornar 5", function() {
    expect(soma(2, 3)).toBe(5);
  });
});
```

---

## ▶️ Como executar testes com Jasmine

## 📦 1. Instalar o Jasmine

```bash 
npm install --save-dev jasmine
```

---

## ⚙️ 2. Inicializar o projeto

```bash 
npx jasmine init
```

Isso cria a estrutura de testes automaticamente.

---

## 🧪 3. Criar um teste

Os testes ficam na pasta:

```text 
spec/
```

Exemplo:

```javascript 
spec/somaSpec.js
```

---

## ▶️ 4. Rodar os testes

```bash 
npx jasmine
```

Ou via script no `package.json`:

```json 
"scripts": {
  "test": "jasmine"
}
```

E depois:

```bash 
npm test
```

---

## 🆚 Jasmine vs outros frameworks

| Jasmine          | Jest                   | Mocha                  |
| ---------------- | ---------------------- | ---------------------- |
| Tudo incluído    | Tudo incluído          | Precisa libs extras    |
| BDD puro         | Mais moderno e popular | Mais flexível          |
| Menos usado hoje | Muito popular          | Muito usado em Node.js |

---

## 🧠 Resumo

> Jasmine é um framework de testes JavaScript completo, baseado em BDD, que permite escrever testes sem precisar de bibliotecas extras.

---

