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