# ▶️ Executar o Mocha

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
