# 🚀 Dicas importantes

* Use sempre a imagem oficial → evita problemas com dependências de browser
* Prefira `npm ci` em vez de `npm install` (mais rápido e determinístico)
* Em CI (GitHub Actions, GitLab, etc.), Playwright + Docker funciona muito bem
* Configure `baseURL` no `playwright.config.ts` para evitar URLs hardcoded
* Para performance: use `--workers` ou deixe o Playwright paralelizar automaticamente

---

## 🔥 Extra (muito útil)

Se ainda não instalou os browsers localmente:

```bash
npx playwright install
```

Mas dentro do Docker isso já vem pronto 👍

---
