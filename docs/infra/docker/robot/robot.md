# 🐳 Usando imagem pronta (mais rápido)

A comunidade mantém imagens como a do MarketSquare já com tudo instalado (Robot + Selenium + browsers).

Exemplo direto:

```bash
docker run -it --rm \
  -v $PWD/tests:/opt/robotframework/tests \
  -v $PWD/results:/opt/robotframework/reports \
  ppodgorsek/robot-framework:latest
```

Isso:

* Executa automaticamente os testes
* Salva relatórios em `./results`

---

