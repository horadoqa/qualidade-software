# ▶️ Executar o Mocha

## Opção 1: direto com npx

```bash 
npx mocha
```

---

## Opção 2: via script no package.json

Adicione:

```json 
"scripts": {
  "test": "mocha"
}
```

Agora rode:

```bash 
npm test
```

---

## ✅ Resultado esperado

Se estiver tudo certo:

```text 
  Função soma
    ✓ deve somar 2 + 3 e retornar 5

  1 passing
```

---
