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
