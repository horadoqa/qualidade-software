# ⚙️ Com docker-compose (app + testes)

Se você testa uma aplicação:

```yaml
services:
  app:
    image: node:18
    working_dir: /app
    volumes:
      - ./app:/app
    command: sh -c "npm install && node server.js"
    ports:
      - "3000:3000"

  robot:
    image: ppodgorsek/robot-framework:latest
    depends_on:
      - app
    volumes:
      - ./tests:/opt/robotframework/tests
      - ./results:/opt/robotframework/reports
    environment:
      - ROBOT_OPTIONS=--variable BASE_URL:http://app:3000
```

Rodar:

```bash
docker-compose up --exit-code-from robot
```
