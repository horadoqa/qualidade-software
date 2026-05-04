# 🌐 Rodando com Cypress aberto (modo interativo)

Se quiser usar o GUI:

```bash
docker run -it \
  -v $PWD:/e2e \
  -w /e2e \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  cypress/included:13.6.0 \
  npx cypress open
```

---

> Esse comando executa um container Docker com o Cypress (versão 13.6.0) já instalado e abre a interface gráfica do Cypress para testes E2E.

Vou quebrar em partes:

```bash
docker run -it \
```

* `docker run`: inicia um container
* `-i`: mantém o terminal interativo
* `-t`: cria um terminal (TTY), útil para interação

---

```bash
-v $PWD:/e2e \
```

* Monta a pasta atual (`$PWD`) dentro do container em `/e2e`
* Ou seja: seus testes do projeto local ficam disponíveis dentro do container

---

```bash
-w /e2e \
```

* Define o diretório de trabalho dentro do container como `/e2e`

---

```bash
-e DISPLAY=$DISPLAY \
```

* Passa a variável `DISPLAY` do seu sistema para o container
* Isso permite abrir interface gráfica (GUI) no Linux/X11

---

```bash
-v /tmp/.X11-unix:/tmp/.X11-unix \
```

* Compartilha o socket do servidor gráfico X11
* Essencial para o Cypress abrir a interface visual fora do container

---

```bash
cypress/included:13.6.0 \
```

* Imagem Docker oficial do Cypress já com Node, browser e dependências
* Versão 13.6.0

---

```bash
npx cypress open
```

* Comando executado dentro do container
* Abre o Cypress em modo interativo (GUI), não headless

---

## Resumo prático

Esse comando:

👉 Sobe um container com Cypress
👉 Acessa seu projeto local
👉 Permite rodar testes E2E
👉 Abre a interface gráfica do Cypress no seu computador

---

## Observação importante

Isso só funciona bem em sistemas Linux ou WSL com X11 configurado.
No macOS/Windows puro, normalmente você precisaria de alternativas (como XQuartz ou rodar headless).

Se quiser, posso te explicar como rodar isso em Windows ou como adaptar para modo headless (CI).
