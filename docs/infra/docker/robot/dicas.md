# 🚀 5. Dicas importantes

* Use imagens prontas → evita dor com dependências de browser
* Monte volumes para salvar relatórios (`log.html`, `report.html`)
* Use variáveis (`--variable`) para URLs e configs
* Em CI, sempre rode em modo headless
* Prefira `SeleniumLibrary` ou `Browser` (Playwright-based, mais moderno)

---

# 🔥 Alternativa moderna (recomendado)

Se estiver começando hoje, considere usar:

* `robotframework-browser` (usa Playwright por baixo)

Exemplo:

```bash
pip install robotframework-browser
rfbrowser init
```

Isso costuma ser:

* mais rápido
* menos flaky
* mais moderno

---
