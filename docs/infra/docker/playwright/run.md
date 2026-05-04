# 🖥️ Modo interativo (UI / debug)

Para abrir o modo UI:

```bash
docker run -it --rm \
  -v $PWD:/app \
  -w /app \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  mcr.microsoft.com/playwright:v1.43.0-jammy \
  npx playwright test --ui
```

---

> Esse comando roda testes com **Playwright** dentro de um container Docker e abre a interface gráfica de testes.

Vou decompor:

---

```bash
docker run -it --rm \
```

* `docker run`: inicia um container
* `-i -t`: modo interativo com terminal
* `--rm`: remove o container automaticamente ao terminar (boa prática para não acumular lixo)

---

```bash
-v $PWD:/app \
```

* Monta o diretório atual do seu projeto dentro do container em `/app`
* Seu código local fica acessível lá dentro

---

```bash
-w /app \
```

* Define `/app` como diretório de trabalho dentro do container

---

```bash
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
```

* Permite abrir interface gráfica (GUI) usando X11
* Isso é necessário porque o Playwright UI precisa renderizar janela no seu sistema host

---

```bash
mcr.microsoft.com/playwright:v1.43.0-jammy \
```

* Imagem oficial da Microsoft com Playwright 1.43.0
* Baseada no Ubuntu 22.04 (jammy)
* Já vem com browsers (Chromium, Firefox, WebKit) e dependências instaladas

---

```bash
npx playwright test --ui
```

* Executa os testes do Playwright
* `--ui` abre o **Test Runner em modo visual (UI mode)**
  → você consegue ver testes rodando, debuggar, clicar, inspecionar passos

---

## 🔎 Resumo simples

Esse comando:

👉 Sobe um container com Playwright pronto
👉 Monta seu projeto dentro dele
👉 Permite interface gráfica (X11)
👉 Executa os testes
👉 Abre o modo visual (`--ui`) para debug interativo

---

## ⚖️ Diferença para Cypress (o comando anterior)

* Cypress: abre `cypress open` (GUI do Cypress)
* Playwright: abre `playwright test --ui` (Playwright Test Runner UI)
* Ambos usam Docker + X11 para GUI

---

## ⚠️ Detalhe importante

O `--ui` do Playwright:

* é mais moderno e voltado para debug de testes
* mostra timeline, traces, ações e screenshots
* não é o modo headless (CI), é dev/debug

---

## Como rodar isso em modo CI (sem UI) ?

Para rodar esse comando em **modo CI (sem interface gráfica)** você precisa basicamente remover tudo que depende de GUI e trocar o `--ui` por execução headless.

No Playwright, isso já é o modo padrão de CI.

---

## ✅ Versão CI do seu comando

```bash
docker run -it --rm \
  -v $PWD:/app \
  -w /app \
  mcr.microsoft.com/playwright:v1.43.0-jammy \
  npx playwright test
```

---

## 🔥 O que mudou

### ❌ Removido (GUI / X11)

```bash
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
```

Esses são só para interface gráfica (não servem em CI).

---

### ❌ Removido UI mode

```bash
--ui
```

Esse modo abre o Test Runner visual — não é usado em CI.

---

### ✅ Mantido

* Container Playwright oficial
* Volume do projeto
* Diretório de trabalho

---

## 🚀 O que acontece agora

O Playwright vai:

* rodar todos os testes em **modo headless (sem janela)**
* usar Chromium/Firefox/WebKit em background
* gerar relatórios no terminal
* falhar o job se algum teste falhar (ideal para CI)

---

## ⚙️ Versão mais “CI profissional”

Você pode melhorar adicionando flags úteis:

```bash
docker run -it --rm \
  -v $PWD:/app \
  -w /app \
  mcr.microsoft.com/playwright:v1.43.0-jammy \
  npx playwright test --reporter=line
```

Ou com HTML report:

```bash
npx playwright test --reporter=html
```

---

## 🧪 Dica importante de CI real

Em pipelines (GitHub Actions, GitLab CI etc.), normalmente você também usa:

```bash
npx playwright test --ci
```

ou variáveis automáticas como:

```bash
CI=true
```

O Playwright detecta isso e ajusta comportamento (retries, workers etc.).

---

## 📌 Resumo

| Modo          | Comando                    | Interface |
| ------------- | -------------------------- | --------- |
| Dev (debug)   | `npx playwright test --ui` | GUI       |
| CI (produção) | `npx playwright test`      | headless  |

---
